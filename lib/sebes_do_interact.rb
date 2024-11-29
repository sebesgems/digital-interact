# frozen_string_literal: true

require_relative 'sebes_do_interact/version'

require 'my_gem/railtie' if defined?(Rails::Railtie)

module SebesDoInteract
  class Error < StandardError; end
  # Your code goes here...
end
