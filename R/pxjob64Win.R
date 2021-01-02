# Hello, pxjob64Win!
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

write.table_with_header <- function(x, file, header, ...){
  cat(header, '\n',  file = file)
  write.table(x, file, append = T, row.names = FALSE, ...)
}

