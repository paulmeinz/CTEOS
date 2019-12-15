#' Add together two numbers.
#'
#' @param filepath Path to your CTEOS file.
#' @param recode default as TRUE, if you want to recode variables from the
#' codebook.
#' @return A loaded CTEOS dataset
#' @examples
#' \dontrun {
#' loadCTEOS('cteosfile.csv', recode = TRUE)
#' }
#' @export


loadCTEOS <- function(filepath, recode = TRUE) {
  data <- read.csv(filepath, stringsAsFactors = F,
                   na.strings = '#NULL!')

}
