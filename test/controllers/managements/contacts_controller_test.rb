require 'test_helper'

class Managements::ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get managements_contacts_index_url
    assert_response :success
  end

  test "should get show" do
    get managements_contacts_show_url
    assert_response :success
  end

end
