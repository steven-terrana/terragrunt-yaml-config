# Overview

This repository shows how to read configuration inputs from a YAML file and include them as an input if and only if they're provided.

This is valuable, because otherwise, null values will be passed as inputs - preventing you from using the default values defined in terraform.
