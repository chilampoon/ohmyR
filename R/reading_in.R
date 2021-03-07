#' Function for parsing the text output of FastQC
#'
#' This functions extracts the values for a specific test run by FastQC on a
#' single fastq file. Running this function equals to executing this sed
#' command: `sed -n '/anytest/,/END_MODULE/p' file | grep -v '^>>'`.
#' The `-n` option disables the automatic printing, and print the lines you
#' explicitly tell it to print (with p) get printed only once. So the sed
#' command here is to print the lines from the title of the test of your intrest
#' to the end of the content of this test. Then `grep -v '^>>'` is to get
#' rid of the first and the last lines started with `>>`.
#'
#' @param file string that specifies the path to an individual FastQC result file
#' (tyically named "fastqc_data.txt"
#' @param test Indicate which test results should be extracted. Default:
#' "Per base sequence quality". Other options are, for example, "Per tile sequence quality",
#' "Per sequence quality score" etc.
#' @param sample a user-specified sample name (e.g. "WT_1_ERR458493") to be added
#' to the output dataframe
#'
#' @return data.frame with the values of a single FastQC test result.
#' @importFrom data.table fread
#' @importFrom magrittr %>%
#' @export
#' @examples \dontrun{
#' res <- reading_in(file = "acinar-3_S9_L001_R1_001_fastqc/fastqc_data.txt")
#' }
reading_in <- function(file, test = "Per base sequence quality", sample){

  ## generate the string that will be used for the file parsing
  syscommand <- paste0("sed -n '/", test, "/,/END_MODULE/p' ", file, " | grep -v '^>>'")

  ## use the fread command, which can interpret UNIX commands on the fly to
  ## read in the correct portion of the FastQC result
  dat <- fread(cmd = syscommand, header = TRUE) %>% as.data.frame
  dat$sampleName <- sample
  dat
}
