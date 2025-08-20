# solo_render.R - Load world data for individual QMD files
# Loads the 'world' object from _world_data.rds.
# Assumes the project pre-render script (_scripts/setup.R) has ensured its freshness.

# message("Demo QMD Load: Attempting to load _world_data.rds...") # For debugging

library(here) # Ensure 'here' is available for QMD files

rds_file_to_load <- here::here("_world_data.rds")

if (file.exists(rds_file_to_load)) {
  world <- readRDS(rds_file_to_load) # Assign to 'world' in the QMD's R environment
  # message("Demo QMD Load: 'world' object successfully loaded from RDS.")
} else {
  stop(paste0("CRITICAL ERROR in QMD setup: _world_data.rds not found at '",
              rds_file_to_load,
              "'. The project's pre-render script (_scripts/setup.R) likely failed or was not executed. ",
              "The 'world' object cannot be loaded. Check Quarto console output for pre-render errors."))
}