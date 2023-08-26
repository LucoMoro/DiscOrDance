"
A DDServerTest is a test class for testing the behavior of DDServer
"
Class {
	#name : #DDServerTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDServerTest >> TestTopLevelChannels [
	"Tist test checks if topLevelChannels' getter and setter works without giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer topLevelChannels) equals: OrderedCollection new.

]

{ #category : #test }
DDServerTest >> testActiveAuthors [
	"Tist test checks if activeAuthors' geteter and setter works withput giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer activeAuthors) equals: Set new.

]

{ #category : #test }
DDServerTest >> testActiveAuthors2 [
	"Tist test checks if activeAuthors' geteter and setter works ginve an input"
	| aDDServer aDDAuthor |
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	
	aDDServer activeAuthors: aDDAuthor.
	
	self assert: (aDDServer activeAuthors) equals: aDDAuthor.

]

{ #category : #test }
DDServerTest >> testActiveMembers [
	"Tist test checks if activeMembers works properly"
	| aDDServer aDDAuthor aSet|
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	aSet := Set new.
	
	aSet add: aDDAuthor.
	aDDServer members: aSet.
	aDDServer activeAuthors: aSet.
	
	self assert: (aDDServer activeMembers) equals: aSet.

]

{ #category : #test }
DDServerTest >> testActiveMembers2 [
	"Tist test checks if activeMembers works properly"
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
	
	self assert: (aDDServer activeMembers) equals: aSecondSet.

]

{ #category : #test }
DDServerTest >> testActivitySortedAuthors [
	"Tist test checks if activitySortedAuthors works properly"
	| aDDServer aDDAuthorMock aSet|
	aDDServer := DDServer new.
	aSet := Set new.
	aDDAuthorMock := Mock new.
	
	aSet add: aDDAuthorMock.
	(aDDAuthorMock stub activitySorted: aSet) willReturn: OrderedCollection new.
	
	self assert: (aDDServer activitySortedAuthors) equals: OrderedCollection new.

]

{ #category : #test }
DDServerTest >> testAddActiveAuthor [
	"Tist test checks if addActiveAuthor works properly without initializing the array"
	| aDDServer aDDAuthor aSet |
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	aSet := Set new.

	aDDServer activeAuthors: Set new.
	aDDServer addActiveAuthor: aDDAuthor.
	
	aSet add: aDDAuthor.
	
	self assert: (aDDServer activeAuthors) equals: aSet.

]

{ #category : #test }
DDServerTest >> testAddActiveAuthor2 [
	"Tist test checks if addActiveAuthor works properly with an initialized array"
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
	
	self assert: (aDDServer activeAuthors) equals: aSet.

]

{ #category : #test }
DDServerTest >> testAddAuthor [
	"Tist test checks if addAuthor works properly without initializing the array"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer authors) equals: Set new.

]

{ #category : #test }
DDServerTest >> testAddAuthor2 [
	"Tist test checks if addAuthor works properly without initializing the array"
	| aDDServer aDDAuthor aSet |
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	aSet := Set new.

	aDDServer addAuthor: aDDAuthor.
	
	aSet add: aDDAuthor.
	
	self assert: (aDDServer authors) equals: aSet.

]

{ #category : #test }
DDServerTest >> testAddEmoji [
	"Tist test checks if addAuthor works properly with an initialized array"
	| aDDServer aDDEmoji aSet |
	aDDServer := DDServer new.
	aDDEmoji := DDEmoji new.
	aSet := Set new.
	
	aDDServer addEmoji: aDDEmoji.
	aSet add: aDDEmoji.
	
	
	self assert: (aDDServer emojis) equals: aSet.

]

{ #category : #test }
DDServerTest >> testAlphaSortedAuthors [
	"Tist test checks if alphaSortedAuthors works properly with an initialized array"
	| aDDServer aDDAuthorMock aSet |
	aDDServer := DDServer new.
	aDDAuthorMock := Mock new.
	aSet := Set new.
	
	aDDServer addAuthor: aDDAuthorMock.
	aSet add: aDDAuthorMock.
	(aDDAuthorMock stub alphaSorted: aSet) willReturn: aSet.
	aDDServer alphaSortedAuthors.
	
	self assert: (aDDServer authors) equals: aSet.

]

{ #category : #test }
DDServerTest >> testAuthors [
	"Tist test checks if authors' getter and setter works without giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer authors) equals: Set new.

]

{ #category : #test }
DDServerTest >> testAuthors2 [
	"Tist test checks if authors' getter and setter works given an input"
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer authors: 'server-author'.
	
	self assert: (aDDServer authors) equals: 'server-author'.

]

{ #category : #test }
DDServerTest >> testAuthorsNamed [
	"Tist test checks if authorsNamed function works properly without initializing the array"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer authorsNamed: 'author-name') equals: Set new.

]

{ #category : #test }
DDServerTest >> testAuthorsNamed2 [
	"Tist test checks if authorsNamed function works properly if the array is initialized"
	| aDDServer aDDAuthorMock aSet|
	aDDServer := DDServer new.
	aDDAuthorMock := Mock new.
	aSet := Set new.
	
	aSet add: aDDAuthorMock.
	aDDAuthorMock name: 'author-name'.
	aDDServer authors: aSet.
	
	(aDDAuthorMock stub name) willReturn: 'author-name'.
	
	self assert: (aDDServer authorsNamed: 'author-name') equals: aSet.

]

{ #category : #test }
DDServerTest >> testCategories [
	"Tist test checks if categories' getter and setter works without giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer categories) equals: OrderedCollection new.

]

{ #category : #test }
DDServerTest >> testCategories2 [
	"Tist test checks if categories' getter and setter works without giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer categories: 'server-category'.
	
	self assert: (aDDServer categories) equals: 'server-category'.

]

{ #category : #test }
DDServerTest >> testConversations [
	"Tist test checks if conversations' getter and setter works without giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer conversations) equals: nil.

]

{ #category : #test }
DDServerTest >> testConversations2 [
	"Tist test checks if conversations' getter and setter works given an input"
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer conversations: 'server-conversations'.
	
	self assert: (aDDServer conversations) equals: 'server-conversations'.

]

{ #category : #test }
DDServerTest >> testDomain [
	"Tist test checks if domain's getter and setter works without giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer domain.
	
	self assert: (true).

]

{ #category : #test }
DDServerTest >> testEmojis [
	"Tist test checks if emojis' getter and setter works without giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer emojis) equals: Set new.

]

{ #category : #test }
DDServerTest >> testEmojis2 [
	"Tist test checks if emojis' getter and setter works without giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer emojis: 'server-emojis'.
	
	self assert: (aDDServer emojis) equals: 'server-emojis'.

]

{ #category : #test }
DDServerTest >> testFlatChannels [
	"This test checks if flatChannels works properly returning an empty array for Mock"
	| aDDServer aDDCategoryMock aSet |
	aDDServer := DDServer new.
	aDDCategoryMock := Mock new.
	aSet := Set new.
	
	aSet add: aDDCategoryMock.
	aDDServer categories: aSet.
	(aDDCategoryMock stub channels) willReturn: Set new.
	
	self assert: (aDDServer flatChannels) equals: OrderedCollection new.
]

{ #category : #test }
DDServerTest >> testFlatChannels2 [
	"This test checks if flatChannels works properly returning an initialized array for Mock"
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
	
	self assert: (aDDServer flatChannels) equals: anOrderedCollectionResult.
]

{ #category : #test }
DDServerTest >> testGetActiveAuthorLike [
	"Tist test checks if getActiveAuthorLike works properly without initializing the array"
	| aDDServer |
	aDDServer := DDServer new.

	self assert: (aDDServer activeAuthors) equals: Set new.
]

{ #category : #test }
DDServerTest >> testGetActiveAuthorLike2 [
	"Tist test checks if getActiveAuthorLike works properly initializing the array"
	| aDDServer aDDAuthor|
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.

	aDDServer addActiveAuthor: aDDAuthor.

	self assert: (aDDServer getActiveAuthorLike: aDDAuthor) equals: aDDAuthor.
]

{ #category : #test }
DDServerTest >> testGetAuthorWithId [
	"Tist test checks if getAuthorWithId  works properly"
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
DDServerTest >> testGetEmojiWithId [
	"Tist test checks if getEmojiWithId works properly"
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
DDServerTest >> testGetRoleWithId [
	"Tist test checks if getRoleWithId first branch  works properly"
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
	"Tist test checks if getRoleWithId second branch  works properly"
	| aDDServer aDDRoleMock |
	aDDServer := DDServer new.
	aDDRoleMock := Mock new.
	
	(aDDRoleMock stub id) willReturn: 'role-id'.
	
	self assert: (aDDServer getRoleWithId: 'role-id') equals: aDDRoleMock.

]

{ #category : #test }
DDServerTest >> testInactiveMembers [
	"Tist test checks if inactiveMembers works properly without initializing the array"
	| aDDServer aDDAuthorMock |
	aDDServer := DDServer new.
	aDDAuthorMock := Mock new.

	aDDServer addAuthor: aDDAuthorMock.
	aDDServer addActiveAuthor: aDDAuthorMock.
	
	self assert: (aDDServer inactiveMembers) equals: Set new.
]

{ #category : #test }
DDServerTest >> testIsCustomEdited [
	"Tist test checks if isCustomEdited works properly"
	| aDDServer |
	aDDServer := DDServer new.

	self assert: (aDDServer isCustomEdited) equals: false.
]

{ #category : #test }
DDServerTest >> testManualCustomize [
	"Tist test checks if manualCustomize works properly"
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer manualCustomize.
	 
	self assert: (aDDServer isCustomEdited) equals: true.
]

{ #category : #test }
DDServerTest >> testMaxActiveChannelsForAuthors [
	"This test checks if maxActiveChannelsForAuthors works properly given an empty array"
	| aDDServer aDDAuthorMock aSet |
	aDDServer := DDServer new.
	aDDAuthorMock := Mock new.
	aSet := Set new.
	
	aSet add: aDDAuthorMock.
	aDDServer authors: aSet.
	(aDDAuthorMock stub activeChannels) willReturn: Set new.
	
	self assert: (aDDServer maxActiveChannelsForAuthors) equals: 0.
]

{ #category : #test }
DDServerTest >> testMaxActiveChannelsForAuthors2 [
	"This test checks if maxActiveChannelsForAuthors works properly given an initialized array of 	messages"
	| aDDServer aDDAuthorMock aSet aChannelSet |
	aDDServer := DDServer new.
	aDDAuthorMock := Mock new.
	aSet := Set new.
	aChannelSet := Set new.
	
	aChannelSet add: DDChannel new.
	
	aSet add: aDDAuthorMock.
	aDDServer authors: aSet.
	(aDDAuthorMock stub activeChannels) willReturn: aChannelSet.
	
	self assert: (aDDServer maxActiveChannelsForAuthors) equals: 1.
]

{ #category : #test }
DDServerTest >> testMaxMessagesForAuthors [
	"This test checks if maxMessagesForAuthors works properly given an empty array"
	| aDDServer aDDAuthorMock aSet |
	aDDServer := DDServer new.
	aDDAuthorMock := Mock new.
	aSet := Set new.

	aSet add: aDDAuthorMock.
	aDDServer authors: aSet.
	(aDDAuthorMock stub sentMessages) willReturn: Set new.
	
	self assert: (aDDServer maxMessagesForAuthors) equals: 0.
]

{ #category : #test }
DDServerTest >> testMaxMessagesForAuthors2 [
	"This test checks if maxMessagesForAuthors works properly given an initialized array of messages"
	| aDDServer aDDAuthorMock aSet aMessageSet |
	aDDServer := DDServer new.
	aDDAuthorMock := Mock new.
	aSet := Set new.
	aMessageSet := Set new.
	
	aMessageSet add: DDMessage new.
	
	aSet add: aDDAuthorMock.
	aDDServer authors: aSet.
	(aDDAuthorMock stub sentMessages) willReturn: aMessageSet.
	
	self assert: (aDDServer maxMessagesForAuthors) equals: 1.
]

{ #category : #test }
DDServerTest >> testMaxMessagesInChannels [ 
	"This test checks if maxMessagesInChannels works properly"
	| aDDServer aDDCategoryMock aSet |
	aDDServer := DDServer new.
	aDDCategoryMock := Mock new.
	aSet := Set new.
	
	aSet add: aDDCategoryMock.
	aDDServer categories: aSet.
	(aDDCategoryMock stub maxMessagesInChannels) willReturn: 3.
	
	self assert: (aDDServer maxMessagesInChannels) equals: 3.
]

{ #category : #test }
DDServerTest >> testMembers [
	"Tist test checks if members' getter and setter works without giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer members) equals: Set new.
]

{ #category : #test }
DDServerTest >> testMembers2 [
	"Tist test checks if members' getter and setter works given an input"
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer members: 'server-member'.
	
	self assert: (aDDServer members) equals: 'server-member'.
]

{ #category : #test }
DDServerTest >> testMessagesWithCodeBlocks [
	"Tist test checks if messagesWithCodeBlocks works without inizialiting the messages array"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer messagesWithCodeBlocks) equals: OrderedCollection new.
]

{ #category : #test }
DDServerTest >> testMessagesWithEmbeds [
	"Tist test checks if messagesWithEmbeds works without inizialiting the messages array"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer messagesWithEmbeds) equals: OrderedCollection new.
]

{ #category : #test }
DDServerTest >> testNumberOfCategories [
	"Tist test checks if numberOfCategories works without inizialiting the categories"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer numberOfCategories) equals: 0.
]

{ #category : #test }
DDServerTest >> testNumberOfCategories2 [
	"Tist test checks if numberOfCategories works inizialiting the categories"
	| aDDServer aSet|
	aDDServer := DDServer new.
	aSet := Set new.
	
	aSet add: DDCategory new.
	
	aDDServer categories: aSet.
	
	self assert: (aDDServer numberOfCategories) equals: 1.
]

{ #category : #test }
DDServerTest >> testNumberOfChannels [
	"This test checks if numberOfChannels works properly returning an empty array for Mock"
	| aDDServer aDDCategoryMock aSet |
	aDDServer := DDServer new.
	aDDCategoryMock := Mock new.
	aSet := Set new.
	
	aSet add: aDDCategoryMock.
	aDDServer categories: aSet.
	(aDDCategoryMock stub channels) willReturn: Set new.
	
	self assert: (aDDServer numberOfChannels) equals: 0.
]

{ #category : #test }
DDServerTest >> testNumberOfChannels2 [
	"This test checks if numberOfChannels works properly returning an initialized array for Mock"
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
	
	self assert: (aDDServer numberOfChannels) equals: 1
]

{ #category : #test }
DDServerTest >> testPreviouslyActiveAuthors [
	"This test checks if previouslyActiveAuthors works properly without initializing the activeAuthors 	array"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer previouslyActiveAuthors) equals: Set new.
]

{ #category : #test }
DDServerTest >> testPreviouslyActiveAuthors2 [
	"This test checks if previouslyActiveAuthors works properly initializing the activeAuthors array"
	| aDDServer aSet aDDAuthor |
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	aSet := Set new.
	
	aSet add: aDDAuthor.
	aDDServer addActiveAuthor: aDDAuthor.
	
	self assert: (aDDServer previouslyActiveAuthors) equals: aSet.
]

{ #category : #test }
DDServerTest >> testRoles [
	"Tist test checks if roles' getter and setter works without giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer roles) equals: Set new.
]

{ #category : #test }
DDServerTest >> testRoles2 [
	"Tist test checks if roles' getter and setter works given an input"
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer roles: 'server-role'.
	
	self assert: (aDDServer roles) equals: 'server-role'.
]

{ #category : #test }
DDServerTest >> testSnapshotDate [
	"Tist test checks if shanpshotDate's getter and setter works without giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer snapshotDate) equals: nil.
]

{ #category : #test }
DDServerTest >> testSnapshotDate2 [
	"Tist test checks if shanpshotDate's getter and setter works given an input"
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer snapshotDate: 'server-shanpshotDate'.
	
	self assert: (aDDServer snapshotDate) equals: 'server-shanpshotDate'.
]

{ #category : #test }
DDServerTest >> testStatistics [
	"Tist test checks if statistics' getter and setter works without giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer statistics) equals: nil.
]

{ #category : #test }
DDServerTest >> testStatistics2 [
	"Tist test checks if statistics' getter and setter works given an input"
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer statistics: 'server-statistic'.
	
	self assert: (aDDServer statistics) equals: 'server-statistic'.
]

{ #category : #test }
DDServerTest >> testTextChannels [
	"This test checks if textChannels works properly returning an empty array for Mock"
	| aDDServer aDDCategoryMock aSet |
	aDDServer := DDServer new.
	aDDCategoryMock := Mock new.
	aSet := Set new.
	
	aSet add: aDDCategoryMock.
	aDDServer categories: aSet.
	(aDDCategoryMock stub channels) willReturn: Set new.
	
	self assert: (aDDServer textChannels) equals: OrderedCollection new.
]

{ #category : #test }
DDServerTest >> testTextChannels2 [
	"This test checks if flatChannels works properly returning an initialized array for Mock"
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
	
	self assert: (aDDServer textChannels) equals: anOrderedCollectionResult.
]

{ #category : #test }
DDServerTest >> testTopLevelChannels [
	"Tist test checks if topLevelChannels' getter and setter works without giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer topLevelChannels) equals: OrderedCollection new.

]

{ #category : #test }
DDServerTest >> testTopLevelChannels2 [
	"Tist test checks if topLevelChannels' getter and setter works given an input"
	| aDDServer aSet aDDChannel|
	aDDServer := DDServer new.
	aSet := Set new.
	aDDChannel := DDChannel new.
	
	aSet add: aDDChannel.	
	aDDServer topLevelChannels: aSet.
	
	self assert: (aDDServer topLevelChannels) equals: aSet.
]
