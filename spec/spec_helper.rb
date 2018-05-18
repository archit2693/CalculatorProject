require "bundler/setup"
require 'simplecov'
SimpleCov.start
require_relative "../lib/calculator/calculator_utility"
require_relative "../lib/calculator/command_parser"
require_relative "../lib/calculator/command_runner"
require_relative "../lib/calculator/validity_checker"


RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
