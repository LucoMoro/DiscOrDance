"
A DDEmbedTest is a test class for testing the behavior of DDEmbed
"
Class {
	#name : #DDEmbedTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDEmbedTest >> testDescription [
	"This method checks if description's getter and setter works without giving any input"
	| aDDEmbed |
	aDDEmbed  := DDEmbed new.

	self assert: (aDDEmbed description) equals: nil.
]

{ #category : #test }
DDEmbedTest >> testDescription2 [
	"This method checks if description's getter and setter works given an input"
	| aDDEmbed |
	aDDEmbed  := DDEmbed new.
	
	aDDEmbed description: 'embed-description'.

	self assert: (aDDEmbed description) equals: 'embed-description'.
]

{ #category : #test }
DDEmbedTest >> testFields [
	"This method checks if fields' getter and setter works without giving any input"
	| aDDEmbed |
	aDDEmbed  := DDEmbed new.

	self assert: (aDDEmbed fields) equals: nil.
]

{ #category : #test }
DDEmbedTest >> testFields2 [
	"This method checks if fields' getter and setter works given an input"
	| aDDEmbed |
	aDDEmbed  := DDEmbed new.
	
	aDDEmbed fields: 'embed-fields'.

	self assert: (aDDEmbed fields) equals: 'embed-fields'.
]

{ #category : #test }
DDEmbedTest >> testTimestamp [
	"This method checks if timestamp's getter and setter works without giving any input"
	| aDDEmbed |
	aDDEmbed  := DDEmbed new.

	self assert: (aDDEmbed timestamp) equals: nil.
]

{ #category : #test }
DDEmbedTest >> testTimestamp2 [
	"This method checks if timestamp's getter and setter works given an input"
	| aDDEmbed |
	aDDEmbed  := DDEmbed new.
	
	aDDEmbed timestamp: 'embed-timestamp'.

	self assert: (aDDEmbed timestamp) equals: 'embed-timestamp'.
]

{ #category : #test }
DDEmbedTest >> testType [
	"This method checks if type's getter and setter works without giving any input"
	| aDDEmbed |
	aDDEmbed  := DDEmbed new.

	self assert: (aDDEmbed type) equals: nil.
]

{ #category : #test }
DDEmbedTest >> testType2 [
	"This method checks if type's getter and setter given an input"
	| aDDEmbed |
	aDDEmbed  := DDEmbed new.
	
	aDDEmbed type: 'embed-type'.

	self assert: (aDDEmbed type) equals: 'embed-type'.
]

{ #category : #test }
DDEmbedTest >> testUrl [
	"This method checks if url's getter and setter works without giving any input"
	| aDDEmbed |
	aDDEmbed  := DDEmbed new.

	self assert: (aDDEmbed url) equals: nil.
]

{ #category : #test }
DDEmbedTest >> testUrl2 [
	"This method checks if url's getter and setter works given an input"
	| aDDEmbed |
	aDDEmbed  := DDEmbed new.
	
	aDDEmbed url: 'embed-url'.

	self assert: (aDDEmbed url) equals: 'embed-url'.
]
