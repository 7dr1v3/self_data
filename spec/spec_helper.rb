# frozen_string_literal: true

require "simplecov"
require "coveralls"

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter,
])

SimpleCov.start { add_filter "spec" }

require "bundler/setup"
require "self_data"
require "pry"

RSpec.configure do |config|
  config.order = :random
  Kernel.srand config.seed
  config.expect_with(:rspec) { |c| c.syntax = :expect }
end
