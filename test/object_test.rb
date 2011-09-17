require 'test_helper'

class CrackTest < Test::Unit::TestCase
  context "blank?" do
    [nil, false, [], {}, ''].each do |object|
      should "be true for #{object.inspect}" do
        object.should be_blank
      end
    end

    [true, [nil], 1, "string", { :key => "value" }].each do |object|
      should "be false for #{object.inspect}" do
        object.should_not be_blank
      end
    end
  end
end
