require 'test_helper'

class Managments::ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get managments_contacts_index_url
    assert_response :success
  end

  test "should get show" do
    get managments_contacts_show_url
    assert_response :success
  end

end
