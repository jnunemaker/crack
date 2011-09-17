module Crack
  VERSION = "0.3.0"
  class ParseError < StandardError; end
end

require 'crack/util'
require 'crack/json'
require 'crack/xml'