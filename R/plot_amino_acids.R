#' Plot Amino Acid Frequencies
#'
#' @param protein_seq A character string containing an amino acid sequence.
#'
#' @return A ggplot object showing the frequency of each amino acid.
#' @import ggplot2
#' @importFrom stringr str_split boundary str_count
#' @export
#'
#' @examples
#' plot_amino_acids("MAVMAVEE")
plot_amino_acids <- function(protein_seq) {
  # 1. Split sequence into individual characters and keep unique residues
  unique_aa <- protein_seq |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # 2. Count occurrences of each unique amino acid
  counts <- sapply(unique_aa, function(amino_acid) {
    stringr::str_count(string = protein_seq, pattern = amino_acid)
  }) |>
    as.data.frame()

  # 3. Format dataframe for plotting
  colnames(counts) <- c("Counts")
  counts[["AminoAcid"]] <- rownames(counts)

  # 4. Generate the bar plot using ggplot2
  p <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = AminoAcid, y = Counts, fill = AminoAcid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(p)
}
