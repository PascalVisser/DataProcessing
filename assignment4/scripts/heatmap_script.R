# heat map script for visualising expression data of yeast

# set command input

args = commandArgs(trailingOnly = T)
# read data

yeast_data <- as.matrix(read.csv(args[1], header=FALSE, sep=",")[-1,-1])
rownames(yeast_data) <- read.csv(args[1], header=FALSE, sep=",")[-1,1]
colnames(yeast_data) <- read.csv(args[1], header=FALSE, sep=",")[1,-1]

# create heatmap

jpeg(args[2])

heatmap(yeast_data, main = "Expression data of yeast", ylab = "Gene", xlab = "Time")
dev.off()
