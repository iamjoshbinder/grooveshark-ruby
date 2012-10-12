class Grooveshark

	def getAutocompleteSearchResults(query, type, limit = false)
		request('getAutocompleteSearchResults', {'query' => query, 'type' => type, 'limit' => limit})
	end # haven't tested

end