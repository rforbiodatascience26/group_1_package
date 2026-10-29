#' Generate a random DNA sequence
#'
#' @param length An integer specifying the length of the DNA sequence.
#'
#' @return A character string representing the DNA sequence.
#' @export
#'
#' @examples
#' generate_dna(12)
generate_dna <- function(length) {
  bases <- sample(c("A", "T", "G", "C"), size = length, replace = TRUE)
  dna_seq <- paste0(bases, collapse = "")
  return(dna_seq)
}
