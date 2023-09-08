"
A DDTopicTest is a test class for testing the behavior of DDTopic
"
Class {
	#name : #DDTopicTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDTopicTest >> testDescription [
	"This method checks if description's getter works without giving any input"
	
	| aDDTopic |
	aDDTopic  := DDTopic new.

	self assert: aDDTopic description equals: nil.
]

{ #category : #test }
DDTopicTest >> testDescription2 [
	"This method checks if description's getter works given an input"
	
	| aDDTopic |
	aDDTopic  := DDTopic new.
	
	aDDTopic description: 'topic-description'.

	self assert: aDDTopic description equals: 'topic-description'.
]

{ #category : #test }
DDTopicTest >> testKeywords [
	"This method checks if keywords's getter works without giving any input"
	
	| aDDTopic |
	aDDTopic  := DDTopic new.

	self assert: aDDTopic keywords equals: OrderedCollection new.
]

{ #category : #test }
DDTopicTest >> testKeywords2 [
	"This method checks if keywords's getter works given an input"
	
	| aDDTopic |
	aDDTopic  := DDTopic new.
	
	aDDTopic keywords: 'topic-keywords'.

	self assert: aDDTopic keywords equals: 'topic-keywords'.
]
