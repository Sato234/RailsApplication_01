# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
RailsApplication1::Application.initialize!

# MyLibs
require 'module/common'

#OtherLibs
require 'will_paginate'