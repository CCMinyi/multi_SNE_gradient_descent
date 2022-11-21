# Multi-SNE #
multiSNE_gd <- function (X, initial_config = NULL, k = 2, initial_dims = 30,
                         perplexity = 30, max_iter = 100, min_cost = 0, epoch_callback = NULL,
                         whitening = FALSE, epoch = 100, weights=NULL, lambdaParameter=1){
  M <- length(X) # Num of data-views
  for (i in 1:length(X)){
    if ("dist" %in% class(X[[i]])) {
      n = attr(X[[i]], "Size")
    } else {
      X[[i]] = as.matrix(X[[i]])
      X[[i]] = X[[i]] - min(X[[i]])
      X[[i]] = X[[i]]/max(X[[i]])
      initial_dims = min(initial_dims, ncol(X[[i]]))
      if (whitening){
        X[[i]] <- whiten(as.matrix(X[[i]]), n.comp = initial_dims)
      }
    }
  }
  # Prepare weights
  if (is.null(weights)){
    w <- rep(1,M)
  } else {
    w <- weights
  }
  w <- w/sum(w, na.rm=T)
  Ctemp = rep(0,M)
  z = rep(0,M) #  Used in the automatic update of weights
  Weights = matrix(0, nrow = max_iter, ncol = M)
  Errors = matrix(0, nrow = max_iter, ncol = M)
  # Initialisation
  n = nrow(X[[1]])
  momentum = 0.5
  final_momentum = 0.8
  mom_switch_iter = 250
  epsilon = 500
  min_gain = 0.01
  initial_P_gain = 4
  eps = 2^(-52)
  if (!is.null(initial_config) && is.matrix(initial_config)) {
    if (nrow(initial_config) != n | ncol(initial_config) !=
        k) {
      stop("initial_config argument does not match necessary configuration for X")
    }
    ydata = initial_config
    initial_P_gain = 1
  } else {
    ydata = matrix(rnorm(k * n), n)
  }
  P <- vector("list")
  for (i in 1:length(X)){
    P[[i]] = x2p(X[[i]], perplexity, 1e-05)$P
    P[[i]] = 0.5 * (P[[i]] + t(P[[i]]))
    P[[i]][P[[i]] < eps] <- eps
    P[[i]] = P[[i]]/sum(P[[i]], na.rm=T)
    P[[i]] = P[[i]] * initial_P_gain
  }
  #P = lapply(X, function(x) x2p(x,perplexity,1e-05)$P)
  grads = matrix(0, nrow(ydata), ncol(ydata))
  incs = matrix(0, nrow(ydata), ncol(ydata))
  gains = matrix(1, nrow(ydata), ncol(ydata))
  for (iter in 1:max_iter) {
    if (iter%%epoch == 0) {
      total_cost = 0
      for (i in 1:length(X)){
        temp_cost = 0
        temp_cost = sum(apply(P[[i]] * log((P[[i]] + eps)/(Q + eps)), 1,
                              sum), na.rm=T)
        message("Epoch: Iteration #", iter, ", data-view #",i, ", error is: ",
                temp_cost)
        total_cost = total_cost + temp_cost
      }
      message("Epoch: Iteration #", iter,  ", total error is: ",
              total_cost)
      if (total_cost < min_cost){
        break
      }
      if (!is.null(epoch_callback)){
        epoch_callback(ydata)
      }
    }
    sum_ydata = apply(ydata^2, 1, sum)
    #qij
    num = 1/(1 + sum_ydata + sweep(-2 * ydata %*% t(ydata),
                                   2, -t(sum_ydata)))
    diag(num) = 0
    Q = num/sum(num, na.rm=T)
    if (any(is.nan(num))){
      message("NaN in grad. descent")
    }
    Q[Q < eps] = eps
    for (i in 1:length(X)){
      stiffnesses = 4 * (P[[i]] - Q) * num
      if (i==1){
        for (j in 1:n) {
          grads[j, ] = w[i]*apply(sweep(-ydata, 2, -ydata[j, ]) *
                                    stiffnesses[, j], 2, sum)
        }
      } else {
        for (j in 1:n) {
          grads[j, ] = grads[j,] + w[i]*apply(sweep(-ydata, 2, -ydata[j, ]) *
                                                stiffnesses[, j], 2, sum)
        }
      }
    }
    gains = ((gains + 0.2) * abs(sign(grads) != sign(incs)) +
               gains * 0.8 * abs(sign(grads) == sign(incs)))
    gains[gains < min_gain] = min_gain
    incs = momentum * incs - epsilon * (gains * grads)
    ydata = ydata + incs
    ydata = sweep(ydata, 2, apply(ydata, 2, mean))
    if (iter == mom_switch_iter){
      momentum = final_momentum
    }
    for (i in 1:length(X)){
      C = w[i]*sum(P[[i]]*log(P[[i]]/Q), na.rm=T)
      if (is.na(C)){
        Ctemp[i] <- 0
      } else {
        Ctemp[i] <- C
      }
      if (iter == 100 && is.null(initial_config)){
        P[[i]] = P[[i]]/4
      }
    }
    wc = Ctemp
    if (sum(wc, na.rm=T)==0){
      wc <- rep(1,M)
    }
    loss_func <- function(w0){
      loss_func_w = w0[1]*sum(P[[1]]*log(P[[1]]/Q), na.rm=T)+0.01*sum(w0^2)
      for(i in 2:M){
        loss_func_w = loss_func_w+w0[i]*sum(P[[i]]*log(P[[i]]/Q), na.rm=T)+0.01*sum(w0^2)
      }
      return(loss_func_w)
    }
    vanilla_gd <- function(fn ,w,eta ){
      we <- replace(w,1,w[1]+0.01)
      w[1] = w[1] - eta*(fn(we)-fn(w))
      if(w[1]<0){
        w[1] <- 0
      }
      for(i in 2:M){
        we <- replace(w,i,w[i]+0.01)
        w[i] = w[i] - eta*(fn(we)-fn(w))
        if(w[i]<0){
          w[i] <- 0
        }
      }
      return(w)
    }
    w0 <- vanilla_gd(fn = loss_func,w,eta = 0.01)
    w <- w0/sum(w0, na.rm=T)
    Weights[iter,] <- w
    Errors[iter,] <- Ctemp
  }
  return(list("Y" = ydata, "Weights" = Weights, "Errors" = Errors))
}