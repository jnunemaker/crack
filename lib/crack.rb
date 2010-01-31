module Crack
  VERSION = "0.1.6".freeze
  class ParseError < StandardError; end
end

require 'crack/core_extensions'
require 'crack/json'
require 'crack/xml'