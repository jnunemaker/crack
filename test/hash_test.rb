require 'test_helper'

class CrackTest < Test::Unit::TestCase
  context "to_xml_attributes" do
    setup do
      @hash = { :one => "ONE", "two" => "TWO", :three => "it \"should\" work" }
    end
    
    should "turn the hash into xml attributes" do
      attrs = @hash.to_xml_attributes
      attrs.should =~ /one="ONE"/m
      attrs.should =~ /two="TWO"/m
      attrs.should =~ /three="it &quot;should&quot; work"/m
    end

    should 'preserve _ in hash keys' do
      attrs = {
        :some_long_attribute => "with short value",
        :crash               => :burn,
        :merb                => "uses extlib"
      }.to_xml_attributes

      attrs.should =~ /some_long_attribute="with short value"/
      attrs.should =~ /merb="uses extlib"/
      attrs.should =~ /crash="burn"/
    end
  end
end
