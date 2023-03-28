# multi-SNE gradient descent
Contains the code of "On the estimation of the weight parameters of the multi-SNE using the gradient descent by Min-Yi Chen, Han-Ming Wu" 


## Contribution
* Designed an objective function for parameters estimation converges at the rate of O(1/k)
* Conducted experiments on synthetic and real datasets to show the effectiveness and robustness of multi-SNE gradient descent


## Code

* R version : 4.2.1

* model: multi-SNE-gd
	* multi-SNE algorithm X gradient descent algorithm
	
* What visualizing method we use?
	* heatmap
	* line graph
	* scatterplots

* How do your perform evaluation?
	* Connectivity
	* Dunn Index
	* Silhouette


## Data
- Simulated data : NDS
- Handwritten Digits: https://archive.ics.uci.edu/ml/datasets/Multiple+Features




##
* Packages we used:
	* ggplot2
  	* ggpubr
 	* clValid
  	* pheatmap
	
