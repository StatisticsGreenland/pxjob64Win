# pxjob64Win

Statistics Finland has created a wonderful, rich and mature tool to create and edit px-files, namely PXEdit. This tool also contains methods to do everything programmatically, named PXJob. Check out https://www.stat.fi/tup/tilastotietokannat/px-tuoteperhe_en.html

This R-package gives access to 64bit pxjob-functionality, from R, with a minimal footprint.

#install.packages("devtools")

#library(devtools)

#devtools::install_github("LarsLap/pxjob64Win")

library(pxjob64Win)

pxjob <- c(system.file(package = "pxjob64Win","PxJob64.exe"))

system(paste(pxjob, " px" , " in=",tmp_file," out=",matrix,".px",sep=""))

system(paste(pxjob, " px" , " in=", matrix, ".px", " meta=", ctl_file, " -a", sep=""))


https://Github.com/LarsLap/pxjob64win/statslog2px.html
