#' R Library Summary
#'
#' Provide a brief summary of the package
#' libraries on the machine
#'
#' @return A `data.frame` containing the count of
#'  packages in each of the user's libraries
#' @export
#'
#' @examples
#' libsummary()
libsummary <- function(){
  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[,"LibPath"])
  pkg_df <- as.data.frame(pkg_tbl,stringsAsFactors=FALSE)
  names(pkg_df) <- c("library", "n_packages")
  pkg_df #
}
