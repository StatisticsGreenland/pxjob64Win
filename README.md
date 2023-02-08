# pxjob64Win

Statistics Finland has created a wonderful, rich and mature tool to create and edit px-files, namely PXEdit. This tool also contains methods to do everything programmatically, named PXJob. Check out <https://www.stat.fi/tup/tilastotietokannat/px-tuoteperhe_en.html>

This R-package gives access to 64bit pxjob-functionality, from R, with a minimal footprint.

## Installation

    devtools::install_github("StatisticsGreenland/pxjob64Win")

## Examples

    library(pxjob64Win)

    pxjob <- c(system.file(package = "pxjob64Win","PxJob64.exe"))

    system(paste(pxjob, " px" , " in=",tmp_file," out=",matrix,".px",sep=""))
    system(paste(pxjob, " px" , " in=", matrix,".px", " meta=", ctl_file," -a", sep=""))