require 'test_helper'

class Managements::TeamsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get managements_teams_index_url
    assert_response :success
  end

  test "should get show" do
    get managements_teams_show_url
    assert_response :success
  end

  test "should get new" do
    get managements_teams_new_url
    assert_response :success
  end

end
