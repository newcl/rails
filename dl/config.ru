# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application
# DlAPI.compile!
Rails.application.load_server
