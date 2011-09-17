require 'uri'

class Object #:nodoc:
  # @return <TrueClass, FalseClass>
  #
  # @example [].blank?         #=>  true
  # @example [1].blank?        #=>  false
  # @example [nil].blank?      #=>  false
  #
  # Returns true if the object is nil or empty (if applicable)
  def blank?
    respond_to?(:empty?) ? empty? : !self
  end unless method_defined?(:blank?)
end # class Object
