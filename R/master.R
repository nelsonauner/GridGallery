# should point to R/
baseDir <- getwd()
# find names of scripts placed in YourCodeHere
substrRight <- function(x, n=2){substr(x, nchar(x)-n+1, nchar(x))}
scripts <- dir("./YourCodeHere/")

# scripts should be executed under the following conditions:
#     - must end in ".R"
#     - must not have same name as another, already processed script

alreadyPosted <- strsplit(dir("../img/thumb/"),".png",fixed=TRUE)

# todo: 
#     - throw an error if alreadyPosted
#     - throw a warning for all non-R files (they won't be run)
scripts <-  scripts[sapply(scripts,
               FUN=function(x) {
                 substrRight(x)==".R" && 
                 !(strsplit(x,".R") %in% alreadyPosted)
                 })]

# iterate over all valid scripts and produce graphics
for (i in 1:length(scripts)) {
    currentScript <- paste0("./YourCodeHere/",scripts[i])
    print("processing")
png(file=paste0("../img/thumb/",scripts[i],".png"),width = 200,height=200)
    setwd("YourCodeHere")
    source(scripts[i])
    setwd("../")
dev.off()
    file.copy(from=currentScript,to=paste0("./processedCode/",scripts[i]))
    #file.remove(currentScript)
    #no need to remove
}


