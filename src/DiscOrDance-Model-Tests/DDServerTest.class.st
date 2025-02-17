"
A DDServerTest is a test class for testing the behavior of DDServer
"
Class {
	#name : #DDServerTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDServerTest >> testActiveAuthors [
	"Tist method checks if activeAuthors' geteter works withput giving any input"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: aDDServer activeAuthors equals: Set new.

]

{ #category : #test }
DDServerTest >> testActiveAuthors2 [
	"Tist method checks if activeAuthors' getter and setter works ginve an input"
	
	| aDDServer aDDAuthor |
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	
	aDDServer activeAuthors: aDDAuthor.
	
	self assert: aDDServer activeAuthors equals: aDDAuthor.

]

{ #category : #test }
DDServerTest >> testActiveMembers [
	"Tist method checks if activeMembers works properly"
	
	| aDDServer aDDAuthor aSet|
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	aSet := Set new.
	
	aSet add: aDDAuthor.
	aDDServer members: aSet.
	aDDServer activeAuthors: aSet.
	
	self assert: aDDServer activeMembers equals: aSet.

]

{ #category : #test }
DDServerTest >> testActiveMembers2 [
	"Tist method checks if activeMembers works properly"
	
	| aDDServer aDDAuthor aSecondDDAuthor aSet aSecondSet|
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	aSecondDDAuthor := DDAuthor new.
	aSet := Set new.
	aSecondSet := Set new.
	
	aSet add: aDDAuthor.
	aSet add: aSecondDDAuthor.
	aSecondSet add: aSecondDDAuthor.
	aDDServer members: aSet.
	aDDServer activeAuthors: aSecondSet.
	
	self assert: aDDServer activeMembers equals: aSecondSet.

]

{ #category : #test }
DDServerTest >> testActivitySortedAuthors [
	"Tist method checks if activitySortedAuthors works properly"
	
	| aDDServer aDDAuthorMock aSet|
	aDDServer := DDServer new.
	aSet := Set new.
	aDDAuthorMock := Mock new.
	
	aSet add: aDDAuthorMock.
	(aDDAuthorMock stub activitySorted: aSet) willReturn: OrderedCollection new.
	
	self assert: aDDServer activitySortedAuthors equals: OrderedCollection new.

]

{ #category : #test }
DDServerTest >> testActivitySortedAuthors2 [
	"Tist method checks if activitySortedAuthors works properly without mocking the DDAuthor class"
	
	| aDDServer aDDAuthor aSet anOrderedCollection |
	aDDServer := DDServer new.
	aSet := Set new.
	aDDAuthor := DDAuthor new.
	anOrderedCollection := OrderedCollection new.
	
	aSet add: aDDAuthor.
	anOrderedCollection add: aDDAuthor.
	aDDServer authors: aSet.
	
	self assert: aDDServer activitySortedAuthors equals: anOrderedCollection.

]

{ #category : #test }
DDServerTest >> testActivitySortedAuthors3 [
	"This method checks if activitySortedAuthors works properly given two Authors and messages sent by only one both of them"
	
	| aDDServer aFirstDDAuthor aSecondDDAuthor aFirstDDMessage anOrderedCollection |
	aDDServer := DDServer new.
	aFirstDDAuthor := DDAuthor new.
	aSecondDDAuthor := DDAuthor new.
	aFirstDDMessage := DDMessage new.
	anOrderedCollection := OrderedCollection new.
	
	aFirstDDAuthor name: 'First'.
	aSecondDDAuthor name: 'Second'.
	aFirstDDMessage author: aFirstDDAuthor.
	
	aDDServer addAuthor: aFirstDDAuthor.
	aDDServer addAuthor: aSecondDDAuthor.
	
	anOrderedCollection add: aFirstDDAuthor.

	self assert: (aDDServer activitySortedAuthors) equals: anOrderedCollection.
]

{ #category : #test }
DDServerTest >> testActivitySortedAuthors4 [
	"This method checks if activitySortedAuthors works properly given two Authors and messages sent by both of them"
	
	| aDDServer aFirstDDAuthor aSecondDDAuthor aFirstDDMessage aSecondDDMessage aThirdDDMessage anOrderedCollection |
	aDDServer := DDServer new.
	aFirstDDAuthor := DDAuthor new.
	aSecondDDAuthor := DDAuthor new.
	aFirstDDMessage := DDMessage new.
	aSecondDDMessage := DDMessage new.
	aThirdDDMessage := DDMessage new.
	anOrderedCollection := OrderedCollection new.
	
	aFirstDDAuthor name: 'First'.
	aSecondDDAuthor name: 'Second'.
	aFirstDDMessage author: aFirstDDAuthor.
	aSecondDDMessage author: aSecondDDAuthor.
	aThirdDDMessage author: aSecondDDAuthor.
	
	aDDServer addAuthor: aFirstDDAuthor.
	aDDServer addAuthor: aSecondDDAuthor.
	
	anOrderedCollection add: aFirstDDAuthor.

	self assert: (aDDServer activitySortedAuthors) equals: anOrderedCollection.
]

{ #category : #test }
DDServerTest >> testAddActiveAuthor [
	"Tist method checks if addActiveAuthor works properly without initializing the array"
	
	| aDDServer aDDAuthor aSet |
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	aSet := Set new.

	aDDServer activeAuthors: Set new.
	aDDServer addActiveAuthor: aDDAuthor.
	aSet add: aDDAuthor.
	
	self assert: aDDServer activeAuthors equals: aSet.

]

{ #category : #test }
DDServerTest >> testAddActiveAuthor2 [
	"Tist method checks if addActiveAuthor works properly with an initialized array"
	
	| aDDServer aDDAuthor aSecondDDAuthor aSet aSetOfDDAuthors|
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	aSecondDDAuthor := DDAuthor new.
	aSet := Set new.
	aSetOfDDAuthors := Set new.
	
	aSetOfDDAuthors add: aDDAuthor.
	aDDServer activeAuthors: aSetOfDDAuthors.
	aDDServer addActiveAuthor: aSecondDDAuthor.
	aSet add: aDDAuthor.
	aSet add: aSecondDDAuthor.
	
	self assert: aDDServer activeAuthors equals: aSet.

]

{ #category : #test }
DDServerTest >> testAddAuthor [
	"Tist method checks if addAuthor works properly without initializing the array"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: aDDServer authors equals: Set new.

]

{ #category : #test }
DDServerTest >> testAddAuthor2 [
	"Tist method checks if addAuthor works properly without initializing the array"
	
	| aDDServer aDDAuthor aSet |
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	aSet := Set new.

	aDDServer addAuthor: aDDAuthor.
	aSet add: aDDAuthor.
		
	self assert: aDDServer authors equals: aSet.

]

{ #category : #test }
DDServerTest >> testAddEmoji [
	"Tist method checks if adEmoji works properly with an initialized array"
	
	| aDDServer aDDEmoji aSet |
	aDDServer := DDServer new.
	aDDEmoji := DDEmoji new.
	aSet := Set new.
	
	aDDServer addEmoji: aDDEmoji.
	aSet add: aDDEmoji.
	
	self assert: aDDServer emojis equals: aSet.

]

{ #category : #test }
DDServerTest >> testAlphaSortedAuthors [
	"Tist method checks if alphaSortedAuthors works properly with an initialized array"
	
	| aDDServer aDDAuthorMock aSet |
	aDDServer := DDServer new.
	aDDAuthorMock := Mock new.
	aSet := Set new.
	
	aDDServer addAuthor: aDDAuthorMock.
	aSet add: aDDAuthorMock.
	(aDDAuthorMock stub alphaSorted: aSet) willReturn: aSet.
	aDDServer alphaSortedAuthors.
	
	self assert: aDDServer authors equals: aSet.

]

{ #category : #test }
DDServerTest >> testAlphaSortedAuthors2 [
	"Tist method checks if activitySortedAuthors works properly, creating a Server whitout DDAuthors"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: aDDServer alphaSortedAuthors equals: Array new.

]

{ #category : #test }
DDServerTest >> testAuthors [
	"Tist method checks if authors' getter works without giving any input"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: aDDServer authors equals: Set new.

]

{ #category : #test }
DDServerTest >> testAuthors2 [
	"Tist method checks if authors' getter and setter works given an input"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer authors: 'server-author'.
	
	self assert: aDDServer authors equals: 'server-author'.

]

{ #category : #test }
DDServerTest >> testAuthorsNamed [
	"Tist method checks if authorsNamed function works properly without initializing the array"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer authorsNamed: 'author-name') equals: Set new.

]

{ #category : #test }
DDServerTest >> testAuthorsNamed2 [
	"Tist method checks if authorsNamed function works properly if the array is initialized"
	
	| aDDServer aDDAuthorMock aSet|
	aDDServer := DDServer new.
	aDDAuthorMock := Mock new.
	aSet := Set new.

	aSet add: aDDAuthorMock.
	aDDServer authors: aSet.
	(aDDAuthorMock stub name) willReturn: 'author-name'.

	self assert: (aDDServer authorsNamed: 'author-name') equals: aSet.
]

{ #category : #test }
DDServerTest >> testAuthorsNamed3 [
	"Tist method checks if authorsNamed function works properly if the array is initialized without 	mocking the DDAuthor class"
	
	| aDDServer aDDAuthor aSet|
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	aSet := Set new.

	aSet add: aDDAuthor.
	aDDServer authors: aSet.
	aDDAuthor name: 'author-name'.

	self assert: (aDDServer authorsNamed: 'author-name') equals: aSet.
]

{ #category : #test }
DDServerTest >> testCategories [
	"Tist method checks if categories' getter works without giving any input"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: aDDServer categories equals: OrderedCollection new.

]

{ #category : #test }
DDServerTest >> testCategories2 [
	"Tist method checks if categories' getter and setter works without giving any input"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer categories: 'server-category'.
	
	self assert: aDDServer categories equals: 'server-category'.

]

{ #category : #test }
DDServerTest >> testChannelsNamed [
	"Tist method checks if channelsNamed works properly without giving any channel to the Server"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer channelsNamed: 'a-channel') equals: OrderedCollection new.

]

{ #category : #test }
DDServerTest >> testChannelsNamed2 [
	"Tist method checks if channelsNamed works properly adding a DDChannel without a name"
	
	| aDDServer aDDChannel aDDCategory anOrderedCollection aSet aChannelSet |
	aDDServer := DDServer new.
	aDDChannel := DDChannel new.
	anOrderedCollection := OrderedCollection new.
	aDDCategory := DDCategory new.
	aSet := Set new.
	aChannelSet := Set new.
	
	aChannelSet add: aDDChannel.
	aSet add: aDDCategory.
	aDDServer categories: aSet.
	aDDCategory channels: aChannelSet.
	anOrderedCollection add: aDDChannel.
	
	self assert: (aDDServer channelsNamed: 'a-channel') equals: OrderedCollection new.

]

{ #category : #test }
DDServerTest >> testChannelsNamed3 [
	"Tist method checks if channelsNamed works properly adding a DDChannel with a name"
	
	| aDDServer aDDChannel aDDCategory anOrderedCollection aSet aChannelSet |
	aDDServer := DDServer new.
	aDDChannel := DDChannel new.
	anOrderedCollection := OrderedCollection new.
	aDDCategory := DDCategory new.
	aSet := Set new.
	aChannelSet := Set new.
	
	aChannelSet add: aDDChannel.
	aSet add: aDDCategory.
	aDDServer categories: aSet.
	aDDCategory channels: aChannelSet.
	aDDChannel name: 'a-channel'.
	anOrderedCollection add: aDDChannel.
	
	self assert: (aDDServer channelsNamed: 'a-channel') equals: anOrderedCollection.

]

{ #category : #test }
DDServerTest >> testConversations [
	"Tist method checks if conversations' getter works without giving any input"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: aDDServer conversations equals: nil.

]

{ #category : #test }
DDServerTest >> testConversations2 [
	"Tist method checks if conversations' getter and setter works given an input"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer conversations: 'server-conversations'.
	
	self assert: aDDServer conversations equals: 'server-conversations'.

]

{ #category : #test }
DDServerTest >> testEmojis [
	"Tist method checks if emojis' getter works without giving any input"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: aDDServer emojis equals: Set new.

]

{ #category : #test }
DDServerTest >> testEmojis2 [
	"Tist method checks if emojis' getter and setter works without giving any input"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer emojis: 'server-emojis'.
	
	self assert: aDDServer emojis equals: 'server-emojis'.

]

{ #category : #test }
DDServerTest >> testFirstChannelNamed [
	"This method checks if firstChannelNamed works properly having only one channel"
	
	| aDDServer aDDChannel aDDCategory aSet aChannelSet |
	aDDServer := DDServer new.
	aDDChannel := DDChannel new.
	aDDCategory := DDCategory new.
	aSet := Set new.
	aChannelSet := Set new.
	
	aDDChannel name: 'a-channel'.
	
	aChannelSet add: aDDChannel.
	aSet add: aDDCategory.
	aDDServer categories: aSet.
	aDDCategory channels: aChannelSet.
	
	self assert: (aDDServer firstChannelNamed: 'a-channel') equals: aDDChannel.
]

{ #category : #test }
DDServerTest >> testFirstChannelNamed2 [
	"This method checks if firstChannelNamed works properly having more than one channel"
	
	| aDDServer aFirstDDChannel aSecondDDChannel aDDCategory aSet aChannelSet |
	aDDServer := DDServer new.
	aFirstDDChannel := DDChannel new.
	aSecondDDChannel := DDChannel new.
	aDDCategory := DDCategory new.
	aSet := Set new.
	aChannelSet := Set new.
	
	aFirstDDChannel name: 'a-channel'.
	aSecondDDChannel name: 'a-second-channel'.
	
	aChannelSet add: aFirstDDChannel.
	aSet add: aDDCategory.
	aDDServer categories: aSet.
	aDDCategory channels: aChannelSet.
	
	self assert: (aDDServer firstChannelNamed: 'a-channel') equals: aFirstDDChannel.
]

{ #category : #test }
DDServerTest >> testFlatChannels [
	"This method checks if flatChannels works properly returning an empty array for Mock"
	
	| aDDServer aDDCategoryMock aSet |
	aDDServer := DDServer new.
	aDDCategoryMock := Mock new.
	aSet := Set new.
	
	aSet add: aDDCategoryMock.
	aDDServer categories: aSet.
	(aDDCategoryMock stub channels) willReturn: Set new.
	
	self assert: aDDServer flatChannels equals: OrderedCollection new.
]

{ #category : #test }
DDServerTest >> testFlatChannels2 [
	"This method checks if flatChannels works properly returning an initialized array for Mock"
	
	| aDDServer aDDCategoryMock aSet aChannelSet anOrderedCollectionResult aDDChannel|
	aDDServer := DDServer new.
	aDDCategoryMock := Mock new.
	aSet := Set new.
	aChannelSet := Set new.
	anOrderedCollectionResult := OrderedCollection new.
	aDDChannel := DDChannel new.
	
	aChannelSet add: aDDChannel.
	anOrderedCollectionResult add: aDDChannel.	
	aSet add: aDDCategoryMock.
	aDDServer categories: aSet.
	(aDDCategoryMock stub channels) willReturn: aChannelSet.
	
	self assert: aDDServer flatChannels equals: anOrderedCollectionResult.
]

{ #category : #test }
DDServerTest >> testFlatChannels3 [
	"This method checks if flatChannels works properly returning an initialized array without mocking 	the DDCategory class"
	
	| aDDServer aDDCategory aSet aChannelSet anOrderedCollectionResult aDDChannel|
	aDDServer := DDServer new.
	aDDCategory := DDCategory new.
	aSet := Set new.
	aChannelSet := Set new.
	anOrderedCollectionResult := OrderedCollection new.
	aDDChannel := DDChannel new.
	
	aChannelSet add: aDDChannel.
	anOrderedCollectionResult add: aDDChannel.	
	aSet add: aDDCategory.
	aDDServer categories: aSet.
	aDDCategory channels: aChannelSet.
	
	self assert: aDDServer flatChannels equals: anOrderedCollectionResult.
]

{ #category : #test }
DDServerTest >> testGenerateConversation [
	"This method checks if generateConversation works properly without initializing the DDServer"
	
	| aDDServer aDDCategory aSet aChannelSet aDDChannel |
	aDDServer := DDServer new.
	aDDCategory := DDCategory new.
	aSet := Set new.
	aChannelSet := Set new.
	aDDChannel := DDChannel new.
	
	aChannelSet add: aDDChannel.
	aSet add: aDDCategory.
	aDDServer categories: aSet.
	aDDCategory channels: aChannelSet.
	
	self assert: aDDServer generateConversations equals: aDDServer.
]

{ #category : #test }
DDServerTest >> testGenerateConversation2 [
	"This method checks if generateConversation works properly initializing the DDServer's conversation whit one message"
	
	| aDDServer aDDCategory aSet aChannelSet aDDChannel aDDMessage anOrderedCollection |
	aDDServer := DDServer new.
	aDDCategory := DDCategory new.
	aSet := Set new.
	aChannelSet := Set new.
	aDDChannel := DDChannel new.
	aDDMessage := DDMessage new.
	anOrderedCollection := OrderedCollection new.
	
	aChannelSet add: aDDChannel.
	anOrderedCollection add: aDDMessage.
	aDDChannel messages: anOrderedCollection.
	aDDMessage content: 'message-content'.
	aDDMessage createdAt: '01/02/23'.
	aSet add: aDDCategory.
	aDDServer categories: aSet.
	aDDCategory channels: aChannelSet.
	
	self assert: aDDServer generateConversations equals: aDDServer.
]

{ #category : #test }
DDServerTest >> testGetActiveAuthorLike [
	"Tist method checks if getActiveAuthorLike works properly without initializing the array"
	
	| aDDServer |
	aDDServer := DDServer new.

	self assert: aDDServer activeAuthors equals: Set new.
]

{ #category : #test }
DDServerTest >> testGetActiveAuthorLike2 [
	"Tist method checks if getActiveAuthorLike works properly initializing the array"
	
	| aDDServer aDDAuthor|
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.

	aDDServer addActiveAuthor: aDDAuthor.

	self assert: (aDDServer getActiveAuthorLike: aDDAuthor) equals: aDDAuthor.
]

{ #category : #test }
DDServerTest >> testGetAuthorWithId [
	"Tist method checks if getAuthorWithId works properly"
	
	| aDDServer aDDAuthorMock aSet|
	aDDServer := DDServer new.
	aDDAuthorMock := Mock new.
	aSet := Set new.

	aSet add: aDDAuthorMock.
	aDDServer authors: aSet.
	(aDDAuthorMock stub id) willReturn: 'author-id'.
	
	self assert: (aDDServer getAuthorWithId: 'author-id') equals: aDDAuthorMock.

]

{ #category : #test }
DDServerTest >> testGetAuthorWithId2 [
	"Tist method checks if getAuthorWithId works properly without mocking the DDAuthor class"
	
	| aDDServer aDDAuthor aSet|
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	aSet := Set new.

	aSet add: aDDAuthor.
	aDDServer authors: aSet.
	aDDAuthor id: 'author-id'.
	
	self assert: (aDDServer getAuthorWithId: 'author-id') equals: aDDAuthor.

]

{ #category : #test }
DDServerTest >> testGetChannelWithId [
	"Tist method checks if getChannelWithId first branch works properly"
	
	| aDDServer aDDCategory aSet aChannelSet aDDChannel|
	aDDServer := DDServer new.
	aDDCategory := DDCategory new.
	aSet := Set new.
	aChannelSet := Set new.
	aDDChannel := DDChannel new.
	
	aChannelSet add: aDDChannel.
	aDDChannel id: 'channel-id'.
	aSet add: aDDCategory.
	aDDServer categories: aSet.
	aDDCategory channels: aChannelSet.
	
	self assert: (aDDServer getChannelWithId: 'channel-id') equals: aDDChannel.

]

{ #category : #test }
DDServerTest >> testGetEmojiWithId [
	"Tist method checks if getEmojiWithId works properly"
	
	| aDDServer aDDEmojiMock aSet|
	aDDServer := DDServer new.
	aDDEmojiMock := Mock new.
	aSet := Set new.

	aSet add: aDDEmojiMock.
	aDDServer emojis: aSet.
	(aDDEmojiMock stub id) willReturn: 'emoji-id'.
	
	self assert: (aDDServer getEmojiWithId: 'emoji-id') equals: aDDEmojiMock.

]

{ #category : #test }
DDServerTest >> testGetEmojiWithId2 [
	"Tist method checks if getEmojiWithId works properly without mocking the DDEmoji class"
	
	| aDDServer aDDEmoji aSet|
	aDDServer := DDServer new.
	aDDEmoji := DDEmoji new.
	aSet := Set new.

	aSet add: aDDEmoji.
	aDDServer emojis: aSet.
	aDDEmoji id: 'emoji-id'.
	
	self assert: (aDDServer getEmojiWithId: 'emoji-id') equals: aDDEmoji.

]

{ #category : #test }
DDServerTest >> testGetMessageByAuthor [
	"Tist method checks if getMessageByAuthor works with a Server whitout messages"
	
	| aDDServer  aSet  aDDCategory aChannelSet aDDChannel  |
	aDDServer := DDServer new.
	aSet := Set new.
	aDDCategory := DDCategory new.
	aChannelSet := Set new.
	aDDChannel := DDChannel new.
	
	aChannelSet add: aDDChannel.
	aSet add: aDDCategory.
	aDDServer categories: aSet.
	aDDCategory channels: aChannelSet.
	
	self assert: (aDDServer getMessagesByAuthor) equals: Bag new.

]

{ #category : #test }
DDServerTest >> testGetMessageWithId [
	"Tist method checks if getEmojiWithId works properly"
	
	| aDDServer aDDMessageMock aSet|
	aDDServer := DDServer new.
	aDDMessageMock := Mock new.
	aSet := Set new.

	aSet add: aDDMessageMock.
	aDDServer emojis: aSet.
	(aDDMessageMock stub id) willReturn: 'message-id'.
	
	self assert: (aDDServer getEmojiWithId: 'message-id') equals: aDDMessageMock.

]

{ #category : #test }
DDServerTest >> testGetMessageWithId2 [
	"Tist method checks if getEmojiWithId works properly without mocking the DDMessage class"
	
	| aDDServer aDDMessage aSet|
	aDDServer := DDServer new.
	aDDMessage := DDMessage new.
	aSet := Set new.

	aSet add: aDDMessage.
	aDDServer emojis: aSet.
	aDDMessage id: 'message-id'.
	
	self assert: (aDDServer getEmojiWithId: 'message-id') equals: aDDMessage.

]

{ #category : #test }
DDServerTest >> testGetRoleWithId [
	"Tist method checks if getRoleWithId first branch works properly"
	
	| aDDServer aDDRoleMock aSet|
	aDDServer := DDServer new.
	aDDRoleMock := Mock new.
	aSet := Set new.

	aSet add: aDDRoleMock.
	aDDServer roles: aSet.
	(aDDRoleMock stub id) willReturn: 'role-id'.
	
	self assert: (aDDServer getRoleWithId: 'role-id') equals: aDDRoleMock.

]

{ #category : #test }
DDServerTest >> testGetRoleWithId2 [
	"Tist method checks if getRoleWithId second branch works properly"
	
	| aDDServer aDDRoleMock |
	aDDServer := DDServer new.
	aDDRoleMock := Mock new.
	
	(aDDRoleMock stub id) willReturn: 'role-id'.
	
	self assert: (aDDServer getRoleWithId: 'role-id') equals: aDDRoleMock.

]

{ #category : #test }
DDServerTest >> testGetRoleWithId3 [
	"Tist method checks if getRoleWithId second branch works properly without mocking the DDRole class"
	
	| aDDServer aDDRole |
	aDDServer := DDServer new.
	aDDRole := DDRole new.
	
	aDDRole id: 'role-id'.
	
	self assert: (aDDServer getRoleWithId: 'role-id') equals: aDDRole.

]

{ #category : #test }
DDServerTest >> testGetRoleWithId4 [
	"Tist method checks if getRoleWithId first branch works properly without mocking the DDRole class"
	
	| aDDServer aDDRole aSet|
	aDDServer := DDServer new.
	aDDRole := DDRole new.
	aSet := Set new.

	aSet add: aDDRole.
	aDDServer roles: aSet.
	aDDRole id:'role-id'.
	
	self assert: (aDDServer getRoleWithId: 'role-id') equals: aDDRole.

]

{ #category : #test }
DDServerTest >> testInactiveMembers [
	"Tist method checks if inactiveMembers works properly without initializing the array"
	
	| aDDServer aDDAuthorMock |
	aDDServer := DDServer new.
	aDDAuthorMock := Mock new.

	aDDServer addAuthor: aDDAuthorMock.
	aDDServer addActiveAuthor: aDDAuthorMock.
	
	self assert: aDDServer inactiveMembers equals: Set new.
]

{ #category : #test }
DDServerTest >> testIsCustomEdited [
	"Tist method checks if isCustomEdited works properly"
	
	| aDDServer |
	aDDServer := DDServer new.

	self assert: aDDServer isCustomEdited equals: false.
]

{ #category : #test }
DDServerTest >> testManualCustomize [
	"Tist method checks if manualCustomize works properly"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer manualCustomize.
	 
	self assert: aDDServer isCustomEdited equals: true.
]

{ #category : #test }
DDServerTest >> testMaxActiveChannelsForAuthors [
	"This method checks if maxActiveChannelsForAuthors works properly given an empty array"
	
	| aDDServer aDDAuthorMock aSet |
	aDDServer := DDServer new.
	aDDAuthorMock := Mock new.
	aSet := Set new.
	
	aSet add: aDDAuthorMock.
	aDDServer authors: aSet.
	(aDDAuthorMock stub activeChannels) willReturn: Set new.
	
	self assert: aDDServer maxActiveChannelsForAuthors equals: 0.
]

{ #category : #test }
DDServerTest >> testMaxActiveChannelsForAuthors2 [
	"This method checks if maxActiveChannelsForAuthors works properly given an initialized array of 	messages"
	
	| aDDServer aDDAuthorMock aSet aChannelSet |
	aDDServer := DDServer new.
	aDDAuthorMock := Mock new.
	aSet := Set new.
	aChannelSet := Set new.
	
	aChannelSet add: DDChannel new.
	aSet add: aDDAuthorMock.
	aDDServer authors: aSet.
	(aDDAuthorMock stub activeChannels) willReturn: aChannelSet.
	
	self assert: aDDServer maxActiveChannelsForAuthors equals: 1.
]

{ #category : #test }
DDServerTest >> testMaxActiveChannelsForAuthors3 [
	"This method checks if maxActiveChannelsForAuthors works properly given an initialized array of 	messages without mocking the DDAuthor class"
	
	| aDDServer aDDAuthor aSet aChannelSet |
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	aSet := Set new.
	aChannelSet := Set new.
	
	aChannelSet add: DDChannel new.
	aSet add: aDDAuthor.
	aDDServer authors: aSet.
	aDDAuthor addActiveChannel: aChannelSet.

	
	self assert: aDDServer maxActiveChannelsForAuthors equals: 1.
]

{ #category : #test }
DDServerTest >> testMaxMessagesForAuthors [
	"This method checks if maxMessagesForAuthors works properly given an empty array"
	
	| aDDServer aDDAuthorMock aSet |
	aDDServer := DDServer new.
	aDDAuthorMock := Mock new.
	aSet := Set new.

	aSet add: aDDAuthorMock.
	aDDServer authors: aSet.
	(aDDAuthorMock stub sentMessages) willReturn: Set new.
	
	self assert: aDDServer maxMessagesForAuthors equals: 0.
]

{ #category : #test }
DDServerTest >> testMaxMessagesForAuthors2 [
	"This method checks if maxMessagesForAuthors works properly given an initialized array of messages"
	
	| aDDServer aDDAuthorMock aSet aMessageSet |
	aDDServer := DDServer new.
	aDDAuthorMock := Mock new.
	aSet := Set new.
	aMessageSet := Set new.
	
	aMessageSet add: DDMessage new.
	aSet add: aDDAuthorMock.
	aDDServer authors: aSet.
	(aDDAuthorMock stub sentMessages) willReturn: aMessageSet.
	
	self assert: aDDServer maxMessagesForAuthors equals: 1.
]

{ #category : #test }
DDServerTest >> testMaxMessagesForAuthors3 [
	"This method checks if maxMessagesForAuthors works properly given an initialized array of messages 	without mocking the DDAuthor class"
	
	| aDDServer aDDAuthor aSet |
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	aSet := Set new.
	
	aDDAuthor addSentMessage: DDMessage new.
	aSet add: aDDAuthor.
	aDDServer authors: aSet.
	
	self assert: aDDServer maxMessagesForAuthors equals: 1.
]

{ #category : #test }
DDServerTest >> testMaxMessagesInChannels [ 
	"This method checks if maxMessagesInChannels works properly"
	
	| aDDServer aDDCategoryMock aSet |
	aDDServer := DDServer new.
	aDDCategoryMock := Mock new.
	aSet := Set new.
	
	aSet add: aDDCategoryMock.
	aDDServer categories: aSet.
	(aDDCategoryMock stub maxMessagesInChannels) willReturn: 3.
	
	self assert: aDDServer maxMessagesInChannels equals: 3.
]

{ #category : #test }
DDServerTest >> testMaxMessagesInChannels2 [ 
	"This method checks if maxMessagesInChannels works properly without mocking the DDCategory class"
	
	| aDDServer aDDCategory aSet aSetOfChannels|
	aDDServer := DDServer new.
	aDDCategory := DDCategory new.
	aSet := Set new.
	aSetOfChannels := Set new.
	
	aSet add: aDDCategory.
	aSetOfChannels add: DDChannel new.
	aDDCategory channels: aSetOfChannels.
	aDDServer categories: aSet.
	
	self assert: aDDServer maxMessagesInChannels equals: 0.
]

{ #category : #test }
DDServerTest >> testMaxMessagesInChannels3 [
	"This method checks if maxMessagesInChannels works properly without mocking the DDCategory class"
	
	| aDDServer aDDCategory aSet aSetOfChannels aDDChannel|
	aDDServer := DDServer new.
	aDDCategory := DDCategory new.
	aSet := Set new.
	aSetOfChannels := Set new.
	aDDChannel := DDChannel new.
	
	aSet add: aDDCategory.
	aDDChannel addMessage: DDMessage new.
	aSetOfChannels add: aDDChannel.
	aDDCategory channels: aSetOfChannels.
	aDDServer categories: aSet.
	
	self assert: aDDServer maxMessagesInChannels equals: 1.
]

{ #category : #test }
DDServerTest >> testMembers [
	"Tist method checks if members' getter and setter works without giving any input"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: aDDServer members equals: Set new.
]

{ #category : #test }
DDServerTest >> testMembers2 [
	"Tist method checks if members' getter and setter works given an input"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer members: 'server-member'.
	
	self assert: aDDServer members equals: 'server-member'.
]

{ #category : #test }
DDServerTest >> testMessagesWithCodeBlocks [
	"Tist method checks if messagesWithCodeBlocks works without inizialiting the messages array"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: aDDServer messagesWithCodeBlocks equals: OrderedCollection new.
]

{ #category : #test }
DDServerTest >> testMessagesWithEmbeds [
	"Tist method checks if messagesWithEmbeds works without inizialiting the messages array"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: aDDServer messagesWithEmbeds equals: OrderedCollection new.
]

{ #category : #test }
DDServerTest >> testNumberOfCategories [
	"Tist method checks if numberOfCategories works without inizialiting the categories"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: aDDServer numberOfCategories equals: 0.
]

{ #category : #test }
DDServerTest >> testNumberOfCategories2 [
	"Tist method checks if numberOfCategories works inizialiting the categories"
	
	| aDDServer aSet|
	aDDServer := DDServer new.
	aSet := Set new.
	
	aSet add: DDCategory new.
	aDDServer categories: aSet.
	
	self assert: aDDServer numberOfCategories equals: 1.
]

{ #category : #test }
DDServerTest >> testNumberOfChannels [
	"This method checks if numberOfChannels works properly returning an empty array for Mock"
	
	| aDDServer aDDCategoryMock aSet |
	aDDServer := DDServer new.
	aDDCategoryMock := Mock new.
	aSet := Set new.
	
	aSet add: aDDCategoryMock.
	aDDServer categories: aSet.
	(aDDCategoryMock stub channels) willReturn: Set new.
	
	self assert: aDDServer numberOfChannels equals: 0.
]

{ #category : #test }
DDServerTest >> testNumberOfChannels2 [
	"This method checks if numberOfChannels works properly returning an initialized array for Mock"
	
	| aDDServer aDDCategoryMock aSet aChannelSet anOrderedCollectionResult aDDChannel|
	aDDServer := DDServer new.
	aDDCategoryMock := Mock new.
	aSet := Set new.
	aChannelSet := Set new.
	anOrderedCollectionResult := OrderedCollection new.
	aDDChannel := DDChannel new.
	
	aChannelSet add: aDDChannel.
	anOrderedCollectionResult add: aDDChannel.	
	aSet add: aDDCategoryMock.
	aDDServer categories: aSet.
	(aDDCategoryMock stub channels) willReturn: aChannelSet.
	
	self assert: aDDServer numberOfChannels equals: 1
]

{ #category : #test }
DDServerTest >> testNumberOfChannels3 [
	"This method checks if numberOfChannels works properly returning an initialized array without 	mocking the DDCategory class"
	
	| aDDServer aDDCategory aSet aChannelSet anOrderedCollectionResult aDDChannel|
	aDDServer := DDServer new.
	aDDCategory := DDCategory new.
	aSet := Set new.
	aChannelSet := Set new.
	anOrderedCollectionResult := OrderedCollection new.
	aDDChannel := DDChannel new.
	
	aChannelSet add: aDDChannel.
	anOrderedCollectionResult add: aDDChannel.	
	aSet add: aDDCategory.
	aDDServer categories: aSet.
	aDDCategory channels: aChannelSet.
	
	self assert: aDDServer numberOfChannels equals: 1
]

{ #category : #test }
DDServerTest >> testNumberOfChannels4 [
	"This method checks if numberOfChannels works properly returning an empty array without mocking the 	DDCategory class"
	
	| aDDServer aDDCategory aSet |
	aDDServer := DDServer new.
	aDDCategory := DDCategory new.
	aSet := Set new.
	
	aSet add: aDDCategory.
	aDDServer categories: aSet.
	aDDCategory channels: Set new.
	
	self assert: aDDServer numberOfChannels equals: 0.
]

{ #category : #test }
DDServerTest >> testPreviouslyActiveAuthors [
	"This method checks if previouslyActiveAuthors works properly without initializing the activeAuthors 	array"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: aDDServer previouslyActiveAuthors equals: Set new.
]

{ #category : #test }
DDServerTest >> testPreviouslyActiveAuthors2 [
	"This method checks if previouslyActiveAuthors works properly initializing the activeAuthors array"
	
	| aDDServer aSet aDDAuthor |
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	aSet := Set new.
	
	aSet add: aDDAuthor.
	aDDServer addActiveAuthor: aDDAuthor.
	
	self assert: aDDServer previouslyActiveAuthors equals: aSet.
]

{ #category : #test }
DDServerTest >> testRoles [
	"Tist method checks if roles' getter works without giving any input"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: aDDServer roles equals: Set new.
]

{ #category : #test }
DDServerTest >> testRoles2 [
	"Tist method checks if roles' getter and setter works given an input"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer roles: 'server-role'.
	
	self assert: aDDServer roles equals: 'server-role'.
]

{ #category : #test }
DDServerTest >> testSnapshotDate [
	"Tist method checks if shanpshotDate's getter works without giving any input"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: aDDServer snapshotDate equals: nil.
]

{ #category : #test }
DDServerTest >> testSnapshotDate2 [
	"Tist method checks if shanpshotDate's getter and setter works given an input"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer snapshotDate: 'server-shanpshotDate'.
	
	self assert: aDDServer snapshotDate equals: 'server-shanpshotDate'.
]

{ #category : #test }
DDServerTest >> testStatistics [
	"Tist method checks if statistics' getter works without giving any input"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: aDDServer statistics equals: nil.
]

{ #category : #test }
DDServerTest >> testStatistics2 [
	"Tist method checks if statistics' getter works given an input"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer statistics: 'server-statistic'.
	
	self assert: aDDServer statistics equals: 'server-statistic'.
]

{ #category : #test }
DDServerTest >> testTextChannels [
	"This method checks if textChannels works properly returning an empty array for Mock"
	
	| aDDServer aDDCategoryMock aSet |
	aDDServer := DDServer new.
	aDDCategoryMock := Mock new.
	aSet := Set new.
	
	aSet add: aDDCategoryMock.
	aDDServer categories: aSet.
	(aDDCategoryMock stub channels) willReturn: Set new.
	
	self assert: aDDServer textChannels equals: OrderedCollection new.
]

{ #category : #test }
DDServerTest >> testTextChannels2 [
	"This method checks if flatChannels works properly returning an initialized array for Mock"
	
	| aDDServer aDDCategoryMock aSet aChannelSet anOrderedCollectionResult aDDChannelMock|
	aDDServer := DDServer new.
	aDDCategoryMock := Mock new.
	aSet := Set new.
	aChannelSet := Set new.
	anOrderedCollectionResult := OrderedCollection new.
	aDDChannelMock := Mock new.
	
	aChannelSet add: aDDChannelMock.
	anOrderedCollectionResult add: aDDChannelMock.	
	aSet add: aDDCategoryMock.
	aDDServer categories: aSet.
	(aDDCategoryMock stub channels) willReturn: aChannelSet.
	(aDDChannelMock stub isTextChannel) willReturn: true.
	
	self assert: aDDServer textChannels equals: anOrderedCollectionResult.
]

{ #category : #test }
DDServerTest >> testTopLevelChannels [
	"Tist method checks if topLevelChannels' getter works without giving any input"
	
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: aDDServer topLevelChannels equals: OrderedCollection new.

]

{ #category : #test }
DDServerTest >> testTopLevelChannels2 [
	"Tist method checks if topLevelChannels' getter works given an input"
	
	| aDDServer aSet aDDChannel|
	aDDServer := DDServer new.
	aSet := Set new.
	aDDChannel := DDChannel new.
	
	aSet add: aDDChannel.	
	aDDServer topLevelChannels: aSet.
	
	self assert: aDDServer topLevelChannels equals: aSet.
]
