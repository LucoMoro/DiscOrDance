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
	"this test checks if aDDAuthor has some categories without initializing the activeCategories array"
	| aDDAuthor |
	aDDAuthor  := DDAuthor new.

	self assert: (aDDAuthor activeCategories ) equals: Set new.
]

{ #category : #test }
DDAuthorTest >> testActiveCategories2 [
	"this test checks if aDDAuthor is in some categories initializing the activeCategories array"
	| aDDAuthor aDDCategory aSet|
	aDDAuthor := DDAuthor new.
	aDDCategory := DDCategory new.
	aSet := Set new.
	
	aDDAuthor addActiveCategory: aDDCategory.
	aSet add: aDDCategory.

	self assert: (aDDAuthor activeCategories) equals: aSet.
	
]

{ #category : #test }
DDAuthorTest >> testActiveChannels [
	"this test checks if aDDAuthor is in some channels without initializing the activeChannels array"
	| aDDAuthor |
	aDDAuthor  := DDAuthor new.

	self assert: (aDDAuthor activeChannels ) equals: Set new.
	
]

{ #category : #test }
DDAuthorTest >> testActiveChannels2 [
	"this test checks if aDDAuthor is in some channels initializing the activeChannels array"
	| aDDAuthor aDDChannel aSet|
	aDDAuthor := DDAuthor new.
	aDDChannel := DDCategory new.
	aSet := Set new.
	
	aDDAuthor addActiveChannel: aDDChannel.
	aSet add: aDDChannel.

	self assert: (aDDAuthor activeChannels) equals: aSet.
]

{ #category : #test }
DDAuthorTest >> testActivityHistogramByDays [
	"This test checks if activityHistogramByDays's input & outputs are correct"
	| aDDAuthor aRSChartMock |
	aDDAuthor := DDAuthor new.
	aRSChartMock := Mock new.
	
	(aDDAuthor stub activityHistogramByDays: 3) willReturn: aRSChartMock.
	
	self
		assert: (aDDAuthor activityHistogramByDays: 3) equals: aRSChartMock.
	
]

{ #category : #test }
DDAuthorTest >> testAddActiveCategory [
	"this test checks if aDDAuthor is in some categories initializing the activeCategories array."
	| aDDAuthor aDDCategory aSet|
	aDDAuthor := DDAuthor new.
	aDDCategory := DDCategory new.
	aSet := Set new.
	
	aDDAuthor addActiveCategory: aDDCategory.
	aDDAuthor addActiveCategory: aDDCategory.
	aDDAuthor addActiveCategory: aDDCategory.
	aSet add: aDDCategory.
	aSet add: aDDCategory.
	aSet add: aDDCategory.

	self assert: (aDDAuthor activeCategories) equals: aSet.
]

{ #category : #test }
DDAuthorTest >> testAddActiveChannel [
	"this test checks if aDDAuthor is in some channels initializing the activeChannels array."
	| aDDAuthor aDDChannel aSet|
	aDDAuthor := DDAuthor new.
	aDDChannel := DDCategory new.
	aSet := Set new.
	
	aDDAuthor addActiveChannel: aDDChannel.
	aDDAuthor addActiveChannel: aDDChannel.
	aDDAuthor addActiveChannel: aDDChannel.
	aSet add: aDDChannel.
	aSet add: aDDChannel.
	aSet add: aDDChannel.

	self assert: (aDDAuthor activeChannels) equals: aSet.
]

{ #category : #test }
DDAuthorTest >> testAddSentMessage [
	"this test checks if aDDAuthor has messages initializing the sentMessages array"
	| aDDAuthor aDDMessageMock|
	aDDAuthor  := DDAuthor new.
	aDDMessageMock := Mock new.
	
	(aDDMessageMock stub author: aDDAuthor) willReturn: aDDAuthor.
	
	aDDAuthor addSentMessage: aDDMessageMock.
	aDDAuthor addSentMessage: aDDMessageMock.
	aDDAuthor addSentMessage: aDDMessageMock.

	self assert: (aDDAuthor hasMessages ) equals: true.
]

{ #category : #test }
DDAuthorTest >> testAvatar [
	 "This test checks if DDAuthor can be created without avatar"
	 | aDDAuthor |
	 aDDAuthor := DDAuthor new.

    self 
		assert: (aDDAuthor avatar) equals: DDAuthor defaultAvatar.

]

{ #category : #test }
DDAuthorTest >> testAvatar2 [
	 "This test checks if DDAuthor can be created with an avatar"
	 | aDDAuthor |
	 aDDAuthor := DDAuthor new.
	 aDDAuthor avatar: 'user-avatar'.	

    self 
		assert: (aDDAuthor avatar) equals: 'user-avatar'.


]

{ #category : #test }
DDAuthorTest >> testAvatarHash [
	"This test checks the DDAuthor avatarHash getter and setter"
	 | aDDAuthor |
	 aDDAuthor := DDAuthor new.
	 aDDAuthor avatarHash: 'https://cdn.discordapp.com/avatars/user-id/avatar-id.webp?size=1024'.
    self 
		assert: (aDDAuthor avatarHash) 
		equals: 'https://cdn.discordapp.com/avatars/user-id/avatar-id.webp?size=1024'.

]

{ #category : #test }
DDAuthorTest >> testAvatarUrl [
	"This test checks the DDAuthor avatarUrl method given a correct path"
	| aDDAuthor aDSUser znEasyMock aColorForm |
	aDDAuthor := DDAuthor new.
	aDSUser := DSUser new.
	znEasyMock := Mock new.
	aColorForm := ColorForm new.
	
	aColorForm setExtent: 256@256 depth: 8.
	
	aDSUser id: 'aDSuser-id'.
	aDSUser avatarHash: 'a_dsuser-test'.
	
	(znEasyMock stub getPng: 'https://discordapp.com/assets/322c936a8c8be1b803cd94861bdfa868.png') 
		willReturn: aColorForm.
	aDDAuthor avatarUrl: znEasyMock.
			
	self
		assert: (aDSUser hasAvatar) equals: true;
		assert: (aDDAuthor hasAvatar) equals: true.
	
	"(anAuthorMock avatarUrl: aDSUser) should be: 'https://discordapp.com/assets/322c936a8c8be1b803cd94861bdfa868.png'."
"anAuthorMock should receive avatarUrl: aDSUser."	
	
]

{ #category : #test }
DDAuthorTest >> testAvatarUrl2 [
	"This test checks the DDAuthor avatarUrl method given an incorrect path"
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
	
	self
		assert: (aDSUser hasAvatar) equals: true;
		assert: (aDDAuthor hasAvatar) equals: true.
]

{ #category : #test }
DDAuthorTest >> testAvatarUrl3 [
	"This test checks the DDAuthor avatarUrl method if the avatar hasn't an avatarHash"
	| aDDAuthor aDSUser|
	aDDAuthor := DDAuthor new.
	aDSUser := DSUser new.
	aDSUser avatarHash: nil.
	
	aDDAuthor avatarUrl: aDSUser.
	
	self 
		assert: (aDDAuthor avatar) equals: DDAuthor defaultAvatar.

]

{ #category : #test }
DDAuthorTest >> testFirstMessage [
	"This test checks if the first message is the only message that aDDAuthor has"
	| aDDAuthor aDDMessage |
	aDDAuthor := DDAuthor new.
	aDDMessage := Mock new.	
		
	aDDAuthor stub firstMessage willReturn: aDDMessage.
	
	self
		assert: (aDDAuthor firstMessage) equals: aDDMessage.
]

{ #category : #test }
DDAuthorTest >> testHasAvatar [
	"Thsi test checks if aDDAuthor has an avatar"
	| aDDAuthor |
	aDDAuthor := DDAuthor new.
	
	self
		assert: (aDDAuthor hasAvatar) equals: true.
]

{ #category : #test }
DDAuthorTest >> testHasMessages [
	"this test checks if aDDAuthor has messages without initializing the sentMessages array"
	| aDDAuthor |
	aDDAuthor  := DDAuthor new.

	self assert: (aDDAuthor hasMessages ) equals: false.

]

{ #category : #test }
DDAuthorTest >> testHasMessages2 [
	"this test checks if aDDAuthor has messages initializing the sentMessages array"
	| aDDAuthor aDDMessageMock|
	aDDAuthor  := DDAuthor new.
	aDDMessageMock := Mock new.
	
	(aDDMessageMock stub author: aDDAuthor) willReturn: aDDAuthor.
	
	aDDAuthor addSentMessage: aDDMessageMock.

	self assert: (aDDAuthor hasMessages ) equals: true.
]

{ #category : #test }
DDAuthorTest >> testId [
	"This method checks if aDDAuthor has a default id"
	| aDDAuthor |
	aDDAuthor := DDAuthor new.
	

	self
		assert: (aDDAuthor id) equals: nil.
]

{ #category : #test }
DDAuthorTest >> testId2 [
	"This method checks if aDDAuthor has a default id"
	| aDDAuthor |
	aDDAuthor := DDAuthor new.
	
	aDDAuthor id: 'user-id'.
	
	self
		assert: (aDDAuthor id) equals: 'user-id'.
]

{ #category : #test }
DDAuthorTest >> testIsActive [
	"this test checks if aDDAuthor is active without initializing the sentMessages array"
	| aDDAuthor |
	aDDAuthor  := DDAuthor new.

	self assert: (aDDAuthor isActive) equals: false.
]

{ #category : #test }
DDAuthorTest >> testIsActive2 [
	"this test checks if aDDAuthor is active initializing the sentMessages array"
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
	"this test checks if aDDAuthor is member without initializing the server array"
	| aDDAuthor aSet|
	aDDAuthor  := DDAuthor new.
	aSet := Set new.
	
	aDDAuthor server: 'user-server'.
	(aDDAuthor server stub members) willReturn: aSet.
	
	self assert: (aDDAuthor isMember) equals: false.
]

{ #category : #test }
DDAuthorTest >> testIsMember2 [
	"this test checks if aDDAuthor is member of a server initializing the server array"
	| aDDAuthor aSet|
	aDDAuthor  := DDAuthor new.
	aSet := Set new.
	
	aSet add: aDDAuthor.
	aDDAuthor server: 'user-server'.
	(aDDAuthor server stub members) willReturn: aSet.
	
	self assert: (aDDAuthor isMember) equals: true.
]

{ #category : #test }
DDAuthorTest >> testLastMessage [
	"This test checks if the last message is the only message that aDDAuthor has"
	| aDDAuthor aDDMessageMock |
	aDDAuthor := DDAuthor new.
	aDDMessageMock := Mock new.	
		
	aDDAuthor stub lastMessage willReturn: aDDMessageMock.
	
	self
		assert: (aDDAuthor lastMessage) equals: aDDMessageMock.
]

{ #category : #test }
DDAuthorTest >> testMergedInto [
	"This test checks aDDAuthor's mergedInto: method"
	| aDDAuthor aDDMergedAuthor |
	aDDAuthor := DDAuthor new.
	aDDMergedAuthor := DDMergedAuthor new.
	
	aDDAuthor mergedInto: aDDMergedAuthor.
	
	self
		assert: (aDDAuthor mergedInto) equals: aDDMergedAuthor.
	

]

{ #category : #test }
DDAuthorTest >> testMessageCreationDates [
	"Test that checks if aDDAuthor's messageCreationDates method returns an empty list if sentMessages is 	not initialized"
	| aDDAuthor |
	aDDAuthor := DDAuthor new.

	aDDAuthor messageCreationDates.

	self
		assert: (aDDAuthor sentMessages) equals: OrderedCollection new.
	
	
]

{ #category : #test }
DDAuthorTest >> testMessageCreationDates2 [
	"Test that checks if aDDAuthor's messageCreationDates method returns an ordered list if sentMessages 	is initialized"
	| aDDAuthor aDDMessageMock anOrderedCollection |
	aDDAuthor := DDAuthor new.
	aDDMessageMock := Mock new.
	anOrderedCollection := OrderedCollection new.

	(aDDMessageMock stub author: aDDAuthor) willReturn: aDDAuthor.
	
	aDDAuthor addSentMessage: aDDMessageMock.
	aDDAuthor addSentMessage: aDDMessageMock.
	aDDAuthor addSentMessage: aDDMessageMock.
	aDDAuthor messageCreationDates.
	
	anOrderedCollection add: aDDMessageMock.
	anOrderedCollection add: aDDMessageMock.
	anOrderedCollection add: aDDMessageMock.

	self
		assert: (aDDAuthor sentMessages) equals: anOrderedCollection.
	
	
]

{ #category : #test }
DDAuthorTest >> testMessagesByDay [
	"Test that checks if aDDAuthor's messagesByDay method returns an emptyList if sentMessages is not 	initialized"
	| aDDAuthor |
	aDDAuthor := DDAuthor new.
	
	aDDAuthor messagesByDay.

	self
		assert: (aDDAuthor sentMessages) equals: OrderedCollection new.
	
	
]

{ #category : #test }
DDAuthorTest >> testMessagesByDay2 [
	"Test that checks if aDDAuthor's messagesByDay method returns an ordered list if sentMessages is 	initialized"
	| aDDAuthor aDDMessageMock anOrderedCollection |
	aDDAuthor := DDAuthor new.
	aDDMessageMock := Mock new.
	anOrderedCollection := OrderedCollection new.

	(aDDMessageMock stub author: aDDAuthor) willReturn: aDDAuthor.
	
	aDDAuthor addSentMessage: aDDMessageMock.
	aDDAuthor addSentMessage: aDDMessageMock.
	aDDAuthor addSentMessage: aDDMessageMock.
	aDDAuthor messagesByDay.
	
	anOrderedCollection add: aDDMessageMock.
	anOrderedCollection add: aDDMessageMock.
	anOrderedCollection add: aDDMessageMock.

	self
		assert: (aDDAuthor sentMessages) equals: anOrderedCollection.
	
	
]

{ #category : #test }
DDAuthorTest >> testNickname [
	"This method checks if nickname's getter and setter of aDDAuthor works without giving any input"
	| aDDAuthor |
	aDDAuthor := DDAuthor new.
	
	self
		assert: (aDDAuthor nickname) equals: nil.
]

{ #category : #test }
DDAuthorTest >> testNickname2 [
	"This method checks if nickname's getter and setter of aDDAuthor works given an input"
	| aDDAuthor |
	aDDAuthor := DDAuthor new.
	
	aDDAuthor nickname: 'user-nickname'.
	
	self
		assert: (aDDAuthor nickname) equals: 'user-nickname'.
]

{ #category : #test }
DDAuthorTest >> testNumberOfSentMessages [
	"this test checks if the numer of messages is equal to 0 if aDDAuthor does not send messages"
	| aDDAuthor |
	aDDAuthor  := DDAuthor new.

	self assert: (aDDAuthor numberOfSentMessages ) equals: 0.

]

{ #category : #test }
DDAuthorTest >> testNumberOfSentMessages2 [
	"this test checks if the numer of messages is equal to k if aDDAuthor has sent k messages"
	"k can be any number greater than 0."
	| aDDAuthor aDDMessageMock|
	aDDAuthor  := DDAuthor new.
	aDDMessageMock := Mock new.
	
	(aDDMessageMock stub author: aDDAuthor) willReturn: aDDAuthor.
	
	aDDAuthor addSentMessage: aDDMessageMock.
	aDDAuthor addSentMessage: aDDMessageMock.
	aDDAuthor addSentMessage: aDDMessageMock.

	self assert: (aDDAuthor numberOfSentMessages ) equals: 3.
]

{ #category : #test }
DDAuthorTest >> testRoles [
	"This method checks if roles's getter and setter of aDDAuthor works without giving any input"
	| aDDAuthor |
	aDDAuthor := DDAuthor new.
	

	self
		assert: (aDDAuthor roles) equals: Set new.
]

{ #category : #test }
DDAuthorTest >> testRoles2 [
	"This method checks if roles's getter and setter of aDDAuthor works given an input"
	| aDDAuthor aSet|
	aDDAuthor := DDAuthor new.
	aSet := Set new.
	
	aSet add: 'user-role'.
	
	aDDAuthor roles: 'user-role'.
	

	self
		assert: (aDDAuthor roles) equals: 'user-role'.
]

{ #category : #test }
DDAuthorTest >> testSentMessages [
	"Test that checks if aDDAuthor's sentMessages method works without assigning any message to aDDAuthor"
	| aDDAuthor |
	aDDAuthor := DDAuthor new.

	self
		assert: (aDDAuthor sentMessages) equals: OrderedCollection new.
	

]

{ #category : #test }
DDAuthorTest >> testSentMessages2 [
	"Test that checks if aDDAuthor's sentMessages method works assigning a messsage to aDDAuthor"
	| aDDAuthor aDDMessageMock anOrderedCollection |
	aDDAuthor := DDAuthor new.
	aDDMessageMock := Mock new.	
	anOrderedCollection := OrderedCollection new.
		
	aDDAuthor stub firstMessage willReturn: aDDMessageMock.
	aDDAuthor addSentMessage: aDDMessageMock.
	anOrderedCollection add: aDDMessageMock.
	
	self
		assert: (aDDAuthor sentMessages) equals: anOrderedCollection.
]

{ #category : #test }
DDAuthorTest >> testServer [
	"This method checks if server's getter and setter of aDDAuthor works without giving any input"
	| aDDAuthor |
	aDDAuthor := DDAuthor new.
	

	self
		assert: (aDDAuthor server) equals: nil.
]

{ #category : #test }
DDAuthorTest >> testServer2 [
	"This method checks if server's getter and setter of aDDAuthor works without given an input"
	| aDDAuthor |
	aDDAuthor := DDAuthor new.
	
	aDDAuthor server: 'user-server'.

	self
		assert: (aDDAuthor server) equals: 'user-server'.
]

{ #category : #test }
DDAuthorTest >> testUniqueName [
	"This method checks if uniqueName's getter and setter of aDDAuthor works without giving any input"
	| aDDAuthor |
	aDDAuthor := DDAuthor new.
	

	self
		assert: (aDDAuthor uniqueName) equals: nil.
]

{ #category : #test }
DDAuthorTest >> testUniqueName2 [
	"This method checks if uniqueName's getter and setter of aDDAuthor works given an input"
	| aDDAuthor |
	aDDAuthor := DDAuthor new.
	
	aDDAuthor uniqueName: 'unique'.
	

	self
		assert: (aDDAuthor uniqueName) equals: 'unique'.
]
