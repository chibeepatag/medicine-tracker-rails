require 'test_helper'

class AntibioticClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @antibiotic_class = antibiotic_classes(:one)
  end

  test "should get index" do
    get antibiotic_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_antibiotic_class_url
    assert_response :success
  end

  test "should create antibiotic_class" do
    assert_difference('AntibioticClass.count') do
      post antibiotic_classes_url, params: { antibiotic_class: { class_name: @antibiotic_class.class_name } }
    end

    assert_redirected_to antibiotic_class_url(AntibioticClass.last)
  end

  test "should show antibiotic_class" do
    get antibiotic_class_url(@antibiotic_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_antibiotic_class_url(@antibiotic_class)
    assert_response :success
  end

  test "should update antibiotic_class" do
    patch antibiotic_class_url(@antibiotic_class), params: { antibiotic_class: { class_name: @antibiotic_class.class_name } }
    assert_redirected_to antibiotic_class_url(@antibiotic_class)
  end

  test "should destroy antibiotic_class" do
    assert_difference('AntibioticClass.count', -1) do
      delete antibiotic_class_url(@antibiotic_class)
    end

    assert_redirected_to antibiotic_classes_url
  end
end
