#' Rich data input
#'
#' Capture the semantic meaning of the data that
#' we represent. For instance, separately
#' recognizing the 'phenotypic' data (describing
#' the samples ) and expression values
#'
#'
#' @param pdata_file charactger (1) The path to the pheno data
#' file
#'
#' @param exprs_file character(1) The path to the expression file
#'
#' @return A SummarizedExperiment() containing samples as
#'       coldata() and features as rows
#'
#' @importFrom SummarizedExperiment SummarizedExperiment
#' @export
input_rich <- function(pdata_file, expr_file){
  pdata <- read.csv(pdata_file, row.names=1, check.names=FALSE)
  exprs <- read.csv(expr_file, row.names=1, check.names=FALSE)

  SummarizedExperiment(as.matrix(exprs),
                       colData=pdata)
}


