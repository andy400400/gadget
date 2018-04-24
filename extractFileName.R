#import_path <- "D://000/test.csv"
#output_path <- "D://000/test.csv"
#xml_path <- "D://000/"
#write_col <- 1
#compare_col <- 3
extractFileName <- function(import_path,output_path,xml_path,write_col,compare_col){
  csv_file <- read.csv(import_path)
  xml_file <- list.files(xml_path,pattern="*.xml")
  for(a in 1:length(xml_file)){
    for(b in 1:nrow(csv_file[compare_col])){
      #NA handle
      flag <- grepl(csv_file[b,compare_col],xml_file[a])
      if(flag){
        csv_file[b,write_col] <- xml_file[a]
      }
    }	A
  }
  write.csv(csv_file,output_path)
}
extractFileName("D://000/test.csv","D://000/test.csv","D://000/",1,3)