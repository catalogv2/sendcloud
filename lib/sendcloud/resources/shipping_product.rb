module Sendcloud
  class ShippingProductResource < Resource
    def list(**params)
      response = get_request("v2/shipping_products", params: params)
      puts response.inspect
      Collection.from_response(response, key: "shipping_products", type: ShippingMethod)
    end

    def retrieve(shipping_method_id:)
      ShippingMethod.new get_request("shipping_products/#{shipping_method_id}").body.dig("shipping_product")
    end
  end
end
