"
A DDSpecialMentionTest is a test class for testing the behavior of DDSpecialMention
"
Class {
	#name : #DDSpecialMentionTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDSpecialMentionTest >> testIsAtEveryone [
	"This test checks if isAtEveryone's getter works witout giving any input"
	| aDDSpecialMention |
	aDDSpecialMention := DDSpecialMention new.
	
	self assert: (aDDSpecialMention isAtEveryone) equals: false.
]

{ #category : #test }
DDSpecialMentionTest >> testIsAtHere [
	"This test checks if isAtHere's getter works witout giving any input"
	| aDDSpecialMention |
	aDDSpecialMention := DDSpecialMention new.
	
	self assert: (aDDSpecialMention isAtHere) equals: false.
]

{ #category : #test }
DDSpecialMentionTest >> testIsSpecialMention [
	"This test checks if isSpecialMention's getter works witout giving any input"
	| aDDSpecialMention |
	aDDSpecialMention := DDSpecialMention new.
	
	self assert: (aDDSpecialMention isSpecialMention) equals: true.
]
