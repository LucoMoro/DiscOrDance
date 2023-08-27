"
A DDHereMentionTest is a test class for testing the behavior of DDHereMention
"
Class {
	#name : #DDHereMentionTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDHereMentionTest >> testIsAtHere [
	"This test checks if isAtHere's getter works witout giving any input"
	| aDDHereMention |
	aDDHereMention := DDHereMention new.
	
	self assert: (aDDHereMention isAtHere) equals: true.
]
