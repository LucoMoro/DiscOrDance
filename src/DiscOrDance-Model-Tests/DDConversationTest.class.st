"
A DDConversationTest is a test class for testing the behavior of DDConversation
"
Class {
	#name : #DDConversationTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDConversationTest >> testAdd [
	"This method checks if add method works properly"
	
	| aDDConversation aDDMessage anOrderedCollection|
	aDDConversation := DDConversation new.
	aDDMessage := DDMessage new.
	anOrderedCollection := OrderedCollection new.
	
	aDDConversation add: aDDMessage.
	anOrderedCollection add: aDDMessage.
	
	self assert: aDDConversation messages equals: anOrderedCollection.
]

{ #category : #test }
DDConversationTest >> testCodeElements [
	"This method checks if span works properly"
	
	| aDDConversation |
	aDDConversation := DDConversation new.

	self assert: aDDConversation codeElements equals: OrderedCollection new.
]

{ #category : #test }
DDConversationTest >> testEnd [
	"This method checks if end's gette works without giving any input"
	
	| aDDConversation |
	aDDConversation := DDConversation new.

	self assert: aDDConversation end equals: nil.
]

{ #category : #test }
DDConversationTest >> testEnd2 [
	"This method checks if end's getter and setter works given an input"
	
	| aDDConversation |
	aDDConversation := DDConversation new.
	
	aDDConversation end: 'conversation-end'.

	self assert: aDDConversation end equals: 'conversation-end'.
]

{ #category : #test }
DDConversationTest >> testInvolvesCode [
	"This method checks if participatingAuthors works properly giving false as a return value for the 	mock method"
		
	| aDDConversation aDDMessageMock |
	aDDConversation := DDConversation new.
	aDDMessageMock := Mock new.
	
	aDDConversation add: aDDMessageMock.
	(aDDMessageMock stub hasSourceCode) willReturn: false.

	self assert: aDDConversation involvesCode equals: false.
]

{ #category : #test }
DDConversationTest >> testInvolvesCode2 [
	"This method checks if participatingAuthors works properly giving false as a return value for the 	mock method"
		
	| aDDConversation aDDMessageMock |
	aDDConversation := DDConversation new.
	aDDMessageMock := Mock new.
	
	aDDConversation add: aDDMessageMock.
	(aDDMessageMock stub hasSourceCode) willReturn: true.

	self assert: aDDConversation involvesCode equals: true.
]

{ #category : #test }
DDConversationTest >> testIsEmpty [
	"This method checks if isEmpty works properly without giving any input"
	
	| aDDConversation aDDMessageMock|
	aDDConversation := DDConversation new.
	aDDMessageMock := Mock new.
	
	(aDDMessageMock stub collect: #author) willReturn: nil.

	self assert: aDDConversation isEmpty equals: true.
]

{ #category : #test }
DDConversationTest >> testIsEmpty2 [
	"This method checks if isEmpty works properly initializing the messages array input"
	
	| aDDConversation aDDMessageMock|
	aDDConversation := DDConversation new.
	aDDMessageMock := Mock new.
	
	aDDConversation add: DDMessage new. 
	(aDDMessageMock stub collect: #author) willReturn: nil.

	self assert: aDDConversation isEmpty equals: false.
]

{ #category : #test }
DDConversationTest >> testMessages [
	"This method checks if messages' getter works without giving any input"
	
	| aDDConversation |
	aDDConversation := DDConversation new.

	self assert: aDDConversation messages equals: OrderedCollection new.
]

{ #category : #test }
DDConversationTest >> testMessages2 [
	"This method checks if messages' getter and setter works given an input"
	
	| aDDConversation |
	aDDConversation := DDConversation new.
	
	aDDConversation messages: 'conversation-messages'.

	self assert: aDDConversation messages equals: 'conversation-messages'.
]

{ #category : #test }
DDConversationTest >> testParticipatingAuthors [
	"This method checks if participatingAuthors works properly without giving any input"
	
	| aDDConversation aDDMessageMock |
	aDDConversation := DDConversation new.
	aDDMessageMock := Mock new.
	
	(aDDMessageMock stub collect: #author) willReturn: nil.

	self assert: aDDConversation participatingAuthors equals: Set new.
]

{ #category : #test }
DDConversationTest >> testSpan [
	"This method checks if span works properly given a message for start and for end"
	
	| aDDConversation aDDMessageMock |
	aDDConversation := DDConversation new.
	aDDMessageMock := Mock new.
	
	aDDConversation end: aDDMessageMock.
	aDDConversation start: aDDMessageMock.
	(aDDMessageMock stub createdAt) willReturn: '12/08/2023'. 

	self assert: (aDDConversation span)asString equals: '0:00:00:00'.
]

{ #category : #test }
DDConversationTest >> testSpan2 [
	"This method checks if span works properly without mocking the DDMessage class"
	
	| aDDConversation aDDMessage |
	aDDConversation := DDConversation new.
	aDDMessage := DDMessage new.
	
	aDDConversation end: aDDMessage.
	aDDConversation start: aDDMessage.
	aDDMessage createdAt: '12/08/2023'. 

	self assert: (aDDConversation span)asString equals: '0:00:00:00'.
]

{ #category : #test }
DDConversationTest >> testStart [
	"This method checks if start's getter works without giving any input"
	
	| aDDConversation |
	aDDConversation := DDConversation new.

	self assert: aDDConversation start equals: nil.
]

{ #category : #test }
DDConversationTest >> testStart2 [
	"This method checks if start's getter and setter works given an input"
	
	| aDDConversation |
	aDDConversation := DDConversation new.
	
	aDDConversation start: 'conversation-start'.

	self assert: aDDConversation start equals: 'conversation-start'.
]

{ #category : #test }
DDConversationTest >> testTimeSorted [
	"This method checks if timeSorted works properly given two conversations with messages"
	
	| aFirstDDConversation aFirstDDMessage aSecondDDConversation aSecondDDMessage anOrderedCollection aCollectionOfDDConversation|
	aFirstDDConversation := DDConversation new.
	aSecondDDConversation := DDConversation new.
	aFirstDDMessage := DDMessage  new.
	aSecondDDMessage := DDMessage  new.
	anOrderedCollection := OrderedCollection new.
	aCollectionOfDDConversation := OrderedCollection new.
	
	aFirstDDConversation start: aFirstDDMessage.
	aFirstDDMessage createdAt: '12/08/2023'. 
	
	aSecondDDConversation start: aFirstDDMessage.
	aSecondDDMessage createdAt: '13/08/2023'. 
	
	anOrderedCollection add: aFirstDDConversation.
 	anOrderedCollection add: aSecondDDConversation.
	
	aCollectionOfDDConversation add: aSecondDDConversation.
	aCollectionOfDDConversation add: aFirstDDConversation.


	self assert: (DDConversation timeSorted: aCollectionOfDDConversation) equals: anOrderedCollection.
]
