class Grooveshark

	def getSongIDFromTinysongBase62(base62)
		request('getSongIDFromTinysongBase62', {'base62' => base62})
	end

end