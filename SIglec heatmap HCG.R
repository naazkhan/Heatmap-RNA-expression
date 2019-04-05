library(gdata)
library(gplots)

data=read.xls("xy.xlsx",sheet=1)

View(data)
drawimage=function(data,file,colplot,cexcol)
{
  # ind=which(data[,colpval]<pval)
  data1=as.matrix(data[,colplot])
  rownames(data1)=data[,1]
  # print(data1)
  
  heatmap.2(data1, Colv=T,trace="none",offsetRow=0,density.info="none", scale="row",srtCol=45,cexCol=cexcol,cexRow=0.5,adjCol=c(0.5,3),col=rev(redgreen(75)))
  savePlot(file,type="png", width=100, height=100);
}

drawimage(data,"aRheatmap.png",2:19,1)
