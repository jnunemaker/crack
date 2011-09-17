module Crack
  VERSION = "0.1.8"
  class ParseError < StandardError; end
end

require 'crack/core_extensions'
require 'crack/json'
require 'crack/xml'