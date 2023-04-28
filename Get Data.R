#### Codes to organize and call file names for DHS and FAO data analysis
### By Tiza Mfuni
# Spring 2023


## First level directory
Lev_0 <- "C:/Users/Tiza Mfuni/Documents/Penn school/PhD Courses/PhD proposal and papers/0_ASF_consumption_and_export_paper"


### Second level directory: Main data types by origin: Either DHS or FAO
Lev_1DHS <- paste(Lev_0, "1_DHS_data", sep = "/")
Lev_1FAOWD <- paste(Lev_0, "1_FAOWD", sep = "/")


###Subfolders in DHS level data
Lev_2Demo <- paste(Lev_1DHS, "2_Demographic_data", sep = "/")
Lev_2GIS <- paste(Lev_1DHS, "2_GIS_data", sep = "/")


##Subfolders in DHS Demographic Data based on country of interest

Lev_3ZM <- paste(Lev_2Demo, "3_ZM_2018_DHS_01162023", sep = "/")

# Lev_3TZ <- paste(Lev_2Demo, "1_TZ", sep = "/")
# Lev_3MW <- paste(Lev_2Demo, "1_MW", sep = "/")
# Lev_3KE <- paste(Lev_2Demo, "1_KE", sep = "/")

##Subfolders in Country Data for Women's file 
Lev_4WO <- paste(Lev_3ZM, "4_ZMIR71FL", sep = "/")


##Subfolders in DHS GIS Data based on country of interest

# Lev_3ZM <- paste(Lev_2GIS, "3_ZM", sep = "/")

# Lev_3TZ <- paste(Lev_2GIS, "1_TZ", sep = "/")
# Lev_3MW <- paste(Lev_2GIS, "1_MW", sep = "/")
# Lev_3KE <- paste(Lev_2GIS, "1_KE", sep = "/")


##GetDHS function to get DHS data

# Construct file name using paste()


GetDHS <- function(CountryCode,Type,LastFour,foldername){
  
  require(readr)
  filename <- paste(CountryCode,Type,LastFour, ".dat", sep = "")
  MyData <- read_table(paste(foldername,filename,sep = "/"), col_names = FALSE)
  
  return(MyData)
  
}



CountryCode <- "ZM" 
Type <- "IR"
# Year <- "71FL"
LastFour <- "71FL"
foldername <- Lev_4WO


out <- GetDHS(CountryCode,Type,LastFour,foldername)



##GetFAO function to get FAO data
CountryCode,Type,Year,
ZMIR71FL