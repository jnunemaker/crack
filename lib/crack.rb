module Crack
  VERSION = "0.2.0"
  class ParseError < StandardError; end
end

require 'crack/core_extensions'
require 'crack/json'
require 'crack/xml'