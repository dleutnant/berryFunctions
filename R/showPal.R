#' show color palettes
#' 
#' Plot examples of the sequential and diverging color palettes in this package.
#' Do not use \code{rainbow}: \url{https://eagereyes.org/basics/rainbow-color-map}
#' 
#' @return NULL
#' @author Berry Boessenkool, \email{berry-b@@gmx.de}, Apr 2016
#' @seealso \code{\link{seqPal}}, \code{\link{divPal}}, package \code{RColorBrewer}
#' @keywords dplot color
#' @importFrom graphics par plot text title
#' @export
#' @examples
#' showPal()
#' 
#' @param cex Character EXpansion size (width of color bar). DEFAULT: 4
#' @param \dots Arguments passed to \code{\link{par}}
#' 
showPal <- function(cex=4,...)
{
op <- par(mfcol=c(11,2), mar=c(0,0,0,0), oma=c(0,0,1.8,0), yaxt="n", xaxt="n", ...)
on.exit(par(op), add=TRUE)
# Sequential palette -----------------------------------------------------------
plot(rep(1, 12), pch=15, cex=cex, col=seqPal(12))            ; text(  6, 1, "default")
plot(rep(1,  7), pch=15, cex=cex, col=seqPal(7))             ; text(  3, 1, "n=7 works, too")
plot(rep(1,300), pch=15, cex=cex, col=seqPal(300))           ; text(150, 1, "n=300")
plot(rep(1,300), pch=15, cex=cex, col=seqPal(300, extr=TRUE)); text(150, 1, "extr=TRUE")
plot(rep(1, 12), pch=15, cex=cex, col=seqPal(alpha=0.4))     ; text(  6, 1, "alpha=0.4 (semi-transparency)")
plot(rep(1, 12), pch=15, cex=cex, col=seqPal(reverse=TRUE))  ; text(  6, 1, "rev=TRUE")
plot(rep(1,300), pch=15, cex=cex, col=seqPal(300, yb=TRUE))  ; text(150, 1, "yb=TRUE")
plot(rep(1,300), pch=15, cex=cex, col=seqPal(300, yr=TRUE))  ; text(150, 1, "yr=TRUE")
plot(rep(1,300), pch=15, cex=cex, col=seqPal(300, gb=TRUE))  ; text(150, 1, "gb=TRUE")
plot(rep(1,300), pch=15, cex=cex, col=seqPal(300,  b=TRUE))  ; text(150, 1, "b=TRUE")
plot(rep(1,300), pch=15, cex=cex, col=rainbow2(300))         ; text(150, 1, "berryFunctions::rainbow2(300)", font=2)
title(main="berryFunctions::seqPal", xpd=NA, outer=TRUE, adj=0.2, line=0.5)

# Diverging palette ------------------------------------------------------------
plot(rep(1, 12), pch=15, cex=cex, col=divPal(12))            ; text(  6, 1, "default")
plot(rep(1,  7), pch=15, cex=cex, col=divPal(7))             ; text(  3, 1, "n=7")
plot(rep(1,300), pch=15, cex=cex, col=divPal(300))           ; text(150, 1, "n=300")
plot(rep(1,300), pch=15, cex=cex, col=divPal(300, bias=0.5)) ; text(150, 1, "bias=0.5")
plot(rep(1, 12), pch=15, cex=cex, col=divPal(alpha=0.4))     ; text(  6, 1, "alpha=0.4 (semi-transparency)")
plot(rep(1, 12), pch=15, cex=cex, col=divPal(reverse=TRUE))  ; text(  6, 1, "rev=TRUE")
plot(rep(1,300), pch=15, cex=cex, col=divPal(300, rwb=TRUE)) ; text(150, 1, "rwb=TRUE")
plot(rep(1,300), pch=15, cex=cex, col=divPal(300, ryb=TRUE)) ; text(150, 1, "ryb=TRUE")
plot(rep(1,300), pch=15, cex=cex, col=divPal(300,  gp=TRUE)) ; text(150, 1, "gp=TRUE")
plot(rep(1,300), pch=15, cex=cex, col=divPal(300,  br=TRUE)) ; text(150, 1, "br=TRUE")
plot(rep(1,300), pch=15, cex=cex, col=seqPal(300,colors=c("darkblue","green","orange")))
text(150, 1, 'col=c("darkblue","green","orange"))')
title(main="berryFunctions::divPal", xpd=NA, outer=TRUE, adj=0.8, line=0.5)
}
