class Grooveshark

	def registerUser(emailAddress, password, fullName, username = nil, gender = nil, birthDate = nil)
		request('registerUser', {'emailAddress' => emailAddress, 'password' => password, 'fullName' => fullName, 'username' => username, 'gender' => gender, 'birthDate' => birthDate}, true)
	end

end