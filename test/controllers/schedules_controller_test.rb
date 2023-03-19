require "test_helper"

class SchedulesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/schedules.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Schedule.count, data.length
  end

  test "create" do
    assert_difference "Schedule.count", 1 do
      post "/schedules.json", params: { plant_id: Plant.first.id, user_id: User.first.id, image_url: "test.jpg", watering_start_date: "2023-03-19" }
      assert_response 200
    end
  end
end
