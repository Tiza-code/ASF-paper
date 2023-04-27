#### Codes to organize and call file names

###


## First level
Lev_0 <- "C:/Users/Tiza Mfuni/Documents/Penn school/PhD Courses/PhD proposal and papers/0_ASF_consumption_and_export_paper"


### Main data types by origin: Either DHS or FAO
Lev_1DHS <- paste(Lev_0, "1_DHS_data", sep = "/")
Lev_1FAOWD <- paste(Lev_0, "1_FAOWD", sep = "/")


###Subfolders in DHS level data
Lev_2Demo <- paste(Lev_1DHS, "2_Demographic_data", sep = "/")
Lev2Lev_2GIS <- paste(Lev_1DHS, "2_GIS_data", sep = "/")


##Subfolders in DHS Demographic Data based on country of interest

Lev_3ZM <- paste(Lev_2Demo, "3_ZM", sep = "/")

# Lev_3TZ <- paste(Lev_2Demo, "1_TZ", sep = "/")
# Lev_3MW <- paste(Lev_2Demo, "1_MW", sep = "/")
# Lev_3KE <- paste(Lev_2Demo, "1_KE", sep = "/")

##Subfolders in Country Data for Women's file 
Lev_4WO <- paste(Lev_3ZM, "4_WO", sep = "/")


##Subfolders in DHS GIS Data based on country of interest

Lev_3ZM <- paste(Lev_2GIS, "3_ZM", sep = "/")

# Lev_3TZ <- paste(Lev_2GIS, "1_TZ", sep = "/")
# Lev_3MW <- paste(Lev_2GIS, "1_MW", sep = "/")
# Lev_3KE <- paste(Lev_2GIS, "1_KE", sep = "/")


##GetDHS function to get DHS data

# Construct file name using paste()

CountryCode <- "ZM"
Type <- "WO"
Year <- "18"

GetDHS <- function(CountryCode,Type,Year){
  
  filename <- paste(CountryCode,Type,Year, ".dat", sep = "")
  foldername <- paste(Lev_1DHS,CountryCode,Type,Year, sep = "/")
  MyData <- read.csv(paste(foldername,filename,sep = "/"))
  return(MyData)
  
}

MyData <- GetDHS("ZM","WO","18")

##GetFAO function to get FAO data

