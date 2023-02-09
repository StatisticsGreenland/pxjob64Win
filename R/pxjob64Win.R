#' Helper function
absolute_path <- function(path) {
  normalizePath(path, winslash = '/', mustWork = FALSE)
}

#' Run PxJob on a px file and save it
#' 
#' Run PxJob on a raw px file and save the parsed output. PxJob only works on 
#' Windows.
#' 
#' @param input Path to input file.
#' @param output Path to save parsed px file at.
#' @returns PxJob's exit code.
#' @export 
#' @examples 
#' pxjob(file.path('px_example.px'), file.path('px_parsed.px'))
pxjob <- function(input, output) {
  pxjob_path <- system.file(package = "pxjob64Win", "PxJob64.exe")
  
  pxjob_command_string <- paste(shQuote(pxjob_path), "px", 
                                shQuote(paste0("in=", absolute_path(input))),
                                shQuote(paste0("out=", absolute_path(output)))
                                )
  
  system(pxjob_command_string)
}
