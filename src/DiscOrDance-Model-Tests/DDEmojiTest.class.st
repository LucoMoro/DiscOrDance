"
A DDEmojiTest is a test class for testing the behavior of DDEmoji
"
Class {
	#name : #DDEmojiTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDEmojiTest >> testEquals [
	"This method checks = first branch"
	| aDDEmoji anObject|
	aDDEmoji := DDEmoji new.
	anObject := Object new.
	
	self assert: (	aDDEmoji = anObject) equals: false.
]

{ #category : #test }
DDEmojiTest >> testEquals2 [
	"This method checks = second branch"
	| aDDEmoji aSecondDDEmoji |
	aDDEmoji := DDEmoji new.
	aSecondDDEmoji := Object new.
	
	self assert: (	aDDEmoji = aSecondDDEmoji) equals: false.
]

{ #category : #test }
DDEmojiTest >> testId [
	"This method checks if url's getter and setter works without giving any input"
	| aDDEmoji |
	aDDEmoji  := DDEmoji new.

	self assert: (aDDEmoji id) equals: nil.
]

{ #category : #test }
DDEmojiTest >> testId2 [
	"This method checks if url's getter and setter works given an input"
	| aDDEmoji |
	aDDEmoji  := DDEmoji new.
	
	aDDEmoji id: 'emoji-id'.

	self assert: (aDDEmoji id) equals: 'emoji-id'.
]
