#' Tile object constructor
#' @param min_lat the minimum latitude for a Tile
#' @param max_lat the maximum latitude for a Tile
#' @param min_long the minimum longitude for a Tile
#' @param max_long the maximum longitude for a Tile
#' @param events a data.frame with columns latitude and longitude
#' @details Defines the size and events in a given Tile or regions
#' @return a list with the dimensions of a Tile as well as the
#' events occuring within it
Tile <- function(min_lat, max_lat, min_long, max_long,
                 events)
{
  events <- dplyr::filter(events, events$Longitude >= min_long,
                          events$Longitude <= max_long,
                          events$Latitude >= min_lat,
                          events$Latitude <= max_lat)
  
  out <- list(min_lat=min_lat, max_lat=max_lat,
              min_long=min_long, max_long=max_long,
              events=events)
  return (out)
}

get_events.Tile <- function(tile)
{
  return (tile$events)
}

get_latitudes.Tile <- function(tile)
{
  x <- c(tile$min_lat, tile$max_lat)
  return (x)
}

get_longitudes.Tile <- function(tile)
{
  x <- c(tile$min_long, tile$max_long)
  return (x)
}