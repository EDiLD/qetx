#' @name qetx-package
#' @aliases qetx
#' @docType package
#' @title Quantitative Ecotoxicology with R
#' @author Eduard Szoecs \email{szoe8822@@uni-landau.de}
#' @keywords package
NULL
#' Sulfate concentrations (mg/L) measured during a routine water quality survey 
#' of the Savannah River (South Carolina). 
#' @usage data(so4)
#' @format A vector with 21 measurements.
#' @name so4
#' @docType data
#' @keywords data
NULL
#' Species sampled at eight sites around an outfall. 
#' Site locations are designated as kilometers upstream (-) or downstream (+) of the outfall.
#' @usage data(abu)
#' @format A data.frame with 8 observations of abundance of 10 Species.
#' @name abu
#' @docType data
#' @keywords data
NULL
#' Dead of mosquitofish at different NaCl concentrations
#' @description Newman and Aplin (1992) exposed mosquitofish (\emph{Gambusia holbrooki}) to a series of NaCl concentrations for 96h.
#' @usage data(salt)
#' @format A data.frame with 3 columns: 
#' \describe{
#' \item{"dead"}{Number of fish died}
#' \item{"total"}{Total number of fish exposed.}
#' \item{"conc"}{NaCl concentration.}
#' }
#' @references Newman, M.C. and M. Aplin.  1992.  Enhancing toxicity data interpretation and prediction of ecological risk with survival time modeling: An illustration using sodium chloride toxicity to mosquitofish (\emph{Gambusia holbrooki}).  Aquatic Toxicol. 23:85-96.  
#' @name salt
#' @docType data
#' @keywords data
NULL
#' Fathead minnow (\emph{Pimephales promelas}) larval survival data for sodium pentachlorophenol (NaPCP) exposure
#' @usage data(napcp)
#' @format A data.frame with 2 columns:
#' \describe{
#' \item{"arc"}{numeric; Proportion of fish alive at the end of experiment. Proportions have been arcsine square root transformed.}
#' \item{"conc"}{factor; NaPCP concentration.}
#' }
#' @note Proportions have been 1.5708 - arcsin(sqrt(1/(4*x))) transformed.
#' @references Weber et al. 1989. Short-term methods for estimating the chronic toxicity of effluents and receiving waters to freshwater organisms. EPA.
#' @name napcp
#' @docType data
#' @keywords data
NULL
#' Benthic community data around a offshore installation
#' @description Samples were collected at sampling stations with varying distanced from installation along the transects.
#' For environmental (and distance) data see \code{\link{oil_env}}.
#' @usage data(oil)
#' @format A dataframe of observations of 50 species at 20 sites.
#' @source Data was retrieved from the UK Benthos Database,Oil & Gas UK , http://www.oilandgasuk.co.uk/knowledgecentre/uk_benthos_database.cfm
#' @name oil
#' @docType data
#' @keywords data
#' @rdname oil
#' @seealso \code{\link{oil_env}}
NULL
#' Corresponding environmental data to oil data set
#' @usage data(oil_env)
#' @format A dataframe of 20 observations of 22 variables:
#' \describe{
#' \item{distance}{distance from installation in m.}
#' \item{site}{A sampling site identifier.}
#' \item{silt_clay}{Silt/clay content of the sediment as percent.}
#' \item{organic}{Organic content of the sedimentas percent.}
#' \item{tot_hc_gc}{Total Hydrocarbon determined by gas chromatography.}
#' \item{naph_ult}{Naphthalenes (via ultrasonification).}
#' \item{phen_ult}{Phenanthrenes (via ultrasonification).}
#' \item{dibenz_ult}{Diabenzothiophenes (via ultrasonification).}
#' \item{pah_4r_202}{Four ring compounds (mass 202).}
#' \item{pah_4r_228}{Four ring compounds (mass 228).}
#' \item{pah_5r_252}{Five ring compounds (mass 252).}
#' \item{pah_6r_276}{Six ring compounds (mass 2575).}
#' \item{ba_tot}{Total Barium concentration.}
#' \item{cd}{Cadmium.}
#' \item{cr}{Chromium.}
#' \item{cu}{Copper.}
#' \item{ni}{Nickel.}
#' \item{pb}{Lead.}
#' \item{va}{Vanadium.}
#' \item{zn}{Zinc.}
#' \item{fe}{Iron.}
#' \item{hg}{mercury}
#' }
#' @source Data was retrieved from the UK Benthos Database,Oil & Gas UK , http://www.oilandgasuk.co.uk/knowledgecentre/uk_benthos_database.cfm
#' @name oil_env
#' @docType data
#' @keywords data
#' @seealso \code{\link{oil}}
NULL