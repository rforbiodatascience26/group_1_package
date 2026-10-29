#' Transcribe DNA to RNA
#'
#' @param dna_seq A character string representing a DNA sequence.
#'
#' @return A character string representing the transcribed RNA sequence.
#' @export
#'
#' @examples
#' transcribe_dna("ATGCGATCA")
transcribe_dna <- function(dna_seq) {
  rna_seq <- gsub("T", "U", dna_seq)
  return(rna_seq)
}
