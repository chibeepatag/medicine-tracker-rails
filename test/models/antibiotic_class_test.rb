require 'test_helper'

class AntibioticClassTest < ActiveSupport::TestCase
  test 'can create antibiotic class' do
    antibiotic_class = AntibioticClass.create(name: 'TestAntibioticClass')
    assert antibiotic_class.valid?
    assert_not_nil antibiotic_class
  end

  test 'validates antibiotic class' do
    antibiotic_class = AntibioticClass.new(name: 'Aminoglycosides')
    assert_not antibiotic_class.valid?

    antibiotic_class = AntibioticClass.new(name: '')
    assert_not antibiotic_class.valid?
  end
end
