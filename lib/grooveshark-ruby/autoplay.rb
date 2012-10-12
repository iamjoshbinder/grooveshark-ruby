class Grooveshark

	def getAutoplaySong(autoplayState)
		request('getAutoplaySong', {'autoplayState' => autoplayState})
	end 

	def getAutoplayTags
		request('getAutoplayTags')
	end

	def startAutoplayTag(tagID)
		request('startAutoplayTag', {'tagID' => tagID})
	end

	def startAutoplay(artistIDs, songIDs = nil)
		request('startAutoplay', {'artistIDs' => artistIDs, 'songIDs' => songIDs})
	end

	def removeVoteUpAutoplaySong(song, autoplayState)
		request('removeVoteUpAutoplaySong', {'song' => song, 'autoplayState' => autoplayState})
	end

	def voteUpAutoplaySong(song, autoplayState)
		request('voteUpAutoplaySong', {'song' => song, 'autoplayState' => autoplayState})
	end

	def addSongToAutoplay(song, autoplayState)
		request('addSongToAutoplay', {'song' => song, 'autoplayState' => autoplayState})
	end

	def removeSongFromAutoplay(song, autoplayState)
		request('removeSongFromAutoplay', {'song' => song, 'autoplayState' => autoplayState})
	end

	def removeVoteDownAutoplaySong(song, autoplayState)
		request('removeVoteDownAutoplaySong', {'song' => song, 'autoplayState' => autoplayState})
	end

	def voteDownAutoplaySong(song, autoplayState)
		request('voteDownAutoplaySong', {'song' => song, 'autoplayState' => autoplayState})
	end

end