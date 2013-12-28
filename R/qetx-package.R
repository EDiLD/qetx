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

#' Benthic community data around an offshore installation
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
#' @docType data
#' @keywords data
#' @name oil_env
#' @rdname oil
#' @seealso \code{\link{oil}}
NULL

#' Acute toxicity values (LC50 and EC50) for taxa exposed to chlorpyrifos.
#' @usage data(ec50)
#' @description 48- to 96-hour laboratory EC50/LC50 values for Chlorpyrifos (CAS 2921882) of 
#' freshwater insects/spiders. The dataset covers 35 taxa with 138 EC50 values.
#' @format A data.frame with 4 columns:
#' \describe{
#' \item{"species"}{species names.}
#' \item{"duration"}{duration of experiment in days.}
#' \item{"endpoint"}{toxicity value.}
#' \item{"conc"}{value of EC50/LC50 in ug/L.}
#' }
#' @source Data was retrieved from ECOTOX database, U.S.Environmental Protection Agency 
#' \url{http://cfpub.epa.gov/ecotox/advanced_query.htm}
#' @note This dataset has been preprocessed - some observations have been removed.
#' @name ec50
#' @docType data
#' @keywords data
NULL

#' Mortality of grass shrimp at various naphthalene concentrations
#' @usage data(naphta)
#' @description In a study of the lethal effects of PAH compounds released during oil spills, Unger et al.
#' (2008) exposed grass shrimp (Palaemonetes pugio) to a range of naphthalene concentrations.
#' @format A data.frame with 3 columns: 
#' \describe{
#' \item{"conc"}{Naphtalene concentration.}
#' \item{"dead"}{Number of dead shrimp}
#' \item{"total"}{Total number of shrimp exposed.}
#' }
#' @references Unger, M.A., M.C. Newman, and G.G. Vadas. Predicting survival of grass shrimp, Palamonetes pugio, exposed to naphthalene, fluorine, and dibenzothiophene. Environ. Toxicol. Chem. 27(8):1802–1808 (2008).
#' @name naphta
#' @docType data
#' @keywords data
NULL