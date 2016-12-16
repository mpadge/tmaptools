#' Thematic Map Tools
#'
#' Thematic maps are geographical maps in which spatial data distributions are visualized. This package offers a set of handy tool functions for reading and processing spatial data.
#'
#' This page provides a brief overview of all package functions.
#'
#' @section Handy tool functions:
#' \tabular{ll}{
#' \code{\link{bb}}\tab To create, extract or modify a bounding box \cr
#' \code{\link{geocode_OSM}}\tab To get location from an address description \cr
#' \code{\link{rev_geocode_OSM}}\tab To get address description from a location \cr
#' \code{\link{get_asp_ratio}}\tab To get the aspect ratio of a shape object \cr
#' \code{\link{get_IDs}}\tab To get ID values of a shape object \cr
#' \code{\link{append_data}}\tab To append a data frame to a shape object \cr
#' \code{\link{approx_areas}}\tab To approximate area sizes of polygons \cr
#' \code{\link{calc_densities}}\tab To calculate density values \cr
#' \code{\link{get_projection}}\tab To get the map projection \cr
#' \code{\link{set_projection}}\tab To set the map projection \cr
#' \code{\link{split}}\tab To split a shape object \cr
#' \code{\link{sbind}}\tab To bind shape objects \cr
#' \code{\link{crop_shape}}\tab To crop shape objects \cr
#' \code{\link{map_coloring}}\tab To color polygons with different colors for adjacent polygons \cr
#' --------------------------- \tab --------------------------------------------------------------------------------------------------- \cr
#' }
#'
#' @section Statistical transformation functions:
#' \tabular{ll}{
#' \code{\link{smooth_map}}\tab To create a smooth map (raster, contour lines and kernel density polygons) \cr
#' \code{\link{smooth_raster_cover}}\tab To create a smooth cover of a raster object \cr
#' \code{\link{sample_dots}}\tab To sample dots from polygons \cr
#' \code{\link{points_to_raster}}\tab To bin spatial points to a raster \cr
#' \code{\link{poly_to_raster}}\tab To convert polygons to a raster \cr
#' --------------------------- \tab --------------------------------------------------------------------------------------------------- \cr
#' }
#'
#' @section Input and output functions:
#' \tabular{ll}{
#' \code{\link{read_shape}}\tab To read a shape object \cr
#' \code{\link{write_shape}}\tab To write a shape object \cr
#' \code{\link{read_GPX}}\tab To read a GPX file \cr
#' \code{\link{read_osm}}\tab To read Open Street Map data \cr
#' --------------------------- \tab --------------------------------------------------------------------------------------------------- \cr
#' }
#'
#' @name tmap-package
#' @aliases tmap
#' @docType package
#' @author Martijn Tennekes \email{mtennekes@@gmail.com}
#' @keywords GIS, thematic maps, spatial data
NULL