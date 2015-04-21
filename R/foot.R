
# footer file ---- 

dev.copy(png,filename=paste0("../img/thumb/",scripts[i],".png"),width=adjWidth, height = adjHeight,units="px")
dev.off()

dev.copy(png,paste0("../img/large/",scripts[i],".png"), width=adjWidth*2, height=adjHeight*2,units="px")
dev.off()

