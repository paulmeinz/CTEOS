#' Load and Clean CTEOS Data
#'
#' @param filepath Path to your CTEOS file.
#' @param recode default as TRUE, if you want to recode variables from the
#' codebook.
#' @return A CTEOS dataset as a dataset
#' @export


loadCTEOS <- function(filepath, recode = TRUE) {
  data <- read.csv(filepath, stringsAsFactors = F,
                   na.strings = '#NULL!')
  codes <- unique(codebook$index)
  for (i in codes) {
    print(i)
    code <- codebook[codebook$index == i,]
    lookup <- code$Label
    names(lookup) <- code$value
    if (i %in% names(data)) {
      names(data)[names(data) == i] <- 'rec'
      data[,'rec'] <- lookup[data[,'rec']]
      names(data)[names(data) == 'rec'] <- i
    }
  }
  data
}
