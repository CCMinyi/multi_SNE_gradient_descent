library('pheatmap')

#heapmap
#NDS_heatmap is the dataset
NDS_heatmap_plot <- pheatmap(NDS_heatmap)

#Connectivity
library(ggplot2)
library(ggpubr)
Con_perp10 <- read.csv('result/result_table_1109/Connectivity_perp10-Connectivity perp 10.csv')
Con_perp20 <- read.csv('result/result_table_1109/Connectivity_perp20-Connectivity perp 20.csv')
Con_perp50 <- read.csv('result/result_table_1109/Connectivity_perp50-Connectivity_perp50.csv')
Con_perp80 <- read.csv('result/result_table_1109/Connectivity_perp80-Connectivity_perp80.csv')
Con_perp100 <- read.csv('result/result_table_1109/Connectivity_perp100-Connectivity_perp100.csv')
Con_perp200 <- read.csv('result/result_table_1109/Connectivity_perp200-Connectivity_perp200.csv')


Con_perp10_plot <- ggplot(Con_perp10,aes(x=Cluster))+
  geom_line(aes(x = Cluster,y = multi_SNE_kmeans, colour = "multi_SNE_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_kmeans, colour = "multi_SNE_weight-adjustment_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_kmeans, colour = "multi_SNE_gd_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_pam, colour = "multi_SNE_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_pam, colour = "multi_SNE_weight-adjustment_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_pam, colour = "multi_SNE_gd_pam"))+
  guides(color=guide_legend("Algorithmn"))+xlab('Cluster')+ylab('Connectivity')

Con_perp20_plot <- ggplot(Con_perp20,aes(x=Cluster))+
  geom_line(aes(x = Cluster,y = multi_SNE_kmeans, colour = "multi_SNE_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_kmeans, colour = "multi_SNE_weight-adjustment_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_kmeans, colour = "multi_SNE_gd_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_pam, colour = "multi_SNE_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_pam, colour = "multi_SNE_weight-adjustment_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_pam, colour = "multi_SNE_gd_pam"))+
  guides(color=guide_legend("Algorithmn"))+xlab('Cluster')+ylab('Connectivity')

Con_perp50_plot <- ggplot(Con_perp50,aes(x=Cluster))+
  geom_line(aes(x = Cluster,y = multi_SNE_kmeans, colour = "multi_SNE_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_kmeans, colour = "multi_SNE_weight-adjustment_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_kmeans, colour = "multi_SNE_gd_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_pam, colour = "multi_SNE_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_pam, colour = "multi_SNE_weight-adjustment_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_pam, colour = "multi_SNE_gd_pam"))+
  guides(color=guide_legend("Algorithmn"))+xlab('Cluster')+ylab('Connectivity')

Con_perp80_plot <- ggplot(Con_perp80,aes(x=Cluster))+
  geom_line(aes(x = Cluster,y = multi_SNE_kmeans, colour = "multi_SNE_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_kmeans, colour = "multi_SNE_weight-adjustment_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_kmeans, colour = "multi_SNE_gd_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_pam, colour = "multi_SNE_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_pam, colour = "multi_SNE_weight-adjustment_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_pam, colour = "multi_SNE_gd_pam"))+
  guides(color=guide_legend("Algorithmn"))+xlab('Cluster')+ylab('Connectivity')

Con_perp100_plot <- ggplot(Con_perp100,aes(x=Cluster))+
  geom_line(aes(x = Cluster,y = multi_SNE_kmeans, colour = "multi_SNE_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_kmeans, colour = "multi_SNE_weight-adjustment_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_kmeans, colour = "multi_SNE_gd_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_pam, colour = "multi_SNE_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_pam, colour = "multi_SNE_weight-adjustment_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_pam, colour = "multi_SNE_gd_pam"))+
  guides(color=guide_legend("Algorithmn"))+xlab('Cluster')+ylab('Connectivity')



Con_perp200_plot <- ggplot(Con_perp200,aes(x=Cluster))+
  geom_line(aes(x = Cluster,y = multi_SNE_kmeans, colour = "multi_SNE_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_kmeans, colour = "multi_SNE_weight-adjustment_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_kmeans, colour = "multi_SNE_gd_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_pam, colour = "multi_SNE_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_pam, colour = "multi_SNE_weight-adjustment_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_pam, colour = "multi_SNE_gd_pam"))+
  guides(color=guide_legend("Algorithmn"))+xlab('Cluster')+ylab('Connectivity')


ggarrange(Con_perp10_plot, Con_perp20_plot,Con_perp50_plot,Con_perp80_plot,Con_perp100_plot,Con_perp200_plot, 
          labels = c("Perplexity 10", "Perplexity 20", "Perplexity 50",'Perplexity 80','Perplexity 100','Perplexity 200'),
          ncol = 3, nrow = 2,common.legend = TRUE, legend="bottom")

#Dunn

Dunn_perp10 <- read.csv('result/result_table_1109/Dunn_perp10-Dunn perp 10.csv')
Dunn_perp20 <- read.csv('result/result_table_1109/Dunn_perp20-Dunn perp 20.csv')
Dunn_perp50 <- read.csv('result/result_table_1109/Dunn_perp50-Dunn_perp50.csv')
Dunn_perp80 <- read.csv('result/result_table_1109/Dunn_perp80-Dunn_perp80.csv')
Dunn_perp100 <- read.csv('result/result_table_1109/Dunn_perp100-Dunn_perp100.csv')
Dunn_perp200 <- read.csv('result/result_table_1109/Dunn_perp200-Dunn_perp200.csv')

Dunn_perp10_plot <- ggplot(Dunn_perp10,aes(x=Cluster))+
  geom_line(aes(x = Cluster,y = multi_SNE_kmeans, colour = "multi_SNE_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_kmeans, colour = "multi_SNE_weight-adjustment_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_kmeans, colour = "multi_SNE_gd_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_pam, colour = "multi_SNE_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_pam, colour = "multi_SNE_weight-adjustment_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_pam, colour = "multi_SNE_gd_pam"))+
  guides(color=guide_legend("Algorithmn"))+xlab('Cluster')+ylab('Dunn')

Dunn_perp20_plot <- ggplot(Dunn_perp20,aes(x=Cluster))+
  geom_line(aes(x = Cluster,y = multi_SNE_kmeans, colour = "multi_SNE_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_kmeans, colour = "multi_SNE_weight-adjustment_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_kmeans, colour = "multi_SNE_gd_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_pam, colour = "multi_SNE_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_pam, colour = "multi_SNE_weight-adjustment_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_pam, colour = "multi_SNE_gd_pam"))+
  guides(color=guide_legend("Algorithmn"))+xlab('Cluster')+ylab('Dunn')

Dunn_perp50_plot <- ggplot(Dunn_perp50,aes(x=Cluster))+
  geom_line(aes(x = Cluster,y = multi_SNE_kmeans, colour = "multi_SNE_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_kmeans, colour = "multi_SNE_weight-adjustment_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_kmeans, colour = "multi_SNE_gd_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_pam, colour = "multi_SNE_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_pam, colour = "multi_SNE_weight-adjustment_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_pam, colour = "multi_SNE_gd_pam"))+
  guides(color=guide_legend("Algorithmn"))+xlab('Cluster')+ylab('Dunn')

Dunn_perp80_plot <- ggplot(Dunn_perp80,aes(x=Cluster))+
  geom_line(aes(x = Cluster,y = multi_SNE_kmeans, colour = "multi_SNE_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_kmeans, colour = "multi_SNE_weight-adjustment_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_kmeans, colour = "multi_SNE_gd_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_pam, colour = "multi_SNE_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_pam, colour = "multi_SNE_weight-adjustment_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_pam, colour = "multi_SNE_gd_pam"))+
  guides(color=guide_legend("Algorithmn"))+xlab('Cluster')+ylab('Dunn')

Dunn_perp100_plot <- ggplot(Dunn_perp100,aes(x=Cluster))+
  geom_line(aes(x = Cluster,y = multi_SNE_kmeans, colour = "multi_SNE_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_kmeans, colour = "multi_SNE_weight-adjustment_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_kmeans, colour = "multi_SNE_gd_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_pam, colour = "multi_SNE_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_pam, colour = "multi_SNE_weight-adjustment_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_pam, colour = "multi_SNE_gd_pam"))+
  guides(color=guide_legend("Algorithmn"))+xlab('Cluster')+ylab('Dunn')

Dunn_perp200_plot <- ggplot(Dunn_perp200,aes(x=Cluster))+
  geom_line(aes(x = Cluster,y = multi_SNE_kmeans, colour = "multi_SNE_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_kmeans, colour = "multi_SNE_weight-adjustment_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_kmeans, colour = "multi_SNE_gd_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_pam, colour = "multi_SNE_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_pam, colour = "multi_SNE_weight-adjustment_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_pam, colour = "multi_SNE_gd_pam"))+
  guides(color=guide_legend("Algorithmn"))+xlab('Cluster')+ylab('Dunn')


ggarrange(Dunn_perp10_plot, Dunn_perp20_plot,Dunn_perp50_plot,Dunn_perp80_plot,Dunn_perp100_plot,Dunn_perp200_plot, 
          labels = c("Perplexity 10", "Perplexity 20", "Perplexity 50",'Perplexity 80','Perplexity 100','Perplexity 200'),
          ncol = 3, nrow = 2,common.legend = TRUE, legend="bottom")

#Silhouette

Silhouette_perp10 <- read.csv('result/result_table_1109/silhouette_perp10-silhouette perp 10.csv')
Silhouette_perp20 <- read.csv('result/result_table_1109/silhouette_perp20-silhouette perp 20.csv')
Silhouette_perp50 <- read.csv('result/result_table_1109/silhouette_perp50-silhouette perp 50.csv')
Silhouette_perp80 <- read.csv('result/result_table_1109/silhouette_perp80-silhouette_perp80.csv')
Silhouette_perp100 <- read.csv('result/result_table_1109/silhouette_perp100-silhouette_perp100.csv')
Silhouette_perp200 <- read.csv('result/result_table_1109/silhouette_perp200-silhouette_perp200.csv')

Silhouette_perp10_plot <- ggplot(Silhouette_perp10,aes(x=Cluster))+
  geom_line(aes(x = Cluster,y = multi_SNE_kmeans, colour = "multi_SNE_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_kmeans, colour = "multi_SNE_weight-adjustment_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_kmeans, colour = "multi_SNE_gd_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_pam, colour = "multi_SNE_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_pam, colour = "multi_SNE_weight-adjustment_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_pam, colour = "multi_SNE_gd_pam"))+
  guides(color=guide_legend("Algorithmn"))+xlab('Cluster')+ylab('Silhouette')

Silhouette_perp20_plot <- ggplot(Silhouette_perp20,aes(x=Cluster))+
  geom_line(aes(x = Cluster,y = multi_SNE_kmeans, colour = "multi_SNE_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_kmeans, colour = "multi_SNE_weight-adjustment_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_kmeans, colour = "multi_SNE_gd_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_pam, colour = "multi_SNE_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_pam, colour = "multi_SNE_weight-adjustment_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_pam, colour = "multi_SNE_gd_pam"))+
  guides(color=guide_legend("Algorithmn"))+xlab('Cluster')+ylab('Silhouette')

Silhouette_perp50_plot <- ggplot(Silhouette_perp50,aes(x=Cluster))+
  geom_line(aes(x = Cluster,y = multi_SNE_kmeans, colour = "multi_SNE_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_kmeans, colour = "multi_SNE_weight-adjustment_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_kmeans, colour = "multi_SNE_gd_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_pam, colour = "multi_SNE_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_pam, colour = "multi_SNE_weight-adjustment_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_pam, colour = "multi_SNE_gd_pam"))+
  guides(color=guide_legend("Algorithmn"))+xlab('Cluster')+ylab('Silhouette')

Silhouette_perp80_plot <- ggplot(Silhouette_perp80,aes(x=Cluster))+
  geom_line(aes(x = Cluster,y = multi_SNE_kmeans, colour = "multi_SNE_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_kmeans, colour = "multi_SNE_weight-adjustment_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_kmeans, colour = "multi_SNE_gd_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_pam, colour = "multi_SNE_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_pam, colour = "multi_SNE_weight-adjustment_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_pam, colour = "multi_SNE_gd_pam"))+
  guides(color=guide_legend("Algorithmn"))+xlab('Cluster')+ylab('Silhouette')


Silhouette_perp100_plot <- ggplot(Silhouette_perp100,aes(x=Cluster))+
  geom_line(aes(x = Cluster,y = multi_SNE_kmeans, colour = "multi_SNE_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_kmeans, colour = "multi_SNE_weight-adjustment_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_kmeans, colour = "multi_SNE_gd_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_pam, colour = "multi_SNE_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_pam, colour = "multi_SNE_weight-adjustment_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_pam, colour = "multi_SNE_gd_pam"))+
  guides(color=guide_legend("Algorithmn"))+xlab('Cluster')+ylab('Silhouette')

Silhouette_perp200_plot <- ggplot(Silhouette_perp200,aes(x=Cluster))+
  geom_line(aes(x = Cluster,y = multi_SNE_kmeans, colour = "multi_SNE_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_kmeans, colour = "multi_SNE_weight-adjustment_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_kmeans, colour = "multi_SNE_gd_kmeans"))+
  geom_line(aes(x = Cluster,y = multi_SNE_pam, colour = "multi_SNE_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_update_pam, colour = "multi_SNE_weight-adjustment_pam"))+
  geom_line(aes(x = Cluster,y = multi_SNE_gd_pam, colour = "multi_SNE_gd_pam"))+
  guides(color=guide_legend("Algorithmn"))+xlab('Cluster')+ylab('Silhouette')



ggarrange(
  Silhouette_perp10_plot, 
  Silhouette_perp20_plot,
  Silhouette_perp50_plot,
  Silhouette_perp80_plot,
  Silhouette_perp100_plot,
  Silhouette_perp200_plot, 
  labels = c("Perplexity 10", "Perplexity 20", "Perplexity 50",'Perplexity 80','Perplexity 100','Perplexity 200'),
  ncol = 3, nrow = 2,common.legend = TRUE, legend="bottom")

#multi-SNE-gd result
multisne_gd_result = multiSNE_gd(simData_scenB$X,max_iter = 1000,perplexity = 200)

simulate_gd_result = data.frame(
  Y1 = multisne_gd_result$Y[,1],
  Y2 = multisne_gd_result$Y[,2],
  label = simData_scenB$labels
)
simulate_gd_plot <- ggplot(simulate_gd_result, aes(x=Y1, y=Y2,color = label)) + 
  geom_point()

#plot weight
#simulate
simulate_gd_weight <- data.frame(multisne_gd_result$Weights)
index_len <- nrow(simulate_gd_weight)
simulate_gd_weight$index <- 1:index_len
simulate_gd_weight_plot <- ggplot(simulate_gd_weight,aes(x=index))+
  geom_line(aes(x = index,y = X1, colour = "V1"))+
  geom_line(aes(x = index,y = X2, colour = "V2"))+
  geom_line(aes(x = index,y = X3, colour = "V3"))+
  geom_line(aes(x = index,y = X4, colour = "V4"))
