# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Delayed::Worker.delay_jobs = false if Rails.env.development?
