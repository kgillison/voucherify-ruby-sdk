require 'uri'

module Voucherify
  module Service
    class Customers
      attr_reader :client

      def initialize(client)
        @client = client
      end

      def create_customer(customer)
        @client.post('/customers/', customer.to_json)
      end

      def get_customer(customer_id)
        @client.get('/customers/' + customer_id)
      end

      def update_customer(customer)
        @client.put('/customers/' + (customer['id'] || customer[:id]), customer.to_json)
      end

      def delete_customer(customer_id)
        @client.delete('/customers/' + customer_id)
      end
    end
  end
end