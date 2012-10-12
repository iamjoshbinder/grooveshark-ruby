WILL FIX THIS UP IN A FEW HOURS

grooveshark-ruby

a = Grooveshark.new(key, secret)
a.authenticate('username', 'password')
/* do things */
a.logout

Added by myself and required to create a token

makeToken

Working

startSession
authenticate
authenticateUser
authenticateToken
logout
getCountry
getUserPlaylists
getUserPlaylistsSubscribed
getUserFavoriteSongs
removeUserFavoriteSongs
getUserInfo
unsubscribePlaylist
getPlaylist
getServiceDescription
pingService
getPlaylistInfo
getSongIDFromTinysongBase62
getSongURLFromTinysongBase62
getSongURLFromSongID
getPlaylistURLFromPlaylistID
getTinysongURLFromSongID
getUserLibrarySongs
removeUserLibrarySongs
deletePlaylist
getUserIDFromUsername
getAlbumsInfo
getAlbumSongs
getSongsInfo
getDoesAlbumExist
getDoesSongExist
getDoesArtistExist
getArtistPopularSongs
getArtistAlbums

Sorta working

addUserFavoriteSong (sometimes returns false, which seems to be fixed by adding or removing []-brackets)
getPopularSongsToday (setting limit to anything doesn't work)
getPopularSongsMonth (setting limit to anything doesn't work)
createPlaylist (songIDs has to be passed in as an array, i.e. [songIDs], even if it's a single song)
getArtistsInfo (returns an empty array unless argument is passed in as an array)
getArtistVerifiedAlbums (returns a list of albums, most of them with the property `"IsVerified"=>false`??)

Not working

addUserLibrarySongs (returns `"success"=> true` but doesn't actually add songs to anything)
subscribePlaylist (just returns `"success"=> false` with no explanation?)
undeletePlaylist (just returns `"success"=> false` with no explanation?)

Not enough permissions with standard API key

getAutoplaySong
getAutoplayTags
startAutoplayTag
startAutoplay
removeVoteUpAutoplaySong
voteUpAutoplaySong
addSongToAutoplay
removeSongFromAutoplay
removeVoteDownAutoplaySong
voteDownAutoplaySong
getUserPlaylistsByUserID
getUserInfoFromUserID
getSimilarArtists
registerUser
getUserSubscriptionDetails

Not tested

getAutocompleteSearchResults
getSubscriberStreamKey
markStreamKeyOver30Secs
markSongComplete
getTrialInfo
createTrial
setPlaylistSongs
getPlaylistSongs
renamePlaylist