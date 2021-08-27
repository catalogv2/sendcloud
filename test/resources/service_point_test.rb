require "test_helper"

class ServicePointResourceTest < Minitest::Test
  def test_list
    stub = stub_request("service-points", response: stub_response(fixture: "service_points/list"))
    client = Sendcloud::ServicePointClient.new(api_key: "key", adapter: :test, stubs: stub)
    service_points = client.service_point.list

    assert_equal Sendcloud::Collection, service_points.class
    assert_equal Sendcloud::ServicePoint, service_points.data.first.class
  end
end
