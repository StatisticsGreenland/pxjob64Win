# pxjob64Win (depreciated)

**Look to pxmake instead. All in R**

Statistics Finland has created a wonderful, rich and mature tool to create and edit px-files, namely PXEdit. This tool also contains methods to do everything programmatically, named PXJob. Check out <https://www.stat.fi/tup/tilastotietokannat/px-tuoteperhe_en.html>

This R-package brings access to 64bit pxjob-functionality, from R, with a minimal footprint. 

## Package installation in R

    #install.packages("devtools")
    devtools::install_github("StatisticsGreenland/pxjob64Win")

## Example to check validity of a px-file

    library(pxjob64Win)

    pxjob(input = "input_px_file.px", 
          output = file.path('output', 'parsed_px_file.px)
          )

Pxedit/Pxjob also offers learning material when instaling/unpacking the files from Statistics Finland. To learn more, read the documentation:

[Documentation: ](inst/PxJob_en_40.pdf)  
[Tutorial: ](inst/PxEdit_40_6_PX-Job_en.pdf)  
[Structural files: What are they?](inst/PxEdit_40_5_Structural_tables_en.pdf)  

Advanced use:

    library(pxjob64Win)

    pxjob <- c(system.file(package = "pxjob64Win","PxJob64.exe"))

    system(paste(pxjob, " px" , " in=",tmp_file," out=",matrix,".px",sep=""))
    system(paste(pxjob, " px" , " in=", matrix, ".px", " meta=", ctl_file, " -a", sep=""))
