class Grooveshark

	def getUserPlaylistsByUserID(userID, limit = nil)
		request('getUserPlaylistsByUserID', {'userID' => userID, 'limit' => limit})
	end

	def getUserInfoFromUserID(userID)
		request('getUserInfoFromUserID', {'userID' => userID})
	end

end