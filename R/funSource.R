# open github.com/cran source code of a function in a package
# Berry Boessenkool", "Jan 2016", "berry-b@gmx.de

# ToDo: add message: "function also found in: " 

funSource <- function(
x, # function name, with or without quotation marks
character.only=FALSE # If TRUE, look for SomeFun instead of MyFun if  MyFun <- "SomeFun"
)
{
# change input to character:
if (!character.only) x <- as.character(substitute(x))
# find locations of x:
locs <- find(x)
if(locs[1]==".GlobalEnv")
  {
  warning(x," exists in .GlobalEnv, is ignored.")
  locs <- locs[-1]
  }
# get package name
pn <- strsplit(locs[1], ":")[[1]][2]
if(is.na(pn)) stop("A package containing '", x,"' was not found.")
pn
if(pn %in% c("base", "compiler", "datasets", "grDevices", "graphics", "methods", 
        "parallel", "profile", "stats", "stats4", "tools", "translations", "utils"))
  {
  baselink <- "https://github.com/wch/r-source/tree/trunk/src/library/"
  finallink <- paste0(baselink,pn,"/R/", x,".R")
  } else
  {
  baselink <- "https://github.com/cran/"
  finallink <- paste0(baselink,pn,"/blob/master/R/", x,".R")
  }
# open link in Browser:
browseURL(finallink)
finallink
}



if(FALSE){
funSource(library)
funSource("library")

library(httr)
http_status(GET(finallink))

library(RCurl)
url.exists(finallink)


funSource("browseURL") # ToDo: needs to search directory

require(plotrix); require(scales)
funSource(rescale)
# https://github.com/cran/plotrix/tree/master/R
# https://github.com/cran/plotrix/blob/master/R/rescale.R
funSource(cie)

library <- function(...) stop("This is a dummy function. Type: rm(library)")
funSource("library")
rm(library)


}