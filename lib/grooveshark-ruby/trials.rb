class Grooveshark

	def getTrialInfo(uniqueID)
		request('getTrialInfo', {'uniqueID' => uniqueID})
	end

	def createTrial(uniqueID)
		request('createTrial', {'uniqueID' => uniqueID})
	end

end