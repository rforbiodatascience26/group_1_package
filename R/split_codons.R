#' Split an RNA sequence into codons
#'
#' @param rna_seq A character string representing an RNA sequence.
#' @param start Integer specifying the starting reading frame (default 1).
#'
#' @return A character vector of 3-nucleotide codons.
#' @export
#'
#' @examples
#' split_codons("AUGGCCUAA", start = 1)
split_codons <- function(rna_seq, start = 1) {
  seq_len <- nchar(rna_seq)
  codons <- substring(rna_seq,
                      first = seq(from = start, to = seq_len - 3 + 1, by = 3),
                      last = seq(from = 3 + start - 1, to = seq_len, by = 3))
  return(codons)
}
