#' Combined dataframe of "Per base sequence quality" in 4 fastqc reports
#'
#' @description this is an object for storing a dataframe composed of
#' "Per base sequence quality" in 4 fastqc reports
#'
#' @format this data frame has 204 rows and the following 8 columns
#' \describe{
#'   \item{Base}{number of base}
#'   \item{Mean}{the mean of coverage of this base}
#'   \item{Median}{the median of coverage of this base}
#'   \item{Lower Quartile}{the lower quartile of coverage of this base}
#'   \item{Upper Quartile}{the upper quartile of coverage of this base}
#'   \item{10th Percentile}{the 10th percentile of coverage of this base}
#'   \item{90th Percentile}{the 90th percentile of coverage of this base}
#'   \item{sampleName}{user-defined sample id}
#' }
"all.reports"
