class Grooveshark

	def request(method, params = {}, secure = false, session = @session)
		data = {
			"method" => method,
			"parameters" => params,
			"header" => { "wsKey" => @key,
						  "sessionID" => session
						}
		}.to_json
		sig = OpenSSL::HMAC.hexdigest(OpenSSL::Digest::MD5.new, @secret, data)
		url = "#{secure ? 'https' : 'http'}://api.grooveshark.com/ws3.php?sig=#{sig}"
		response = RestClient.post(url, data)
		JSON.parse(response)
	end

end