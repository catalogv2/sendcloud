module Sendcloud
  class ServicePointResource < Resource
    def list(**params)
      response = get_request("service-points", params: params)
      Collection.from_response(response, key: nil, type: ServicePoint)
    end
  end
end
