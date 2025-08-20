# _scripts/setup.R - Project Pre-render Script for Cyber Dimensions Demo

message("Demo Pre-render: _scripts/setup.R invoked.")

# Ensure libraries are available
if (!requireNamespace("yaml", quietly = TRUE)) {
  warning("Demo Pre-render: 'yaml' package not found. Attempting to install.")
  install.packages("yaml")
}
if (!requireNamespace("here", quietly = TRUE)) {
  warning("Demo Pre-render: 'here' package not found. Attempting to install.")
  install.packages("here")
}
library(yaml)
library(here)

yaml_file <- here::here("_worldbuilding.yml")
rds_file <- here::here("_world_data.rds") # RDS in project root

process_yaml_and_save_rds <- TRUE # Assume we need to process by default

# Check if RDS is up-to-date before processing YAML
if (file.exists(rds_file) && file.exists(yaml_file)) {
  if (file.mtime(yaml_file) <= file.mtime(rds_file)) {
    message(paste("Demo Pre-render: _world_data.rds at", rds_file, "is already up-to-date with _worldbuilding.yml. Skipping YAML processing and RDS save."))
    process_yaml_and_save_rds <- FALSE
  } else {
    message("Demo Pre-render: _worldbuilding.yml is newer than _world_data.rds. Will reprocess.")
  }
} else if (!file.exists(yaml_file)) {
  # Critical: YAML file itself is missing
  stop(paste("Demo Pre-render CRITICAL ERROR: _worldbuilding.yml not found at", yaml_file, ". Halting build."))
} else {
  # RDS doesn't exist, or YAML exists but RDS doesn't - definitely need to process
  message("Demo Pre-render: _world_data.rds not found or _worldbuilding.yml is present. Will process YAML.")
}

if (process_yaml_and_save_rds) {
  message("Demo Pre-render: Processing _worldbuilding.yml...")
  
  world_data_from_yaml <- NULL
  tryCatch({
    world_data_from_yaml <- yaml::read_yaml(yaml_file)
  }, error = function(e) {
    stop(paste("Demo Pre-render CRITICAL ERROR: Failed to read or parse _worldbuilding.yml:", e$message))
  })
  
  if (is.null(world_data_from_yaml) || is.null(world_data_from_yaml$world)) {
    stop("Demo Pre-render CRITICAL ERROR: _worldbuilding.yml is empty, does not contain a 'world' key, or failed to parse correctly.")
  }
  world <- world_data_from_yaml$world
  
  message("Demo Pre-render: Calculating derived world variables...")
  if (!is.null(world$this_year) && is.numeric(world$this_year)) {
    base_year <- world$this_year
    message(paste("Demo Pre-render: Base year 'this_year' is", base_year))
    for (i in 1:25) {
      var_name <- paste0("year_plus_", i)
      world[[var_name]] <- base_year + i
    }
    message("Demo Pre-render: Calculated 'year_plus_1' through 'year_plus_25'.")
    
    # Calculate year_minus variables for referencing previous years
    for (i in 1:5) {
      var_name <- paste0("year_minus_", i)
      world[[var_name]] <- base_year - i
    }
    message("Demo Pre-render: Calculated 'year_minus_1' through 'year_minus_5'.")
  } else {
    warning("Demo Pre-render WARNING: 'this_year' not found in _worldbuilding.yml or is not numeric. Cannot calculate dynamic future years.")
  }
  
  # Create composite fullname variables from separated name components
  message("Demo Pre-render: Creating composite name variables...")
  
  # IT Manager
  if (!is.null(world$it_manager_name_first) && !is.null(world$it_manager_name_last)) {
    world$it_manager_fullname <- paste(world$it_manager_name_first, world$it_manager_name_last)
    world$it_manager_formal <- paste(world$it_manager_name_salutation, world$it_manager_name_last)
    world$it_manager_email <- paste0(tolower(world$it_manager_name_first), ".", 
                                    tolower(world$it_manager_name_last), "@", world$utility_email_domain)
  }
  
  # Power Operator
  if (!is.null(world$power_operator_name_first) && !is.null(world$power_operator_name_last)) {
    world$power_operator_fullname <- paste(world$power_operator_name_first, world$power_operator_name_last)
    world$power_operator_formal <- paste(world$power_operator_name_salutation, world$power_operator_name_last)
    world$power_operator_email <- paste0(tolower(world$power_operator_name_first), ".", 
                                        tolower(world$power_operator_name_last), "@", world$utility_email_domain)
  }
  
  # City Manager
  if (!is.null(world$city_manager_name_first) && !is.null(world$city_manager_name_last)) {
    world$city_manager_fullname <- paste(world$city_manager_name_first, world$city_manager_name_last)
    world$city_manager_formal <- paste(world$city_manager_name_salutation, world$city_manager_name_last)
    world$city_manager_email <- paste0(tolower(world$city_manager_name_first), ".", 
                                      tolower(world$city_manager_name_last), "@", world$city_email_domain)
  }
  
  # Vendor Technician
  if (!is.null(world$vendor_technician_name_first) && !is.null(world$vendor_technician_name_last)) {
    world$vendor_technician_fullname <- paste(world$vendor_technician_name_first, world$vendor_technician_name_last)
    world$vendor_technician_formal <- paste(world$vendor_technician_name_salutation, world$vendor_technician_name_last)
  }
  
  # Reporter
  if (!is.null(world$reporter_name_first) && !is.null(world$reporter_name_last)) {
    world$reporter_fullname <- paste(world$reporter_name_first, world$reporter_name_last)
    world$reporter_formal <- paste(world$reporter_name_salutation, world$reporter_name_last)
    world$reporter_email <- paste0("j", tolower(world$reporter_name_last), "@", tolower(gsub(" ", "", gsub("The ", "", world$local_newspaper_name))), ".com")
  }
  
  # Advocacy Spokesperson
  if (!is.null(world$advocacy_spokesperson_name_first) && !is.null(world$advocacy_spokesperson_name_last)) {
    world$advocacy_spokesperson_fullname <- paste(world$advocacy_spokesperson_name_first, world$advocacy_spokesperson_name_last)
    world$advocacy_spokesperson_formal <- paste(world$advocacy_spokesperson_name_salutation, world$advocacy_spokesperson_name_last)
  }
  
  # Create composite location variables
  world$city_state <- paste0(world$city_name, ", ", world$state_name)
  world$city_state_abbr <- paste0(world$city_name, ", ", world$state_abbr)
  
  # Create attacker IP list for easy referencing
  world$attacker_ips_list <- paste(c(world$attacker_ip_1, world$attacker_ip_2, world$attacker_ip_3), collapse=", ")
  
  message("Demo Pre-render: Composite variables created successfully.")
  
  message(paste("Demo Pre-render: Saving augmented world data to", rds_file))
  tryCatch({
    saveRDS(world, file = rds_file)
    message("Demo Pre-render: World data successfully processed and saved to RDS.")
  }, error = function(e) {
    stop(paste("Demo Pre-render CRITICAL ERROR: Failed to save world data to RDS:", e$message))
  })
}

message("Demo Pre-render: _scripts/setup.R finished.")