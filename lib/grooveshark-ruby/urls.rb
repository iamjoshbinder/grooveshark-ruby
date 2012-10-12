class Grooveshark

	def getSongURLFromTinysongBase62(base62)
		request('getSongURLFromTinysongBase62', {'base62' => base62})['result']['url']
	end

	def getSongURLFromSongID(songID)
		request('getSongURLFromSongID', {'songID' => songID})['result']['url']
	end

	def getPlaylistURLFromPlaylistID(playlistID)
		request('getPlaylistURLFromPlaylistID', {'playlistID' => playlistID})['result']['url']
	end

	def getTinysongURLFromSongID(songID)
		request('getTinysongURLFromSongID', {'songID' => songID})['result']['url']
	end

end