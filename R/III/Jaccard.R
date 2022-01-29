library(ggplot2)
library(ggdendro)
library(dplyr)
library(vegan)

A <- matrix(c(2,5,2,1,0,0,0,0,1,0,0,0,0,1,3,5,6,0,0,1,0,0,0,2,0,0,1,2,7,2,4,6,2,5,1,0,0,1,0,0,0,1,0,0,3,5,4,0,0,1,0,0,1,0,0,2,0,3,5,7,3,1,4,0,1,0,0,0,0,2,0,0,0,1,3,4,6,0,0,1), byrow=T, nrow=8, ncol=10)
colnames(A) <- letters[1:10]
rownames(A) <- LETTERS[1:8]
print(A)

# calculate Jaccard Dissimilarity
a.bray <- vegdist(A, method = "bray")
a.bray <- as.matrix(a.bray)
a.bray

# Hierarchical clustering
dist.jac <- as.dist(a.bray)

hc <- hclust(dist.jac, method = "ward.D2")

cut <- as.data.frame(cutree(hc, k=3))
cut$names <- rownames(cut)
names(cut) <- c("cut", "names")

hcdata <- dendro_data(hc, type="triangle")

hcdata$labels <- left_join(hcdata$labels, cut, by=c("label"="names"))

ggplot(hcdata$segments)+ 
  geom_segment(aes(x = x, y = y, xend = xend, yend = yend))+
  geom_text(data = hcdata$labels, 
            aes(x, y, label = label, colour=factor(cut)), 
            hjust = 1, size = 4) +
  scale_color_manual(values=c("azure3","cadetblue4","black"), 
                     guide_legend(title="Clusters")) +
  theme(panel.border = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), 
        axis.line = element_line(colour = "black", size = 1))+
  theme(panel.background = element_blank())+ 
  theme(legend.key = element_rect(colour = NA, fill = NA),
        legend.justification = c(1,0), legend.position = c(0.95,0.6))+ 
  labs(x="", y="") + 
  coord_flip()
