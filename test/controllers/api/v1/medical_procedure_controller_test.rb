require 'test_helper'

class Api::V1::MedicalProcedureControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_v1_medical_procedure_show_url
    assert_response :success
  end

end
