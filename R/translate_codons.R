#' Translate codons into an amino acid sequence
#'
#' @param codons A character vector containing 3-letter RNA codons.
#'
#' @return A character string representing the translated protein sequence.
#' @export
#'
#' @examples
#' translate_codons(c("AUG", "GCC", "UAA"))
translate_codons <- function(codons) {
  protein_seq <- paste0(codon_table[codons], collapse = "")
  return(protein_seq)
}
