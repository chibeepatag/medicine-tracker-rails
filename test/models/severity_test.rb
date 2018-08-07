require 'test_helper'

class SeverityTest < ActiveSupport::TestCase
  test "create severity" do
  	severity = Severity.create(name: 'Mild')
  end
end
