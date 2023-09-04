"
A DDMessageTest is a test class for testing the behavior of DDMessage
"
Class {
	#name : #DDMessageTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #tests }
DDMessageTest >> testAddMention [
	"This method checks if addMessage's first branch"
	
	| aDDMessage aDDMentionMock anOrderedCollection |
	aDDMessage := DDMessage new.
	aDDMentionMock := Mock new.
	anOrderedCollection := OrderedCollection new.
	
	(aDDMentionMock stub isKindOf: DDRoleMention) willReturn: true.
	aDDMessage addMention: aDDMentionMock.
	anOrderedCollection add: aDDMentionMock.
	
	self assert: aDDMessage roleMentions equals: anOrderedCollection.
	

]

{ #category : #tests }
DDMessageTest >> testAddMention2 [
	"This method checks if addMessage's second branch"
	
	| aDDMessage aDDMentionMock anOrderedCollection |
	aDDMessage := DDMessage new.
	aDDMentionMock := Mock new.
	anOrderedCollection := OrderedCollection new.
	
	(aDDMentionMock stub isKindOf: DDChannelMention) willReturn: true.
	aDDMessage addMention: aDDMentionMock.
	anOrderedCollection add: aDDMentionMock.
	
	self assert: aDDMessage channelMentions equals: anOrderedCollection.
	

]

{ #category : #tests }
DDMessageTest >> testAddMention3 [
	"This method checks if addMessage's third branch"
	
	| aDDMessage aDDMentionMock anOrderedCollection |
	aDDMessage := DDMessage new.
	aDDMentionMock := Mock new.
	anOrderedCollection := OrderedCollection new.
	
	(aDDMentionMock stub isKindOf: DDUserMention) willReturn: true.
	aDDMessage addMention: aDDMentionMock.
	anOrderedCollection add: aDDMentionMock.
	
	self assert: aDDMessage userMentions equals: anOrderedCollection.
	

]

{ #category : #tests }
DDMessageTest >> testAddMention4 [
	"This method checks if addMessage's fourth branch"
	
	| aDDMessage aDDMentionMock anOrderedCollection |
	aDDMessage := DDMessage new.
	aDDMentionMock := Mock new.
	anOrderedCollection := OrderedCollection new.
	
	(aDDMentionMock stub isKindOf: DDSpecialMention) willReturn: true.
	aDDMessage addMention: aDDMentionMock.
	anOrderedCollection add: aDDMentionMock.
	
	self assert: aDDMessage specialMentions equals: anOrderedCollection.
	

]

{ #category : #tests }
DDMessageTest >> testAddReply [
	"This method checks if addReply creates an empty array of replies without initializing it"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	self assert: aDDMessage replies equals: OrderedCollection new.
]

{ #category : #tests }
DDMessageTest >> testAddReply2 [
	"This method checks if addReply creates an array of replies if initialized"
	
	| aDDMessage aDDMessageReply anOrderedCollection |
	aDDMessage := DDMessage new.
	aDDMessageReply := DDMessage new.
	anOrderedCollection := OrderedCollection new.
	
	aDDMessage addReply: aDDMessageReply.
	anOrderedCollection add: aDDMessageReply.
	
	self assert: aDDMessage replies equals: anOrderedCollection.
]

{ #category : #tests }
DDMessageTest >> testAttachments [
	"This method checks if addAttachments' getter works without giving any input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	self assert: (aDDMessage attachments) equals: nil.
]

{ #category : #tests }
DDMessageTest >> testAttachments2 [
	"This method checks if addAttachments' getter and setter works given an input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage attachments: 'message-attachment'.
	
	self assert: aDDMessage attachments equals: 'message-attachment'.
]

{ #category : #tests }
DDMessageTest >> testAuthor [
	"This method checks if author's getter works without giving anyy input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.

	self assert: aDDMessage author equals: nil.
]

{ #category : #tests }
DDMessageTest >> testAuthor2 [
	"This method checks if author's getter and setter works given an input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage author: 'message-author'.
	
	self assert: aDDMessage author equals: 'message-author'.
]

{ #category : #tests }
DDMessageTest >> testChannelMentions [
	"This method checks if channelMentions' getter works without giving any input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	self assert: aDDMessage channelMentions equals: OrderedCollection new.
]

{ #category : #tests }
DDMessageTest >> testChannelMentions2 [
	"This method checks if channelMentions' getter and setter works given an input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage channelMentions: 'message-channelMentions'.
	
	self assert: aDDMessage channelMentions equals: 'message-channelMentions'.
]

{ #category : #tests }
DDMessageTest >> testCodeBlocks [
	"This method checks if codeBlocks' getter works without giving any input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	self assert: aDDMessage codeBlocks equals: nil.
]

{ #category : #tests }
DDMessageTest >> testCodeBlocks2 [
	"This method checks if codeBlocks' getter and setter works without given an input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage codeBlocks: 'message-codeBlock'.
	
	self assert: aDDMessage codeBlocks equals: 'message-codeBlock'.
]

{ #category : #tests }
DDMessageTest >> testCodeElementsForClasses [
	"This method checks if codeElementsForClass works properly"
	
	| aDDMessage anOrderedCollection aDDCodeMock|
	aDDMessage := DDMessage new.
	anOrderedCollection := OrderedCollection new.
	aDDCodeMock := Mock new.
	
	(aDDCodeMock stub codeSource) willReturn: ' Person {
    	private String name;
    	private int age;
    	}'.
	aDDMessage codeBlocks: aDDCodeMock.
	anOrderedCollection add: aDDMessage codeBlocks.
	aDDMessage codeElementsForClasses: anOrderedCollection.
	
	self assert: aDDMessage codeBlocks equals: aDDCodeMock.
]

{ #category : #tests }
DDMessageTest >> testContainerChannel [
	"This method checks if containerChannel's getter works without giving any input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	self assert: aDDMessage containerChannel equals: nil.
]

{ #category : #tests }
DDMessageTest >> testContainerChannel2 [
	"This method checks if containerChannel's getter and setter works given an input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage containerChannel: 'message-container'.
	
	self assert: aDDMessage containerChannel equals: 'message-container'.
]

{ #category : #tests }
DDMessageTest >> testContent [
	"This method checks if content's getter works without giving any input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	self assert: aDDMessage content equals: nil.
]

{ #category : #tests }
DDMessageTest >> testContent2 [
	"This method checks if content's getter and setter works given an input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage content: 'message-content'.
	
	self assert: aDDMessage content equals: 'message-content'.
]

{ #category : #tests }
DDMessageTest >> testCreatedAt [
	"This method checks if createdAt's getter works without giving any input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	self assert: aDDMessage createdAt equals: nil.
]

{ #category : #tests }
DDMessageTest >> testCreatedAt2 [
	"This method checks if createdAt's getter and setter works given an input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage createdAt: 'message-creation-time'.
	
	self assert: aDDMessage createdAt equals: 'message-creation-time'.
]

{ #category : #tests }
DDMessageTest >> testCreationDateAndTime [
	"This method checks if creationDateAndTime value can be a dateTime given an input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage createdAt: '12/08/23'.
	
	self assert: aDDMessage creationDateAndTime equals: '12/08/23' asDateAndTime.
]

{ #category : #tests }
DDMessageTest >> testEmbeds [
	"This method checks if embeds's getter works without giving any input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	self assert: aDDMessage id equals: nil.
]

{ #category : #tests }
DDMessageTest >> testEmbeds2 [
	"This method checks if embeds's getter and setter works given an input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage embeds: 'message-embeds'.
	
	self assert: aDDMessage embeds equals: 'message-embeds'.
]

{ #category : #tests }
DDMessageTest >> testHasCodeBlocks [
	"This method checks if hasCodeBlocks works properly if codeBlocks is initialized"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage codeBlocks: 'Person {
    	private String name;
    	private int age;
    	}'.
	
	self assert: aDDMessage hasCodeBlocks equals: true.
]

{ #category : #tests }
DDMessageTest >> testHasEmbeds [
	"This method checks if hasEmbeds works properly if embeds is initialized"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage embeds: 'message-embeds'.
	
	self assert: aDDMessage hasEmbeds equals: true.
]

{ #category : #tests }
DDMessageTest >> testHasPointsOfInterest [
	"This method checks if hasPointsOfInterest works properly if oointsOfInterest is initialized"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage pointsOfInterest: 'message-POIs'.
	
	self assert: aDDMessage hasPointsOfInterest equals: true.
]

{ #category : #tests }
DDMessageTest >> testHasSourceCode [
	"This method checks if hasSourceCode works properly if codeBlocks is initialized"
	
	| aDDMessage aDDCodeMock |
	aDDMessage := DDMessage new.
	aDDCodeMock := Mock new.
	
	(aDDCodeMock stub isSourceCode) willReturn: false.
	aDDMessage codeBlocks: aDDCodeMock.
	
	self assert: aDDMessage hasSourceCode equals: false.
]

{ #category : #tests }
DDMessageTest >> testId [
	"This method checks if id's getter works without giving any input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	self assert: aDDMessage id equals: nil.
]

{ #category : #tests }
DDMessageTest >> testId2 [
	"This method checks if id's getter and setter works given an input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage id: 'message-id'.
	
	self assert: aDDMessage id equals: 'message-id'.
]

{ #category : #tests }
DDMessageTest >> testIsInConversationWith [
	"This method checks if two messages are in conversation bases on the dateTime. The message's day is 	the same"
	
	| aDDMessage aSecondDDMessage aDDChannelMock |
	aDDMessage := DDMessage new.
	aSecondDDMessage := DDMessage new.
	aDDChannelMock := Mock new.
	
	aDDMessage createdAt: '12/08/23'.
	aSecondDDMessage createdAt: '12/08/23'.
	(aDDChannelMock stub class) willReturn: DDChannel.
	(DDChannel stub defaultConversationBreakTime) willReturn: (Duration hours: 2).	
	aDDMessage containerChannel: aDDChannelMock.
	
	self assert: (aDDMessage isInConversationWith: aSecondDDMessage) equals: true.
]

{ #category : #tests }
DDMessageTest >> testIsInConversationWith2 [
	"This method checks if two messages are in conversation bases on the dateTime. The message's day is 	different"
	
	| aDDMessage aSecondDDMessage aDDChannelMock |
	aDDMessage := DDMessage new.
	aSecondDDMessage := DDMessage new.
	aDDChannelMock := Mock new.
	
	aDDMessage createdAt: '12/03/23'.
	aSecondDDMessage createdAt: '12/08/23'.
	(aDDChannelMock stub class) willReturn: DDChannel.
	(DDChannel stub defaultConversationBreakTime) willReturn: (Duration hours: 2).	
	aDDMessage containerChannel: aDDChannelMock.
	
	self assert: (aDDMessage isInConversationWith: aSecondDDMessage) equals: false.
]

{ #category : #tests }
DDMessageTest >> testIsReply [
	"This method checks if isReply works without giving any message"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	self assert: aDDMessage isReply equals: false.
]

{ #category : #tests }
DDMessageTest >> testIsReply2 [
	"This method checks if isReply's works without giving aSecondDDmessage as response to aDDMessage"
	
	| aDDMessage aSecondDDMessage |
	aDDMessage := DDMessage new.
	aSecondDDMessage := DDMessage new.
	
	aDDMessage repliesTo: aSecondDDMessage. 
	
	self assert: aDDMessage isReply equals: true.
]

{ #category : #tests }
DDMessageTest >> testLastEditedAt [
	"This method checks if lastEditedAt's getter works without giving any input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	self assert: aDDMessage lastEditedAt equals: nil.
]

{ #category : #tests }
DDMessageTest >> testLastEditedAt2 [
	"This method checks if lastEditedAt's getter and setter works given an input input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage lastEditedAt: 'message-lastEditedAt'.
	
	self assert: aDDMessage lastEditedAt equals: 'message-lastEditedAt'.
]

{ #category : #tests }
DDMessageTest >> testLineCount [
	"This method checks if lineCount's getter and setter works without giving any input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage content: ' '.
	
	self assert: aDDMessage lineCount equals: 1.
]

{ #category : #tests }
DDMessageTest >> testLineCount2 [
	"This test checks if lineCount's getter and setter works given an input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage content: 'line 1
	line 2
	line 3'.
	
	self assert: aDDMessage lineCount equals: 3.
]

{ #category : #tests }
DDMessageTest >> testMentions [
	"This method checks if mentions' getter works without giving any input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.

	self assert: aDDMessage mentions equals: OrderedCollection new.
]

{ #category : #tests }
DDMessageTest >> testMentions2 [
	"This method checks if mentions' getter and setter works given an input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage mentions: 'message-mention'.

	self assert: aDDMessage mentions equals: 'message-mention'.
]

{ #category : #tests }
DDMessageTest >> testNaturalLanguageContent [
	"This method checks if there is some natural language in the sent aDDMessage"
	
	| aDDMessage aDDCodeMock|
	aDDMessage := DDMessage new.
	aDDCodeMock := Mock new.
	
	(aDDCodeMock stub codeSource) willReturn: ' Person {
    	private String name;
    	private int age;
    	}'.
	aDDMessage codeBlocks: aDDCodeMock.
	aDDMessage naturalLanguageContent.
	
	self assert: aDDMessage content equals: nil.
]

{ #category : #tests }
DDMessageTest >> testPointsOfInterest [
	"This method checks if pointsOfInterest's getter and setter works given an input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage pointsOfInterest: 'message-POIs'.
	
	self assert: aDDMessage pointsOfInterest equals: 'message-POIs'.
]

{ #category : #tests }
DDMessageTest >> testQuotes [
	"This method checks if quotes method works properly given an input"
		
	| aDDMessage expected |
	aDDMessage := DDMessage new.
	
	expected := {
	'> this is a quote' .
	'> this another' .
	'> some larger' , String cr , '> quoted text' , String cr , '> with multilines'
	} asOrderedCollection.
	aDDMessage content:
'

>notquote
> this is a quote
test

text > with this
> this another
>> some

> some larger
> quoted text
> with multilines
>>>dunno

somefinaltext'.
	
	self assertCollection: aDDMessage quotes equals: expected.
]

{ #category : #tests }
DDMessageTest >> testReactions [
	"This method checks if reactions's getter works without giving any input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.

	self assert: aDDMessage reactions equals: nil.
]

{ #category : #tests }
DDMessageTest >> testReactions2 [
	"This method checks if reactions's getter and setter works given an input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage reactions: 'message-reactions'.
	
	self assert: aDDMessage reactions equals: 'message-reactions'.
]

{ #category : #tests }
DDMessageTest >> testReplies [
	"This method checks if replies works without giving any input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.

	self assert: aDDMessage replies equals: OrderedCollection new.
]

{ #category : #tests }
DDMessageTest >> testRepliesTo [
	"This method checks if repliesTo's getter works without giving any input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.

	self assert: aDDMessage repliesTo equals: nil.
]

{ #category : #tests }
DDMessageTest >> testRepliesTo2 [
	"This method checks if repliesTo's getter and setter works without given an input"
	
	| aDDMessage aSecondDDMessage |
	aDDMessage := DDMessage new.
	aSecondDDMessage := DDMessage new.
	
	aDDMessage repliesTo: aSecondDDMessage.
	
	self assert: aDDMessage repliesTo equals: aSecondDDMessage.
]

{ #category : #tests }
DDMessageTest >> testRoleMentions [
	"This method checks if roleMentions's getter works without giving any input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.

	self assert: aDDMessage roleMentions equals: OrderedCollection new.
]

{ #category : #tests }
DDMessageTest >> testRoleMentions2 [
	"This method checks if roleMentions's getter and setter works given an input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage roleMentions: 'message-role'.

	self assert: aDDMessage roleMentions equals: 'message-role'.
]

{ #category : #tests }
DDMessageTest >> testSpecialMentions [
	"This method checks if specialMentions' getter works without any input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.

	self assert: aDDMessage specialMentions equals: OrderedCollection new.
]

{ #category : #tests }
DDMessageTest >> testSpecialMentions2 [
	"This method checks if specialMentions' getter and setter works with an input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage specialMentions: 'message-specialMention'.

	self assert: aDDMessage specialMentions equals: 'message-specialMention'.
]

{ #category : #tests }
DDMessageTest >> testUncompressedContentSize [
	"This method checks if uncompressedContentSize works with an input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage content: 'message'.

	self assert: aDDMessage uncompressedContentSize equals: 7.
]

{ #category : #tests }
DDMessageTest >> testUserMentions [
	"This method checks if userMentions' getter and setter works with an input"
	
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage content: 'message'.

	self assert: aDDMessage uncompressedContentSize equals: 7.
]

{ #category : #tests }
DDMessageTest >> testgetLink [
	"This method checks if getLink is able to extract a link from aDDMessage"
	
	| aDDMessage aDDChannelMock|
	aDDMessage := DDMessage new.
	aDDChannelMock := Mock new.

	(aDDChannelMock stub id) willReturn: 'channel-id'.
	aDDMessage id: 'message-id'.
	aDDMessage containerChannel: aDDChannelMock.
	
	self assert: aDDMessage getLink 
		  equals: 'https://discord.com/channels/a GHEmptyMetaMessages/channel-id/message-id'.
]
