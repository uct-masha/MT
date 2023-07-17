#' Use \pkg{mt} in your project
#'
#' @export
#'
#' @examples
#' # Set up mt files in mt/ directory
#' \dontrun{use_mt()}
use_mt <- function() {
  if (!fs::dir_exists('mt')) {
    fs::dir_create('mt')
  }
  templateFnames <- c(
    'config.yml',
    'packages.R',
    'disModel.R',
    'disModel.xlsx',
    'runModel.R'
  )
  for (fname in templateFnames) {
    fs::file_touch(fs::path_join(c('mt',fname)))
  }
}
