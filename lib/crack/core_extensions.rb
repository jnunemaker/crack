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

class Hash #:nodoc:
  # @return <String> The hash as attributes for an XML tag.
  #
  # @example
  #   { :one => 1, "two"=>"TWO" }.to_xml_attributes
  #     #=> 'one="1" two="TWO"'
  def to_xml_attributes
    map do |k,v|
      %{#{Crack::Util.snake_case(k.to_s).sub(/^(.{1,1})/) { |m| m.downcase }}="#{v.to_s.gsub('"', '&quot;')}"}
    end.join(' ')
  end
end
