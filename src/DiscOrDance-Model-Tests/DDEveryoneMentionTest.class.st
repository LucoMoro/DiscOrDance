"
A DDEveryoneMentionTest is a test class for testing the behavior of DDEveryoneMention
"
Class {
	#name : #DDEveryoneMentionTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDEveryoneMentionTest >> testIsAtEveryone [
	"This test checks if isAtEveryone's getter works witout giving any input"
	| aDDEveryoneMention |
	aDDEveryoneMention := DDEveryoneMention new.
	
	self assert: (aDDEveryoneMention isAtEveryone) equals: true.
]
