include "global" {
  path = find_in_parent_folders()
  expose = true
}

terraform{
  source = "../../modules/module_A"
}

dependency "B" {
  config_path = "../module_B"
}

locals{
  # parse user configuration file
  config = {
    region = try(include.global.locals.config.region, null)
  }
  # remove nulls from user configuration
  inputs = {
    for field, value in local.config:
      field => value
      if value != null
  }
}

inputs = merge(local.inputs, {
  random = dependency.B.outputs.random
})