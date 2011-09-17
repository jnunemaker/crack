module Crack
  module Util
    def snake_case(str)
      return str.downcase if str =~ /^[A-Z]+$/
      str.gsub(/([A-Z]+)(?=[A-Z][a-z]?)|\B[A-Z]/, '_\&') =~ /_*(.*)/
      return $+.downcase
    end

    extend self
  end
end