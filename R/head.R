#set default graphic function
options(echo=TRUE)
args <- commandArgs(trailingOnly=TRUE)
print(args)
# query its dimensions for resizing
scaleRatio = desiredOutputSize/(size[1]*size[2])
sideRatio = sqrt(scaleRatio)
adjWidth = round(size[1]*sideRatio)
adjHeight = round(size[2]*sideRatio)


