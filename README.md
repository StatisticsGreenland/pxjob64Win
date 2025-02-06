# pxjob64Win

Installing this package installs [PXJob](https://www.stat.fi/tup/tilastotietokannat/px-tuoteperhe_en.html) by Statistics Finland, and makes it accessible from R.

This package exists, because it is used to run some test cases in [pxmake](https://github.com/StatisticsGreenland/pxmake).

## Package installation in R

    #install.packages("pak")
    pak::pak("StatisticsGreenland/pxjob64Win")

## Example to check validity of a px-file

    library(pxjob64Win)

    pxjob(input = "input_px_file.px", 
          output = file.path('output', 'parsed_px_file.px)
          )

Pxedit/Pxjob also offers learning material when instaling/unpacking the files from Statistics Finland. To learn more, read the documentation:

- [Documentation](inst/PxJob_en_40.pdf)  
- [Tutorial](inst/PxEdit_40_6_PX-Job_en.pdf)  
- [Structural files: What are they?](inst/PxEdit_40_5_Structural_tables_en.pdf)  

Advanced use:

    library(pxjob64Win)

    pxjob <- c(system.file(package = "pxjob64Win","PxJob64.exe"))

    system(paste(pxjob, " px" , " in=",tmp_file," out=",matrix,".px",sep=""))
    system(paste(pxjob, " px" , " in=", matrix, ".px", " meta=", ctl_file, " -a", sep=""))
