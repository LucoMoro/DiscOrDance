"
A DDAuthorTest is a test class for testing the behavior of DDAuthor
"
Class {
	#name : #DDAuthorTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDAuthorTest >> testActiveCategories [
	"this method checks if addActiveCategories works without initializing the array"
	
	| aDDAuthor |
	aDDAuthor  := DDAuthor new.

	self assert: aDDAuthor activeCategories equals: Set new.
]

{ #category : #test }
DDAuthorTest >> testActiveCategories2 [
	"this method checks if addActiveCategories works initializing the array with a DDCategory"
	| aDDAuthor aDDCategory aSet|
	aDDAuthor := DDAuthor new.
	aDDCategory := DDCategory new.
	aSet := Set new.
	
	aDDAuthor addActiveCategory: aDDCategory.
	aSet add: aDDCategory.

	self assert: aDDAuthor activeCategories equals: aSet.
	
]

{ #category : #test }
DDAuthorTest >> testActiveChannels [
	"this method checks if addActiveChannels works without initializing the array"
	
	| aDDAuthor |
	aDDAuthor := DDAuthor new.

	self assert: aDDAuthor activeChannels equals: Set new.
	
]

{ #category : #test }
DDAuthorTest >> testActiveChannels2 [
	"this method checks if addActiveChannels works initializing the array with a DDChannel"
	
	| aDDAuthor aDDChannel aSet|
	aDDAuthor := DDAuthor new.
	aDDChannel := DDChannel new.
	aSet := Set new.
	
	aDDAuthor addActiveChannel: aDDChannel.
	aSet add: aDDChannel.

	self assert: aDDAuthor activeChannels equals: aSet.
]

{ #category : #test }
DDAuthorTest >> testActivitySorted [
	"This method checks if activitySorted works properly given two Authors without sent messages"
	
	| aFirstDDAuthor aSecondDDAuthor anOrderedCollection aCollectionOfDDAuthor |
	aFirstDDAuthor := DDAuthor new.
	aSecondDDAuthor := DDAuthor new.
	anOrderedCollection := OrderedCollection new.
	aCollectionOfDDAuthor := OrderedCollection new.
	
	aFirstDDAuthor name: 'First'.
	aSecondDDAuthor name: 'Second'.
	
	anOrderedCollection add: aFirstDDAuthor.
 	anOrderedCollection add: aSecondDDAuthor.
	
	aCollectionOfDDAuthor add: aSecondDDAuthor.
	aCollectionOfDDAuthor add: aFirstDDAuthor.

	self assert: (DDAuthor activitySorted: aCollectionOfDDAuthor) equals: anOrderedCollection.

]

{ #category : #test }
DDAuthorTest >> testActivitySorted2 [
	"This method checks if activitySorted works properly given two Authors and a message sent only by one of them"
	
	| aFirstDDAuthor aSecondDDAuthor aDDMessage anOrderedCollection aCollectionOfDDAuthor |
	aFirstDDAuthor := DDAuthor new.
	aSecondDDAuthor := DDAuthor new.
	aDDMessage := DDMessage new.
	anOrderedCollection := OrderedCollection new.
	aCollectionOfDDAuthor := OrderedCollection new.
	
	aFirstDDAuthor name: 'First'.
	aSecondDDAuthor name: 'Second'.
	aDDMessage author: aFirstDDAuthor.
	
	anOrderedCollection add: aFirstDDAuthor.
 	anOrderedCollection add: aSecondDDAuthor.
	
	aCollectionOfDDAuthor add: aSecondDDAuthor.
	aCollectionOfDDAuthor add: aFirstDDAuthor.

	self assert: (DDAuthor activitySorted: aCollectionOfDDAuthor) equals: anOrderedCollection.
]

{ #category : #test }
DDAuthorTest >> testActivitySorted3 [
	"This method checks if activitySorted works properly given two Authors and a message sent by both of them"
	
	| aFirstDDAuthor aSecondDDAuthor aFirstDDMessage aSecondDDMessage aThirdDDMessage anOrderedCollection aCollectionOfDDAuthor |
	aFirstDDAuthor := DDAuthor new.
	aSecondDDAuthor := DDAuthor new.
	aFirstDDMessage := DDMessage new.
	aSecondDDMessage := DDMessage new.
	aThirdDDMessage := DDMessage new.
	anOrderedCollection := OrderedCollection new.
	aCollectionOfDDAuthor := OrderedCollection new.
	
	aFirstDDAuthor name: 'First'.
	aSecondDDAuthor name: 'Second'.
	aFirstDDMessage author: aFirstDDAuthor.
	aSecondDDMessage author: aSecondDDAuthor.
	aThirdDDMessage author: aSecondDDAuthor.
	
	anOrderedCollection add: aFirstDDAuthor.
 	anOrderedCollection add: aSecondDDAuthor.
	
	aCollectionOfDDAuthor add: aSecondDDAuthor.
	aCollectionOfDDAuthor add: aFirstDDAuthor.

	self assert: (DDAuthor activitySorted: aCollectionOfDDAuthor) equals: anOrderedCollection.
]

{ #category : #test }
DDAuthorTest >> testAddActiveCategory [
	"this method checks if addActiveCategory works initializing the array with a DDcategory"
	
	| aDDAuthor aDDCategory aSet|
	aDDAuthor := DDAuthor new.
	aDDCategory := DDCategory new.
	aSet := Set new.
	
	aDDAuthor addActiveCategory: aDDCategory.
	aSet add: aDDCategory.

	self assert: aDDAuthor activeCategories equals: aSet.
]

{ #category : #test }
DDAuthorTest >> testAddActiveChannel [
	"this method checks if addActiveChannel works initializing the array with a DDchannel"
		
	| aDDAuthor aDDChannel aSet|
	aDDAuthor := DDAuthor new.
	aDDChannel := DDChannel new.
	aSet := Set new.
	
	aDDAuthor addActiveChannel: aDDChannel.
	aSet add: aDDChannel.

	self assert: aDDAuthor activeChannels equals: aSet.
]

{ #category : #test }
DDAuthorTest >> testAddSentMessage [
	"this method checks if addSentMessages works without initializing the array"
	
	| aDDAuthor aDDMessageMock|
	aDDAuthor  := DDAuthor new.
	aDDMessageMock := Mock new.
	
	(aDDMessageMock stub author: aDDAuthor) willReturn: aDDAuthor.
	aDDAuthor addSentMessage: aDDMessageMock.
	
	self assert: aDDAuthor hasMessages equals: true.
]

{ #category : #test }
DDAuthorTest >> testAlphaSorted [
	"This method checks if activitySorted works properly given two Authors and a message sent by both of them"
	
	| aFirstDDAuthor aSecondDDAuthor anOrderedCollection aCollectionOfDDAuthor |
	aFirstDDAuthor := DDAuthor new.
	aSecondDDAuthor := DDAuthor new.
	anOrderedCollection := OrderedCollection new.
	aCollectionOfDDAuthor := OrderedCollection new.
	
	aFirstDDAuthor name: 'first'.
	aSecondDDAuthor name: 'second'.
	
	anOrderedCollection add: aFirstDDAuthor.
 	anOrderedCollection add: aSecondDDAuthor.
	
	aCollectionOfDDAuthor add: aSecondDDAuthor.
	aCollectionOfDDAuthor add: aFirstDDAuthor.

	self assert: (DDAuthor alphaSorted: aCollectionOfDDAuthor) equals: anOrderedCollection.
]

{ #category : #test }
DDAuthorTest >> testAvatar [
	 "This method checks if DDAuthor can be created without an avatar"
	
	 | aDDAuthor |
	 aDDAuthor := DDAuthor new.

    self assert: aDDAuthor avatar equals: DDAuthor defaultAvatar.

]

{ #category : #test }
DDAuthorTest >> testAvatar2 [
	 "This method checks if DDAuthor can be created with an avatar"
	
	 | aDDAuthor |
	 aDDAuthor := DDAuthor new.
	
	 aDDAuthor avatar: 'user-avatar'.	

    self assert: aDDAuthor avatar equals: 'user-avatar'.


]

{ #category : #test }
DDAuthorTest >> testAvatarHash [
	"This method checks if avatarHash getter and setter works given an input"
	
	 | aDDAuthor |
	 aDDAuthor := DDAuthor new.
	
	 aDDAuthor avatarHash: 'https://cdn.discordapp.com/avatars/user-id/avatar-id.webp?size=1024'.
	
    self 	assert: aDDAuthor avatarHash
			equals: 'https://cdn.discordapp.com/avatars/user-id/avatar-id.webp?size=1024'.

]

{ #category : #test }
DDAuthorTest >> testAvatarUrl [
	"This test checks if avatarUrl works given a correct path"
	
	| aDDAuthor aDSUser znEasyMock aColorForm |
	aDDAuthor := DDAuthor new.
	aDSUser := DSUser new.
	znEasyMock := Mock new.
	aColorForm := ColorForm new.
	
	aColorForm setExtent: 256@256 depth: 8.
	aDSUser id: 'aDSuser-id'.
	aDSUser avatarHash: 'a_dsuser-test'.
	(znEasyMock stub getPng: 'https://discordapp.com/assets/322c936a8c8be1b803cd94861bdfa868.png')
	willReturn: 	aColorForm.
	aDDAuthor avatarUrl: znEasyMock.
			
	self assert: aDDAuthor hasAvatar equals: true.

]

{ #category : #test }
DDAuthorTest >> testAvatarUrl2 [
	"This method checks if avatarUrl works given an incorrect path"
	
	| aDDAuthor aDSUser znEasyMock aColorForm |
	aDDAuthor := DDAuthor new.
	aDSUser := DSUser new.
	znEasyMock := Mock new.
	aColorForm := ColorForm new.
	
	aColorForm setExtent: 256@256 depth: 8.
	aDSUser id: 'aDSuser-id'.
	aDSUser avatarHash: 'a_dsuser-test'.
	(znEasyMock stub getPng: 'https://cdn.discordapp.com/avatars/aDSuser-id/a_dsuser-test.png') 
	willReturn: aColorForm.
	aDDAuthor avatarUrl: znEasyMock.
		
	self assert: aDDAuthor hasAvatar equals: true.
]

{ #category : #test }
DDAuthorTest >> testAvatarUrl3 [
	"This method checks if avatarUrl method works if the avatar hasn't an avatarHash"
	
	| aDDAuthor aDSUser|
	aDDAuthor := DDAuthor new.
	aDSUser := DSUser new.
	
	aDSUser avatarHash: nil.
	aDDAuthor avatarUrl: aDSUser.
	
	self assert: aDDAuthor avatar equals: DDAuthor defaultAvatar.

]

{ #category : #test }
DDAuthorTest >> testFirstMessage [
	"This method checks if firstMessage returns the only message that aDDAuthor has"
	
	| aDDAuthor aDDMessageMock |
	aDDAuthor := DDAuthor new.
	aDDMessageMock := Mock new.	
		
	aDDAuthor addSentMessage: aDDMessageMock.
	(aDDMessageMock timeSorted: aDDAuthor sentMessages) willReturn: aDDMessageMock.
		
	self assert: aDDAuthor firstMessage equals: aDDMessageMock.
]

{ #category : #test }
DDAuthorTest >> testFirstMessage2 [
	"This method checks if firstMessage returns the only message that aDDAuthor has without mocking the 	DDMessage class"
	
	| aDDAuthor aDDMessage aSecondDDMessage |
	aDDAuthor := DDAuthor new.
	aDDMessage := DDMessage new.
	aSecondDDMessage := DDMessage new.
	
	aDDMessage createdAt: '05-06-23'.
	aSecondDDMessage createdAt: '04-06-23'.

	aDDAuthor addSentMessage: aDDMessage.
	aDDAuthor addSentMessage: aSecondDDMessage.	
		
	self assert: aDDAuthor firstMessage equals: aSecondDDMessage.
]

{ #category : #test }
DDAuthorTest >> testHasAvatar [
	"Thsi method checks if hasAvatar works properly"
	
	| aDDAuthor |
	aDDAuthor := DDAuthor new.
	
	self assert: aDDAuthor hasAvatar equals: true.
]

{ #category : #test }
DDAuthorTest >> testHasMessages [
	"this method checks if hasMessages works without initializing the sentMessages array"
	
	| aDDAuthor |
	aDDAuthor  := DDAuthor new.

	self assert: aDDAuthor hasMessages equals: false.

]

{ #category : #test }
DDAuthorTest >> testHasMessages2 [
	"this method checks if hasMessages works initializing the sentMessages array"
	
	| aDDAuthor aDDMessageMock|
	aDDAuthor  := DDAuthor new.
	aDDMessageMock := Mock new.
	
	(aDDMessageMock stub author: aDDAuthor) willReturn: aDDAuthor.
	aDDAuthor addSentMessage: aDDMessageMock.

	self assert: aDDAuthor hasMessages equals: true.
]

{ #category : #test }
DDAuthorTest >> testId [
	"This method checks if id's getter works without giving any input"
	
	| aDDAuthor |
	aDDAuthor := DDAuthor new.
	
	self assert: aDDAuthor id equals: nil.
]

{ #category : #test }
DDAuthorTest >> testId2 [
	"This method checks if id's getter and setter works given an input"
	
	| aDDAuthor |
	aDDAuthor := DDAuthor new.
	
	aDDAuthor id: 'user-id'.
	
	self assert: aDDAuthor id equals: 'user-id'.
]

{ #category : #test }
DDAuthorTest >> testIsActive [
	"this method checks if isActiv's getter works without initializing the sentMessages array"
	
	| aDDAuthor |
	aDDAuthor  := DDAuthor new.

	self assert: aDDAuthor isActive equals: false.
]

{ #category : #test }
DDAuthorTest >> testIsActive2 [
	"this method checks if isActive's getter and setter initializing the sentMessages array"
	
	| aDDAuthor aDDMessageMock|
	aDDAuthor  := DDAuthor new.
	aDDMessageMock := Mock new.
	
	(aDDMessageMock stub author: aDDAuthor) willReturn: aDDAuthor.
	aDDAuthor addSentMessage: aDDMessageMock.
	aDDAuthor addSentMessage: aDDMessageMock.
	aDDAuthor addSentMessage: aDDMessageMock.

	self assert: (aDDAuthor isActive) equals: true.
]

{ #category : #test }
DDAuthorTest >> testIsMember [
	"this method checks if isMember's getter works without initializing the server array"
	
	| aDDAuthor aSet|
	aDDAuthor  := DDAuthor new.
	aSet := Set new.
	
	aDDAuthor server: 'user-server'.
	(aDDAuthor server stub members) willReturn: aSet.
	
	self assert: aDDAuthor isMember equals: false.
]

{ #category : #test }
DDAuthorTest >> testIsMember2 [
	"this method checks if isMember's getter and setter works initializing the server array"
		
	| aDDAuthor aSet aDDServerMock|
	aDDAuthor  := DDAuthor new.
	aSet := Set new.
	aDDServerMock := Mock new.
	
	aSet add: aDDAuthor.
	aDDAuthor server: aDDServerMock.
	(aDDServerMock stub members) willReturn: aSet.
	
	self assert: aDDAuthor isMember equals: true.
]

{ #category : #test }
DDAuthorTest >> testIsMember3 [
	"this method checks if isMember's getter and setter works initializing the server array, without 	mocking the Server class "
		
	| aDDAuthor aSet aDDServer |
	aDDAuthor  := DDAuthor new.
	aSet := Set new.
	aDDServer := DDServer new.
	
	aSet add: aDDAuthor.
	aDDAuthor server: aDDServer.
	
	aDDServer members: aSet.
	
	self assert: aDDAuthor isMember equals: true.
]

{ #category : #test }
DDAuthorTest >> testLastMessage [
	"This method checks if lastMessage returns the only message that aDDAuthor has"
	
	| aDDAuthor aDDMessageMock |
	aDDAuthor := DDAuthor new.
	aDDMessageMock := Mock new.	
	
	aDDAuthor addSentMessage: aDDMessageMock.
	(aDDMessageMock timeSorted: aDDAuthor sentMessages) willReturn: aDDMessageMock.
	
	self assert: aDDAuthor lastMessage equals: aDDMessageMock.
]

{ #category : #test }
DDAuthorTest >> testLastMessage2 [
	"This method checks if lastMessage returns the only message that aDDAuthor has without moking the 	DDMessage class"
	
	| aDDAuthor aDDMessage aSecondDDMessage |
	aDDAuthor := DDAuthor new.
	aDDMessage := DDMessage new.
	aSecondDDMessage := DDMessage new.
	
	aDDMessage createdAt: '05-06-23'.
	aSecondDDMessage createdAt: '04-06-23'.

	aDDAuthor addSentMessage: aDDMessage.
	aDDAuthor addSentMessage: aSecondDDMessage.	
		
	self assert: aDDAuthor lastMessage equals: aDDMessage.
]

{ #category : #test }
DDAuthorTest >> testMergedInto [
	"This method checks mergedInto getter and setter works given an input"
	
	| aDDAuthor aDDMergedAuthor |
	aDDAuthor := DDAuthor new.
	aDDMergedAuthor := DDMergedAuthor new.
	
	aDDAuthor mergedInto: aDDMergedAuthor.
	
	self assert: aDDAuthor mergedInto equals: aDDMergedAuthor.
	

]

{ #category : #test }
DDAuthorTest >> testMessageCreationDates [
	"This method checks if messageCreationDates' getter works without initializing the sentMessages array"
		
	| aDDAuthor |
	aDDAuthor := DDAuthor new.

	aDDAuthor messageCreationDates.

	self assert: aDDAuthor sentMessages equals: OrderedCollection new.
	
	
]

{ #category : #test }
DDAuthorTest >> testMessageCreationDates2 [
	"This method checks if messageCreationDates' getter and setter works initializing the sentMessages array"
		
	| aDDAuthor aDDMessageMock anOrderedCollection |
	aDDAuthor := DDAuthor new.
	aDDMessageMock := Mock new.
	anOrderedCollection := OrderedCollection new.

	(aDDMessageMock stub author: aDDAuthor) willReturn: aDDAuthor.
	aDDAuthor addSentMessage: aDDMessageMock.
	aDDAuthor messageCreationDates.
	anOrderedCollection add: aDDMessageMock.

	self assert: aDDAuthor sentMessages equals: anOrderedCollection.
	
	
]

{ #category : #test }
DDAuthorTest >> testMessagesByDay [
	"This method checks if messagesByDay's works if sentMessages is not initialized"
		
	| aDDAuthor |
	aDDAuthor := DDAuthor new.
	
	aDDAuthor messagesByDay.

	self assert: aDDAuthor sentMessages equals: OrderedCollection new.
	
	
]

{ #category : #test }
DDAuthorTest >> testMessagesByDay2 [
	"This method checks if messagesByDay's method works if sentMessages is initialized"
		
	| aDDAuthor aDDMessageMock anOrderedCollection |
	aDDAuthor := DDAuthor new.
	aDDMessageMock := Mock new.
	anOrderedCollection := OrderedCollection new.

	(aDDMessageMock stub author: aDDAuthor) willReturn: aDDAuthor.
	aDDAuthor addSentMessage: aDDMessageMock.
	aDDAuthor messagesByDay.
	anOrderedCollection add: aDDMessageMock.

	self assert: aDDAuthor sentMessages equals: anOrderedCollection.
	
	
]

{ #category : #test }
DDAuthorTest >> testNickname [
	"This method checks if nickname's getter works without giving any input"
	
	| aDDAuthor |
	aDDAuthor := DDAuthor new.
	
	self assert: aDDAuthor nickname equals: nil.
]

{ #category : #test }
DDAuthorTest >> testNickname2 [
	"This method checks if nickname's getter and setter works given an input"
	
	| aDDAuthor |
	aDDAuthor := DDAuthor new.
	
	aDDAuthor nickname: 'user-nickname'.
	
	self assert: aDDAuthor nickname equals: 'user-nickname'.
]

{ #category : #test }
DDAuthorTest >> testNumberOfSentMessages [
	"This method checks if the numerOfMessages works if aDDAuthor does not send messages"
	
	| aDDAuthor |
	aDDAuthor  := DDAuthor new.

	self assert: aDDAuthor numberOfSentMessages equals: 0.

]

{ #category : #test }
DDAuthorTest >> testNumberOfSentMessages2 [
	"This method checks if the numerOfMessages works if aDDAuthor has sent k messages"
	"k can be any number greater than 0."
	
	| aDDAuthor aDDMessageMock|
	aDDAuthor  := DDAuthor new.
	aDDMessageMock := Mock new.
	
	(aDDMessageMock stub author: aDDAuthor) willReturn: aDDAuthor.
	aDDAuthor addSentMessage: aDDMessageMock.

	self assert: aDDAuthor numberOfSentMessages equals: 1.
]

{ #category : #test }
DDAuthorTest >> testRoles [
	"This method checks if roles's getter works without giving any input"
	
	| aDDAuthor |
	aDDAuthor := DDAuthor new.

	self assert: aDDAuthor roles equals: Set new.
]

{ #category : #test }
DDAuthorTest >> testRoles2 [
	"This method checks if roles's getter and setter works given an input"
	
	| aDDAuthor aSet|
	aDDAuthor := DDAuthor new.
	aSet := Set new.
	
	aSet add: 'user-role'.
	aDDAuthor roles: 'user-role'.

	self assert: aDDAuthor roles equals: 'user-role'.
]

{ #category : #test }
DDAuthorTest >> testSentMessages [
	"This method checks if sentMessages method works without assigning any message to aDDAuthor"
		
	| aDDAuthor |
	aDDAuthor := DDAuthor new.

	self assert: aDDAuthor sentMessages equals: OrderedCollection new.
	

]

{ #category : #test }
DDAuthorTest >> testSentMessages2 [
	"This method checks if sentMessages works assigning a messsage to aDDAuthor"
	
	| aDDAuthor aDDMessageMock anOrderedCollection |
	aDDAuthor := DDAuthor new.
	aDDMessageMock := Mock new.	
	anOrderedCollection := OrderedCollection new.
		
	aDDAuthor addSentMessage: aDDMessageMock.
	(aDDMessageMock timeSorted: aDDAuthor sentMessages) willReturn: aDDMessageMock.
	anOrderedCollection add: aDDMessageMock.
	
	self assert: aDDAuthor sentMessages equals: anOrderedCollection.
]

{ #category : #test }
DDAuthorTest >> testServer [
	"This method checks if server's getter works without giving any input"
	
	| aDDAuthor |
	aDDAuthor := DDAuthor new.	

	self assert: aDDAuthor server equals: nil.
]

{ #category : #test }
DDAuthorTest >> testServer2 [
	"This method checks if server's getter and setter works without given an input"
	
	| aDDAuthor |
	aDDAuthor := DDAuthor new.
	
	aDDAuthor server: 'user-server'.

	self	assert: aDDAuthor server equals: 'user-server'.
]

{ #category : #test }
DDAuthorTest >> testUniqueName [
	"This method checks if uniqueName's getter works without giving any input"
	
	| aDDAuthor |
	aDDAuthor := DDAuthor new.
	
	self assert: aDDAuthor uniqueName equals: nil.
]

{ #category : #test }
DDAuthorTest >> testUniqueName2 [
	"This method checks if uniqueName's getter and setter works given an input"
	
	| aDDAuthor |
	aDDAuthor := DDAuthor new.
	
	aDDAuthor uniqueName: 'unique'.

	self assert: aDDAuthor uniqueName equals: 'unique'.
]
