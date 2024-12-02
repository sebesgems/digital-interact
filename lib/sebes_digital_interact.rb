# frozen_string_literal: true

require_relative 'sebes_digital_interact/version'

require 'sebes_digital_interact/railtie' if defined?(Rails::Railtie)

module SebesDoInteract
  class Error < StandardError; end
  # Your code goes here...
end
