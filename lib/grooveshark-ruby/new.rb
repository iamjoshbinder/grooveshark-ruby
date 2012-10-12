class Grooveshark

	attr_reader :session

	def initialize(key, secret)
		@key = key
		@secret = secret
		@session = startSession
		# @ipaddress = request.remote_ip
	end

end