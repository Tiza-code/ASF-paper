## Codes to organize and call file names

###


## Level 1
Lev_0 <- "C:/Users/Tiza Mfuni/Documents/Penn school/PhD Courses/PhD proposal and papers/ASF consumption and export paper"


## Main data types
Lev_1Shape <- paste(Lev_0, "1_Shapefiles", sep = "/")
Lev_1RS <- paste(Lev_0, "2_Remote_Sensing", sep = "/")

##Mma
Lev_2GeoTiff <- paste(Lev_1RS, "1_Raw_geoTifs", sep = "/")

##GetDHS function to get DHS data
# Construct file name using paste()

CountryCode <- "ZM"
Type <- "WO"
Year <- "15"

GetDHS <- function(CountryCode,Type,Year){
  filename <- paste(CountryCode,Type,Year, ".dat", sep = "")
  foldername <- paste(Lev_1Shape,CountryCode,Type,Year, sep = "/")
  MyData <- read.csv(paste(foldername,filename,sep = "/"))
  return(MyData)
}

MyData <- GetDHS("ZM","HS","01284")

##GetFAO function to get FAO data

paste(c('a','b'),1:10,sep = '_',collapse = ' and ')
