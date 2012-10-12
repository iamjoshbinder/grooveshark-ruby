class Grooveshark

	def addUserLibrarySongs(songIDs, albumIDs, artistIDs) 
		request('addUserLibrarySongs', {'songIDs' => songIDs, 'albumIDs' => albumIDs, 'artistIDs' => artistIDs})
	end 
	
	def getUserLibrarySongs(limit = nil, page = nil)
		request('getUserLibrarySongs', {'limit' => limit, 'page' => page})['result']
	end

	def removeUserLibrarySongs(songIDs, albumIDs, artistIDs)
		request('removeUserLibrarySongs', {'songIDs' => songIDs, 'albumIDs' => albumIDs, 'artistIDs' => artistIDs})
	end

	def getUserPlaylists(limit = nil)
		request('getUserPlaylists', {'limit' => limit})['result']['playlists']
	end 

	def subscribePlaylist(playlistID)
		request('subscribePlaylist', {'playlistID' => playlistID})
	end

	def getUserPlaylistsSubscribed
		request('getUserPlaylistsSubscribed')['result']['playlists']
	end 

	def getUserFavoriteSongs(limit = nil)
		request('getUserFavoriteSongs', {'limit' => limit})['result']['songs']
	end 

	def removeUserFavoriteSongs(songIDs)
		request('removeUserFavoriteSongs', {'songIDs' => songIDs})
	end 

	def getUserInfo
		request('getUserInfo')['result']
	end 

	def getUserSubscriptionDetails
		request('getUserSubscriptionDetails')['result']
	end

	def addUserFavoriteSong(songID)
		request('addUserFavoriteSong', {'songID' => songID})
	end

	def unsubscribePlaylist(playlistID)
		request('unsubscribePlaylist', {'playlistID' => playlistID})
	end 

	def getPlaylist(playlistID, limit = nil)
		request('getPlaylist', {'playlistID' => playlistID, 'limit' => limit})['result']
	end 

	def getPopularSongsToday(limit = nil)
		request('getPopularSongsToday', {'limit' => limit})['result']['songs']
	end

	def getCountry(ip = nil)
		request('getCountry', {'ip' => ip})['result']
	end 

	def getPopularSongsMonth(limit = nil)
		request('getPopularSongsMonth', {'limit' => limit})['result']['songs']
	end

	def getServiceDescription
		request('getServiceDescription')['result']
	end 

	def pingService
		request('pingService')['result']
	end

	def getPlaylistInfo(playlistID)
		request('getPlaylistInfo', {'playlistID' => playlistID})['result']
	end

	def undeletePlaylist(playlistID)
		request('undeletePlaylist', {'playlistID' => playlistID})
	end

	def createPlaylist(name, songIDs)
		request('createPlaylist', {'name' => name, 'songIDs' => songIDs})
	end

	def renamePlaylist(playlistID, name)
		request('renamePlaylist', {'playlistID' => playlistID, 'name' => name})
	end

	def deletePlaylist(playlistID)
		request('deletePlaylist', {'playlistID' => playlistID})
	end

	def setPlaylistSongs(playlistID, songIDs)
		request('setPlaylistSongs', {'playlistID' => playlistID, 'songIDs' => songIDs})
	end

	def getPlaylistSongs(playlistID, limit = nil)
		request('getPlaylistSongs', {'playlistID' => playlistID, 'limit' => limit})
	end

	def makeToken(username, password)
		Digest::MD5.hexdigest(username.downcase + Digest::MD5.hexdigest(password))
	end

	def getUserIDFromUsername(username)
		request('getUserIDFromUsername', {'username' => username})
	end

	def getAlbumsInfo(albumIDs)
		request('getAlbumsInfo', {'albumIDs' => albumIDs})['result']['albums']
	end

	def getAlbumSongs(albumID, limit = nil)
		request('getAlbumSongs', {'albumID' => albumID, 'limit' => limit})['result']['songs']
	end

	def getArtistsInfo(artistIDs)
		request('getArtistsInfo', {'artistIDs' => artistIDs})['result']['artists']
	end

	def getSongsInfo(songIDs)
		request('getSongsInfo', {'songIDs' => songIDs})['result']['songs']
	end

	def getDoesAlbumExist(albumID)
		request('getDoesAlbumExist', {'albumID' => albumID})['result']
	end

	def getDoesSongExist(songID)
		request('getDoesSongExist', {'songID' => songID})['result']
	end

	def getDoesArtistExist(artistID)
		request('getDoesArtistExist', {'artistID' => artistID})['result']
	end

	def getArtistVerifiedAlbums(artistID)
		request('getArtistVerifiedAlbums', {'artistID' => artistID})['result']['albums']
	end

	def getArtistPopularSongs(artistID)
		request('getArtistPopularSongs', {'artistID' => artistID})['result']['songs']
	end

	def getArtistAlbums(artistID)
		request('getArtistAlbums', {'artistID' => artistID})['result']['albums']
	end

	def authenticate(login, password)
		password = Digest::MD5.hexdigest(password)
		user = request('authenticate', {'login' => login, 'password' => password}, true)['result']
	end

	def authenticateUser(username, token)
		request('authenticateUser', {'username' => username, 'token' => token}, true)['result']
	end

	def authenticateToken(token)
		request('authenticateToken', {'token' => token}, true)['result']
	end

	def logout
		request('logout')
	end

end