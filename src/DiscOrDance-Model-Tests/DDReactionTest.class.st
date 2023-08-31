"
A DDReactionTest is a test class for testing the behavior of DDReaction
"
Class {
	#name : #DDReactionTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDReactionTest >> testCount [
	"This method checks if count's getter works without giving any input"
	
	| aDDReaction |
	aDDReaction  := DDReaction new.

	self assert: aDDReaction count equals: nil.
]

{ #category : #test }
DDReactionTest >> testCount2 [
	"This method checks if count's getter and setter works given an input"
	
	| aDDReaction |
	aDDReaction  := DDReaction new.
	
	aDDReaction count: 'reaction-count'.

	self assert: aDDReaction count equals: 'reaction-count'.
]

{ #category : #test }
DDReactionTest >> testEmoji [
	"This method checks if emoji's getter works without giving any input"
	
	| aDDReaction |
	aDDReaction  := DDReaction new.

	self assert: aDDReaction emoji equals: nil.
]

{ #category : #test }
DDReactionTest >> testEmoji2 [
	"This method checks if emoji's getter and setter works given an input"
	
	| aDDReaction |
	aDDReaction  := DDReaction new.

	aDDReaction emoji: 'reaction-emoji'.

	self assert: aDDReaction emoji equals: 'reaction-emoji'.
]

{ #category : #test }
DDReactionTest >> testMessage [
	"This method checks if message's getter works without giving any input"
	
	| aDDReaction |
	aDDReaction  := DDReaction new.

	self assert: aDDReaction message equals: nil.
]

{ #category : #test }
DDReactionTest >> testMessage2 [
	"This method checks if message's getter and setter works given an input"
	
	| aDDReaction |
	aDDReaction  := DDReaction new.

	aDDReaction message: 'reaction-message'.

	self assert: aDDReaction message equals: 'reaction-message'.
]
