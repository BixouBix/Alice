task fetch_db: :environment do
  Institution.destroy_all
  token = Finicity::Client.token

  uri = URI.parse("#{Finicity::BASE_PATH}institution/v2/institutions")

  request = Net::HTTP::Get.new(uri)
  request["Finicity-App-Key"] = Finicity::FINICITY_APP_KEY
  request["Finicity-App-Token"] = token
  request["Accept"] = "application/json"

  req_options = {
    use_ssl: uri.scheme == "https",
  }

  response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
    http.request(request)
  end

  JSON.parse(response.body)['institutions'].each do |institution|
    institution['klass'] = institution.delete('class')
    institution['finicityId'] = institution.delete('id')
    unless institution['address'].nil?
      institution['city'] = institution['address']['city']
      institution['state'] = institution['address']['state']
      institution['country'] = institution['address']['country']
      institution['pc'] = institution['address']['postalCode']
      institution['address_line_1'] = institution['address']['addressLine1']
      institution['address_line_2'] = institution['address']['addressLine2']
    end
    institution.delete('address')
    Institution.create!(institution)
  end
end
