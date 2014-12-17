
#footer file ---- 
desiredOutputSize = 200*200 

size = dev.size("px")
scaleRatio = desiredOutputSize/(size[1]*size[2])
sideRatio = sqrt(scaleRatio)
adjWidth = round(size[1]*sideRatio)
adjHeight = round(size[2]*sideRatio)

dev.copy (png,filename=paste0("./img/thumb/",args[1],".png"),width=adjWidth, height = adjHeight,units="px")
dev.off()

dev.copy(png,paste0("./img/large/",args[1],".png"), width=adjWidth*2, height=adjHeight*2,units="px")
dev.off()

