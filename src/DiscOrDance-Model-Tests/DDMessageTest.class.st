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
	"This test checks the first branch of DDMessage's testAddMention method"
	| aDDMessage aDDMentionMock anOrderedCollection |
	aDDMessage := DDMessage new.
	aDDMentionMock := Mock new.
	anOrderedCollection := OrderedCollection new.
	
	(aDDMentionMock stub isKindOf: DDRoleMention) willReturn: true.
	
	aDDMessage addMention: aDDMentionMock.
	
	anOrderedCollection add: aDDMentionMock.
	
	self assert: (aDDMessage roleMentions) equals: anOrderedCollection.
	

]

{ #category : #tests }
DDMessageTest >> testAddMention2 [
	"This test checks the second branch of DDMessage's testAddMention method"
	| aDDMessage aDDMentionMock anOrderedCollection |
	aDDMessage := DDMessage new.
	aDDMentionMock := Mock new.
	anOrderedCollection := OrderedCollection new.
	
	(aDDMentionMock stub isKindOf: DDChannelMention) willReturn: true.
	
	aDDMessage addMention: aDDMentionMock.
	
	anOrderedCollection add: aDDMentionMock.
	
	self assert: (aDDMessage channelMentions) equals: anOrderedCollection.
	

]

{ #category : #tests }
DDMessageTest >> testAddMention3 [
	"This test checks the third branch of DDMessage's testAddMention method"
	| aDDMessage aDDMentionMock anOrderedCollection |
	aDDMessage := DDMessage new.
	aDDMentionMock := Mock new.
	anOrderedCollection := OrderedCollection new.
	
	(aDDMentionMock stub isKindOf: DDUserMention) willReturn: true.
	
	aDDMessage addMention: aDDMentionMock.
	
	anOrderedCollection add: aDDMentionMock.
	
	self assert: (aDDMessage userMentions) equals: anOrderedCollection.
	

]

{ #category : #tests }
DDMessageTest >> testAddMention4 [
	"This test checks the fourth branch of DDMessage's testAddMention method"
	| aDDMessage aDDMentionMock anOrderedCollection |
	aDDMessage := DDMessage new.
	aDDMentionMock := Mock new.
	anOrderedCollection := OrderedCollection new.
	
	(aDDMentionMock stub isKindOf: DDSpecialMention) willReturn: true.
	
	aDDMessage addMention: aDDMentionMock.
	
	anOrderedCollection add: aDDMentionMock.
	
	self assert: (aDDMessage specialMentions) equals: anOrderedCollection.
	

]

{ #category : #tests }
DDMessageTest >> testAddReply [
	"This test checks if aDDMessage's addReply creates an empty array of replies without initializing it"
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	self assert: (aDDMessage replies) equals: OrderedCollection new.
]

{ #category : #tests }
DDMessageTest >> testAddReply2 [
	"This test checks if aDDMessage's addReply creates an array of replies if initialized"
	| aDDMessage aDDMessageReply anOrderedCollection |
	aDDMessage := DDMessage new.
	aDDMessageReply := DDMessage new.
	anOrderedCollection := OrderedCollection new.
	
	aDDMessage addReply: aDDMessageReply.
	anOrderedCollection add: aDDMessageReply.
	
	self assert: (aDDMessage replies) equals: anOrderedCollection.
]

{ #category : #tests }
DDMessageTest >> testAttachments [
	"This test checks if addAttachments' getter and setter works without giving any input"
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	self assert: (aDDMessage attachments) equals: nil.
]

{ #category : #tests }
DDMessageTest >> testAttachments2 [
	"This test checks if addAttachments' getter and setter works given an input"
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage attachments: 'message-attachment'.
	
	self assert: (aDDMessage attachments) equals: 'message-attachment'.
]

{ #category : #tests }
DDMessageTest >> testAuthor [
	"This test checks if author's getter and setter works without giving anyy input"
	| aDDMessage |
	aDDMessage := DDMessage new.

	self assert: (aDDMessage author) equals: nil.
]

{ #category : #tests }
DDMessageTest >> testAuthor2 [
	"This test checks if author's getter and setter works given an input"
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage author: 'message-author'.
	
	self assert: (aDDMessage author) equals: 'message-author'.
]

{ #category : #tests }
DDMessageTest >> testChannelMentions [
	"This test checks if channelMentions' getter and setter works without giving any input"
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	self assert: (aDDMessage channelMentions) equals: OrderedCollection new.
]

{ #category : #tests }
DDMessageTest >> testChannelMentions2 [
	"This test checks if channelMentions' getter and setter works given an input"
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage channelMentions: 'message-channelMentions'.
	
	self assert: (aDDMessage channelMentions) equals: 'message-channelMentions'.
]

{ #category : #tests }
DDMessageTest >> testCodeBlocks [
	"This test checks if codeBlocks' getter and setter works without giving any input"
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	self assert: (aDDMessage codeBlocks) equals: nil.
]

{ #category : #tests }
DDMessageTest >> testCodeBlocks2 [
	"This test checks if codeBlocks' getter and setter works without given an input"
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage codeBlocks: 'message-codeBlock'.
	
	self assert: (aDDMessage codeBlocks) equals: 'message-codeBlock'.
]

{ #category : #tests }
DDMessageTest >> testCodeElementsForClasses [
	"This test checks if there are code elements for a class in aDDMessage"
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
	
	self assert: (aDDMessage codeBlocks) equals: aDDCodeMock.
]

{ #category : #tests }
DDMessageTest >> testContainerChannel [
	"This test checks if containerChannel's setter and getter works without giving any input"
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	self assert: (aDDMessage containerChannel) equals: nil.
]

{ #category : #tests }
DDMessageTest >> testContainerChannel2 [
	"This test checks if containerChannel's setter and getter works given an input"
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage containerChannel: 'message-container'.
	
	self assert: (aDDMessage containerChannel) equals: 'message-container'.
]

{ #category : #tests }
DDMessageTest >> testContent [
	"This test checks if content's setter and getter works without giving any input"
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	self assert: (aDDMessage content) equals: nil.
]

{ #category : #tests }
DDMessageTest >> testContent2 [
	"This test checks if content's setter and getter works given an input"
	| aDDMessage |
	aDDMessage := DDMessage new.
	
	aDDMessage content: 'message-content'.
	
	self assert: (aDDMessage content) equals: 'message-content'.
]

{ #category : #tests }
DDMessageTest >> testNaturalLanguageContent [
	"This test checks if there is some natural language in the sent aDDMessage"
	| aDDMessage aDDCodeMock|
	aDDMessage := DDMessage new.
	aDDCodeMock := Mock new.
	
	(aDDCodeMock stub codeSource) willReturn: ' Person {
    	private String name;
    	private int age;
    	}'.
	
	aDDMessage codeBlocks: aDDCodeMock.
	
	aDDMessage naturalLanguageContent.
	
	self assert: (aDDMessage content) equals: nil.
]

{ #category : #test }
DDMessageTest >> testQuotes [
	| msg expected |
	msg := DDMessage new.
	expected := {
	'> this is a quote' .
	'> this another' .
	'> some larger' , String cr , '> quoted text' , String cr , '> with multilines'
	} asOrderedCollection.
	msg content:
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
	
	self assertCollection: msg quotes equals: expected.
]
