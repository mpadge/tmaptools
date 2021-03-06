% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/to_raster.R
\name{points_to_raster}
\alias{points_to_raster}
\title{Bin spatial points to a raster}
\usage{
points_to_raster(shp, nrow = NA, ncol = NA, N = 250000, by = NULL,
  to.Raster = FALSE)
}
\arguments{
\item{shp}{shape object. a \code{\link[sp:SpatialPointsDataFrame]{SpatialPoints(DataFrame)}}, a \code{\link[sp:SpatialGridDataFrame]{SpatialGrid(DataFrame)}}, or an \code{sf} object that can be coerced as such.}

\item{nrow}{number of raster rows. If \code{NA}, it is automatically determined by \code{N} and the aspect ratio of \code{shp}.}

\item{ncol}{number of raster columns. If \code{NA}, it is automatically determined by \code{N} and the aspect ratio of \code{shp}.}

\item{N}{preferred number of raster cells.}

\item{by}{name of a data variable which should be a factor. The points are split and counted according to the levels of this factor.}

\item{to.Raster}{logical; should the output be a \code{\link[raster:Raster-class]{Raster}} object (\code{TRUE}), or a \code{\link[sp:SpatialGridDataFrame]{SpatialGridDataFrame}} (\code{FALSE}). If \code{TRUE}, a \code{RasterBrick} is returned when \code{by} is specified, and a \code{RasterLayer} when \code{by} is unspecified.}
}
\value{
A \code{\link[sp:SpatialGridDataFrame]{SpatialGridDataFrame}}, or a \code{\link[raster:Raster-class]{Raster}} object when (\code{to.Raster=TRUE})
}
\description{
Bin spatial points to a raster. For each raster cell, the number of points are counted. Optionally, a factor variable can be specified by which the points are counts are split.
}
\details{
This function is a wrapper around \code{\link[raster:rasterize]{rasterize}}.
}
\examples{
\dontrun{
if (require(tmap)) {
    data(NLD_muni, NLD_prov)

    # sample points (each point represents 1000 people)
    NLD_muni_points <- sample_dots(NLD_muni, vars = "population",
        w=1000, convert2density = TRUE)

    # dot map
    tm_shape(NLD_muni_points) + tm_dots()

    # convert points to raster
    NLD_rst <- points_to_raster(NLD_muni_points, N = 1e4)

    # plot raster
    tm_shape(NLD_rst) +
    	tm_raster() +
    tm_shape(NLD_prov) +
    	tm_borders() +
    tm_format_NLD() + tm_style_grey()
}
}
}
\seealso{
\code{\link{poly_to_raster}}
}
