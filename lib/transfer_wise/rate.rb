module TransferWise
  class Rate < APIResource
    def self.get(params, headers = {})
      url = collection_url + "?from=#{params[:from]}&to=#{params[:to]}"
      response = TransferWise::Request.request(:get, url, {}, headers)
      convert_to_transfer_wise_object(response)
    end
  end
end
