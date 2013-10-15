#' Redundancy Analysis (RDA) per factor level
#' 
#' This function runs a RDA on each timepoint. 
#' Signuificance of contraining terms is assessed via permutaions.
#' This is mainly a wrapper around \code{\link{rda}} and \code{\link{anova.cca}}.
#' 
#' @import vegan
#' 
#' @param response Multivariate response data.
#' @param treatment A variable for treatments.
#' @param time A factor defining the observation times
#' 
#' @return A list of lenght of time-points. Each list entry holds the resulting
#' rda-model ($rda) or the result of a permutation test ($anova).
#' 
#' @author Eduard Szoecs \email{szoe8822@@uni-landau.de}
#' 
#' @seealso \code{\link{prc}} \code{\link{anova.cca}} \code{\link{rda}}
#' 
#' @examples
#' # Chlorpyrifos experiment and experimental design
#' data(pyrifos)
#' week <- gl(11, 12, labels=c(-4, -1, 0.1, 1, 2, 4, 8, 12, 15, 19, 24))
#' dose <- factor(rep(c(0.1, 0, 0, 0.9, 0, 44, 6, 0.1, 44, 0.9, 0, 6), 11))
#' # PRC
#' mod <- prc(pyrifos, dose, week)
#' # RDA per week, using ln-transformed dose as continuous explaing variable
#' mod_pw <- rda_per_time(pyrifos, log(10*as.numeric(as.character(dose)) + 1), week)
#' # extract p-values for each week
#' sapply(mod_pw, function(x) x$anova[1, 5])


rda_per_time <-function(response, treatment, time){
  # have to pass constraints to .GlobalEnv (scoping issue in anova.cca) 
  df <- data.frame(treatment = treatment, time = time, stringsAsFactors=FALSE)
  assign('df', df, envir = .GlobalEnv)
  
  out <- NULL
  for (i in levels(time)) {
    out[[i]]$mod <- rda(response[time == i, ] ~ treatment[time==i], data=df)
    out[[i]]$anova <- anova(out[[i]]$mod , by = 'terms')
  }
  # remove constraints from .GlobalEnv
  rm('df', envir = .GlobalEnv)
  return(out)
}