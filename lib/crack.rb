module Crack
  VERSION = "0.3.2"
  class ParseError < StandardError; end
end

require 'crack/util'
require 'crack/json'
require 'crack/xml'
