#' get the device ID for one or more receivers
#'
#' The deviceID is returned for any valid receiver serial numbers.
#'
#' @param serno character vector of receiver serial numbers, e.g. "SG-1234BBBK4321", "Lotek-123"
#'
#' @return
#' a data.frame with these columns:
#' \itemize{
#'    \item serno; character serial number, e.g. "SG-1214BBBK3999", "Lotek-8681"
#'    \item deviceID; integer device ID (internal to motus); NA if the serial number
#'    was not valid or not known.
#' }
#'
#' @export
#'
#' @author John Brzustowski \email{jbrzusto@@REMOVE_THIS_PART_fastmail.fm}

srvDeviceIDForReceiver = function(serno) {
    x = srvQuery(API=Motus$API_DEVICE_ID_FOR_RECEIVER, params=list(serno=serno))
    return (structure(x, class = "data.frame", row.names=seq(along=x[[1]])))
}
