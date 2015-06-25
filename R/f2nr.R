#' Format to Number
#
#' @description
#' This function reformats numbers, which are stored as characters,
#' with format 1.200,45 into 1200.45. The result is a character; use
#' \code{as.numeric()} to convert it to a number.
#'
#' This can be necessary when trying to read text files that use
#' comma (,) as decimal point and dot (.) as thousand separator for numbers.
#'
#' @param y A character, which is a number in format \code{"1.234,45"}
#' @return A character, which is the number in format \code{"1234.45"}
#'
#' @keywords numeric, format
#' @export
#' @examples
#' f2nr("1.234,45") # returns "1234.45"
#' f2nr("34,45") # returns "34.45"

f2nr <-function (y) {
    z <- sub("\\.", "",  y)
    w <- sub(",", "\\.",  z)
    return (w)
}
