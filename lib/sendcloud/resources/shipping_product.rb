module Sendcloud
  class ShippingProductResource < Resource
    def list(**params)
      response = get_request("shipping-products", params: params)
      puts response.inspect
      Collection.from_response(response, key: "shipping-products", type: ShippingMethod)
    end
  end
end
