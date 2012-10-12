class Grooveshark

	def getSongSearchResults(query, country, limit = nil, offset = nil)
		request('getSongSearchResults', { 'query' => query, 'country' => country, 'limit' => limit, 'offset' => offset })['result']['songs']
	end

	def getPlaylistSearchResults(query, limit = false, offset = false)
		request('getPlaylistSearchResults', { 'query' => query, 'limit' => limit, 'offset' => offset })['result']['playlists']
	end

	def getAlbumSearchResults(query, limit = false, offset = false)
		request('getAlbumSearchResults', { 'query' => query, 'limit' => limit, 'offset' => offset })['result']['albums']
	end

	def getArtistSearchResults(query, limit = false, offset = false)
		request('getArtistSearchResults', { 'query' => query, 'limit' => limit, 'offset' => offset })['result']['artists']
	end
	
end