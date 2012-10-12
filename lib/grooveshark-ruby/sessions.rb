class Grooveshark

	def startSession
		request('startSession', {}, true, nil)['result']['sessionID']
	end

end