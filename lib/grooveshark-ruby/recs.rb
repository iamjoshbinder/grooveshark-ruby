class Grooveshark

	def getSimilarArtists(artistID, limit = nil, page = nil)
		request('getSimilarArtists', {'artistID' => artistID, 'limit' => limit, 'page' => page})
	end

end