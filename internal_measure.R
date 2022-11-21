library(clValid)
multisne_gd_result = multiSNE_gd(simData_scenB$X,max_iter = 1000,perplexity = 200)

#NDS
#multi_gd
#10
multi_gd_perp10_cl_result <-  clValid(multisne_gd_result$Y,2:7,clMethods = c('hierarchical','kmeans','pam'),validation = 'internal')
summary(multi_gd_perp10_cl_result)
#20
multi_gd_perp20_cl_result <-  clValid(multisne_gd_result$Y,2:7,clMethods = c('hierarchical','kmeans','pam'),validation = 'internal')
summary(multi_gd_perp20_cl_result)
#50
multi_gd_perp50_cl_result <-  clValid(multisne_gd_result$Y,2:7,clMethods = c('hierarchical','kmeans','pam'),validation = 'internal')
summary(multi_gd_perp50_cl_result)
#80
multi_gd_perp80_cl_result <-  clValid(multisne_gd_result$Y,2:7,clMethods = c('hierarchical','kmeans','pam'),validation = 'internal')
summary(multi_gd_perp80_cl_result)
#100
multi_gd_perp100_cl_result <-  clValid(multisne_gd_result$Y,2:7,clMethods = c('hierarchical','kmeans','pam'),validation = 'internal')
summary(multi_gd_perp100_cl_result)
#200
multi_gd_perp200_cl_result <-  clValid(multisne_gd_result$Y,2:7,clMethods = c('hierarchical','kmeans','pam'),validation = 'internal')
summary(multi_gd_perp200_cl_result)
