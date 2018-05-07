require 'test_helper'

class ReportControllerTest < ActionDispatch::IntegrationTest
  test "should get email" do
    get report_email_url
    assert_response :success
  end

end
