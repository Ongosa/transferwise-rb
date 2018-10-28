module TransferWise
  class Transfer < APIResource
    def create_payment(headers = {})
      url = self.class.resource_url(id) + "/payments"
      response = TransferWise::Request.request(:post, url, { type: 'BALANCE' }, headers)
      response['status'] == 'COMPLETED'
    end
  end
end
