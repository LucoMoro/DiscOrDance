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
