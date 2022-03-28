module Sendcloud
  class ShippingProductResource < Resource
    def list(**params)
      response = get_request("shipping_products", params: params)
      puts response.inspect
      Collection.from_response(response, key: "shipping_products", type: ShippingMethod)
    end
  end
end
