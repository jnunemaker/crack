require 'test_helper'
require 'yaml'

class PsychJsonTest < Test::Unit::TestCase
  def setup
    @original_yamler = YAML::ENGINE.yamler
    YAML::ENGINE.yamler = 'psych'
  end

  should "raise error for failed decoding" do
    lambda {
      Crack::JSON.parse(%({: 1}))
    }.should raise_error(Crack::ParseError)
  end

  def teardown
    YAML::ENGINE.yamler = @original_yamler
  end
end
