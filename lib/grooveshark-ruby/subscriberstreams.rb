class Grooveshark

	def getSubscriberStreamKey(songID, country, lowBitrate = nil, uniqueID = nil)
		request('getSubscriberStreamKey', {'songID' => songID, 'country' => country, 'lowBitrate' => lowBitrate, 'uniqueID' => uniqueID})
	end

	def markStreamKeyOver30Secs(streamKey, streamServerID, uniqueID = nil)
		request('markStreamKeyOver30Secs', {'streamKey' => streamKey, 'streamServerID' => streamServerID, 'uniqueID' => uniqueID})
	end

	def markSongComplete(songID, streamKey, streamServerID, autoplayState = nil)
		request('markSongComplete', {'songID' => songID, 'streamKey' => streamKey, 'streamServerID' => streamServerID, 'autoplayState' => autoplayState})
	end
	
end