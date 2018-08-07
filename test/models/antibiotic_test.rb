require 'test_helper'

class AntibioticTest < ActiveSupport::TestCase
  test 'can create antibiotic' do
    antibiotic_class = antibiotic_classes(:one)
    antibiotic = antibiotic_class.antibiotics.create(name: 'Antibiotic name')
    assert antibiotic.valid?
    assert_not_nil antibiotic
  end

  test 'validates antibiotic' do
    antibiotic_class = antibiotic_classes(:one)
    antibiotic = antibiotic_class.antibiotics.create(name: 'Amikacin') 
    assert_not antibiotic.valid?

    antibiotic_class = AntibioticClass.new(name: '')
    assert_not antibiotic_class.valid?
  end
end
