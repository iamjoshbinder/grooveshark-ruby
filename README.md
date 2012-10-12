# Grooveshark Ruby

Grooveshark Ruby is an unofficial wrapper for the [Grooveshark API](http://developers.grooveshark.com/docs/public_api/v3/).

## Getting started

You can install Grooveshark Ruby with the following command,

`gem install grooveshark-ruby`

Before you can invoke any of the methods, make sure to require the gem,

`require 'grooveshark-ruby'`

Most of the commands seen here require an API key which can be requested through the website. Please refer to the API for information on which methods require a key. Start a new session with,

`derp = Grooveshark.new(key, secret)`

If you do not have a key or secret, simply use `''` for both of them. Again, I have no idea which methods require a key, so you're best to simply request one. There are 3 different ways to authenticate a user, though the website seems to recommend:

`derp.authenticate('username', 'password')`

From this point you can make requests to the Grooveshark server. For example,

`derp.getPopularSongsToday`

will return a list of the day's popular songs.

As always, don't forget to logout,

`a.logout`


## Does it work or not? A list of methods

The lists below are a near-complete collection of methods offered by the [API](http://developers.grooveshark.com/docs/public_api/v3/). The method names are verbatim with the API page. Methods that aren't included on the website are not included in this gem for now - presumably because they don't work properly. The full list can be found by invoking `getServiceDescription`.

For more information on the methods and their parameters, please refer to the API.

#### Added by myself and required to create a token

- makeToken(username, password)

#### Working

- startSession (automatically invoked with Grooveshark.new)
- authenticate
- authenticateUser
- authenticateToken
- logout
- getCountry
- getUserPlaylists
- getUserPlaylistsSubscribed
- getUserFavoriteSongs
- removeUserFavoriteSongs
- getUserInfo
- unsubscribePlaylist
- getPlaylist
- getServiceDescription
- pingService
- getPlaylistInfo
- getSongIDFromTinysongBase62
- getSongURLFromTinysongBase62
- getSongURLFromSongID
- getPlaylistURLFromPlaylistID
- getTinysongURLFromSongID
- getUserLibrarySongs
- removeUserLibrarySongs
- deletePlaylist
- getUserIDFromUsername
- getAlbumsInfo
- getAlbumSongs
- getSongsInfo
- getDoesAlbumExist
- getDoesSongExist
- getDoesArtistExist
- getArtistPopularSongs
- getArtistAlbums

#### Sorta working

These methods are working, but with awkward glitches.

- addUserFavoriteSong (sometimes returns false, which seems to be fixed by adding or removing []-brackets)
- getPopularSongsToday (setting limit to anything doesn't work)
- getPopularSongsMonth (setting limit to anything doesn't work)
- createPlaylist (songIDs has to be passed in as an array, i.e. [songIDs], even if it's a single song)
- getArtistsInfo (returns an empty array unless argument is passed in as an array)
- getArtistVerifiedAlbums (returns a list of albums, most of them with the property `"IsVerified"=>false`??)

#### Not working

The following methods are not working at all and it is unclear whether this is the fault of the wrapper or the API itself. More testing is required.

- addUserLibrarySongs (returns `"success"=> true` but doesn't actually add songs to anything)
- subscribePlaylist (just returns `"success"=> false` with no explanation?)
- undeletePlaylist (just returns `"success"=> false` with no explanation?)

#### Not enough permissions with standard API key

These methods are not aloud by standard API key holders. See the [API](http://developers.grooveshark.com/docs/public_api/v3/) for information on how you can increase your permissions

- getAutoplaySong
- getAutoplayTags
- startAutoplayTag
- startAutoplay
- removeVoteUpAutoplaySong
- voteUpAutoplaySong
- addSongToAutoplay
- removeSongFromAutoplay
- removeVoteDownAutoplaySong
- voteDownAutoplaySong
- getUserPlaylistsByUserID
- getUserInfoFromUserID
- getSimilarArtists
- registerUser
- getUserSubscriptionDetails

#### Not tested

- getAutocompleteSearchResults
- getSubscriberStreamKey
- markStreamKeyOver30Secs
- markSongComplete
- getTrialInfo
- createTrial
- setPlaylistSongs
- getPlaylistSongs
- renamePlaylist

## Credits 

Much of the code to post requests to the grooveshark server is based off of [a now outdated grooveshark gem by sosedoff](https://github.com/sosedoff/grooveshark/).