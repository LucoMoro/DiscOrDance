"
A DDChannelTest is a test class for testing the behavior of DDChannel
"
Class {
	#name : #DDChannelTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDChannelTest >> testAddMessage [
	"This method checks if addMessage works properly"
	
	| aDDChannel aDDMessage anOrderedCollection|
	aDDChannel := DDChannel new.
	aDDMessage := DDMessage new.
	anOrderedCollection := OrderedCollection new.
	
	aDDChannel addMessage: aDDMessage. 
	anOrderedCollection add: aDDMessage.
	
	self assert: aDDChannel messages equals: anOrderedCollection.
]

{ #category : #test }
DDChannelTest >> testAuthors [
	"This method checks if authors' getter works without giving any input"
	
	| aDDChannel |
	aDDChannel := DDChannel new.
	
	self assert: aDDChannel authors equals: Set new.
]

{ #category : #test }
DDChannelTest >> testAuthors2 [
	"This method checks if authors' getter and setter works given an input"
	
	| aDDChannel |
	aDDChannel := DDChannel new.
	
	aDDChannel authors: 'channel-author'.
	
	self assert: aDDChannel authors equals: 'channel-author'.
]

{ #category : #test }
DDChannelTest >> testCanReadMessages [
	"This method checks if canReadMessages' getter works without giving any input"
	
	| aDDChannel |
	aDDChannel := DDChannel new.
	
	self assert: aDDChannel canReadMessages equals: true.
]

{ #category : #test }
DDChannelTest >> testCanReadMessages2 [
	"This method checks if canReadMessages' getter and setter works given an input"
	
	| aDDChannel |
	aDDChannel := DDChannel new.
	
	aDDChannel canReadMessages: false.
	
	self assert: aDDChannel canReadMessages equals: false.
]

{ #category : #test }
DDChannelTest >> testGetAuthor [
	"This method checks if getAuthor works properly without initializing the array of authors"
	
	| aDDChannel aDDAuthor |
	aDDChannel := DDChannel new.
	aDDAuthor := DDAuthor new.

	self assert: (aDDChannel getAuthor: aDDAuthor) equals: nil.
]

{ #category : #test }
DDChannelTest >> testGetAuthor2 [
	"This method checks if getAuthor works properly initializing the array of authors"
	
	| aDDChannel aDDAuthor aSet |
	aDDChannel := DDChannel new.
	aDDAuthor := DDAuthor new.
	aSet := Set new.
	
	aSet add: aDDAuthor.
	aDDChannel authors: aSet. 

	self assert: (aDDChannel getAuthor: aDDAuthor) equals: aDDAuthor.
]

{ #category : #test }
DDChannelTest >> testGetMessageWithId [
	"This method checks if getMessageWithId's first branch works properly without mocking the DDMessage 	class"
	
	| aDDChannel aDDMessage aSet |
	aDDChannel := DDChannel new.
	aDDMessage := DDMessage new.
	aSet := Set new.
	
	aDDMessage id: 'message-id'.
	aSet add: aDDMessage.
	aDDChannel messages: aSet.
	
	self assert: (aDDChannel getMessageWithId: 'message-id') equals: aDDMessage.
]

{ #category : #test }
DDChannelTest >> testGetMessageWithId2 [
	"This method checks if getMessageWithId's second branch works properly without mocking the DDMessage 	class"
	
	| aDDChannel aDDMessage aSet |
	aDDChannel := DDChannel new.
	aDDMessage := DDMessage new.
	aSet := Set new.
	
	aDDMessage id: 'a-message-id'.
	aSet add: aDDMessage.
	aDDChannel messages: aSet.
	
	self assert: (aDDChannel getMessageWithId: 'message-id') equals: nil.
]

{ #category : #test }
DDChannelTest >> testIsAuthorActive [
	"This method checks if isAuthorActive works properly without initializing the array of authors"
	
	| aDDChannel aDDAuthor |
	aDDChannel := DDChannel new.
	aDDAuthor := DDAuthor new.

	self assert: (aDDChannel isAuthorActive: aDDAuthor) equals: false.
]

{ #category : #test }
DDChannelTest >> testIsAuthorActive2 [
	"This method checks if isAuthorActive works properly initializing the array of authors"
	
	| aDDChannel aDDAuthor aSet |
	aDDChannel := DDChannel new.
	aDDAuthor := DDAuthor new.
	aSet := Set new.
	
	aSet add: aDDAuthor.
	aDDChannel authors: aSet.
	
	self assert: (aDDChannel isAuthorActive: aDDAuthor) equals: true.
]

{ #category : #test }
DDChannelTest >> testMessages [
	"This method checks if messages' getter works without giving any input"
	
	| aDDChannel |
	aDDChannel := DDChannel new.
	
	self assert: aDDChannel messages equals: OrderedCollection new.
]

{ #category : #test }
DDChannelTest >> testMessages2 [
	"This method checks if messages' getter works given an input"
	
	| aDDChannel aDDMessage |
	aDDChannel := DDChannel new.
	aDDMessage := DDMessage new.
	
	aDDChannel messages: aDDMessage.
	
	self assert: aDDChannel messages equals: aDDMessage.
]

{ #category : #test }
DDChannelTest >> testParent [
	"This method checks if parent's getter works without giving any input"
	
	| aDDChannel |
	aDDChannel := DDChannel new.
	
	self assert: aDDChannel parent equals: nil.
]

{ #category : #test }
DDChannelTest >> testParent2 [
	"This method checks if parent's getter works given an input"
	
	| aDDChannel aDDCategory |
	aDDChannel := DDChannel new.
	aDDCategory := DDCategory new.
	
	aDDChannel parent: aDDCategory.
	
	self assert: aDDChannel parent equals: aDDCategory.
]

{ #category : #test }
DDChannelTest >> testTopic [
	"This method checks if topic's getter works without giving any input"
	
	| aDDChannel |
	aDDChannel := DDChannel new.
	
	self assert: aDDChannel topic equals: nil.
]

{ #category : #test }
DDChannelTest >> testTopic2 [
	"This method checks if topic's getter works given an input"
	
	| aDDChannel |
	aDDChannel := DDChannel new.
	
	aDDChannel topic: 'channel-topic'.
	
	self assert: aDDChannel topic equals: 'channel-topic'.
]
