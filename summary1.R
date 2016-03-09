# Ce package permet de lire et écrire des fichiers dans le HDFS 
install.packages("https://cran.r-project.org/src/contrib/Archive/rHadoopClient/rHadoopClient_0.2.tar.gz", repos = NULL, type = "source")

library("rHadoopClient")

data<-read.hdfs(hdfs.path = "hdfs://192.168.52.10:8020/user/service/DAMIR/P200901.csv", hadoop.cmd="hadoop")

colnames(data)<-data[1,]

data1<-data[-1,]
  
# Affiche des premières lignes du fichiers
head(data1)

# Donne la structure du fichier
str(data1)

# Donne le nombre de ligne du fichier
nrow(data1)

# Founit un résumé statistique des variables du fichier
summary(data1)

