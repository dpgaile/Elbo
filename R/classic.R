#' Classic.R approaches to data analysis
#'
#' The functions here illustrate how an 'old school' R user
#' might approach data management and analysis
#'
#' @details There are two files. Thery are from a microarray
#' experiment. The first file, ALL-pehonoData.csv describes the
#' 128 samples. The second file, All-expression.csv are the
#' normalized expression values for 12k probesets across 128 samples
#' The files were from excel and exported...
#'
#' @param pdata_file charactger (1) The path to the pheno data
#' file
#'
#' @param exprs_file character(1) The path to the expression file
#'
#' @return A data.frame() containing samples as rows and
#'    phenotype data and expression data as columns
#'
#' @export

input_classic <- function(pdata_file, expr_file){
      pdata <- read.csv(pdata_file, row.names=1, check.names=FALSE)
      exprs <- read.csv(expr_file, row.names=1, check.names=FALSE)
      merge(pdata,t(exprs), by=0) # by=0: merge using the row names
}




