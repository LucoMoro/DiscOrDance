"
A DDMentionTest is a test class for testing the behavior of DDMention
"
Class {
	#name : #DDMentionTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDMentionTest >> testChangeMentionee [
	"This method checks if changeMentionee works properly without entering in the true branch"
	
	| aDDMention aSecondMention|
	aDDMention := DDMention new.
	aSecondMention := DDMention new.
	
	aDDMention changeMentionee: aSecondMention.
	
	self assert: aDDMention mentionedEntity equals: aSecondMention.
]

{ #category : #test }
DDMentionTest >> testChangeMentionee2 [
	"This method checks if changeMentionee works properly entering in the true branch"
	
	| aDDMention aSecondMention|
	aDDMention := DDMention new.
	aSecondMention := DDMention new.
	
	aDDMention mentioningEntity: aSecondMention.
	aDDMention mentionedEntity: aSecondMention.
	aDDMention changeMentionee: aSecondMention.
	
	self assert: aDDMention mentioningEntity equals: aSecondMention.
]

{ #category : #test }
DDMentionTest >> testChangeMentioner [
	"This method checks if changeMentionee works properly without entering in the true branch"
	
	| aDDMention aSecondMention|
	aDDMention := DDMention new.
	aSecondMention := DDMention new.
	
	aDDMention mentioningEntity: aSecondMention.
	aDDMention mentionedEntity: aSecondMention.
	aDDMention changeMentionee: aSecondMention.
	
	self assert: aDDMention mentioningEntity equals: aSecondMention.
]

{ #category : #test }
DDMentionTest >> testChangeMentioner2 [
	"This method checks if changeMentionee works properly entering in the true branch"
	
	| aDDMention aSecondMention|
	aDDMention := DDMention new.
	aSecondMention := DDMention new.
	
	aDDMention mentioningEntity: aSecondMention.
	aDDMention mentionedEntity: aSecondMention.
	aDDMention changeMentionee: aSecondMention.
	
	self assert: aDDMention mentionedEntity equals: aSecondMention.
]

{ #category : #test }
DDMentionTest >> testIsChannelMention [
	"This method checks if isChannelMention works properly"
	
	| aDDMention |
	aDDMention := DDMention new.
	
	self assert: aDDMention isChannelMention equals: false.
]

{ #category : #test }
DDMentionTest >> testIsRoleMention [
	"This method checks if isRoleMention works properly"
	
	| aDDMention |
	aDDMention := DDMention new.
	
	self assert: aDDMention isRoleMention equals: false.
]

{ #category : #test }
DDMentionTest >> testIsSpecialMention [
	"This method checks if isSpecialMention works properly"
	
	| aDDMention |
	aDDMention := DDMention new.
	
	self assert: aDDMention isSpecialMention equals: false.
]

{ #category : #test }
DDMentionTest >> testIsUserMention [
	"This method checks if mentionedEntity's getter works without giving any input"
	
	| aDDMention |
	aDDMention := DDMention new.
	
	self assert: aDDMention isUserMention equals: false.
]

{ #category : #test }
DDMentionTest >> testMentionedEntity [
	"This method checks if mentionedEntity's getter works without giving any input"
	
	| aDDMention |
	aDDMention := DDMention new.
	
	self assert: aDDMention mentionedEntity equals: nil.
]

{ #category : #test }
DDMentionTest >> testMentionedEntity2 [
	"This method checks if mentionedEntity's getter and setter works given an input"
	
	| aDDMention |
	aDDMention := DDMention new.
	
	aDDMention mentionedEntity: 'mention-mentionedEntity'.
	
	self assert: aDDMention mentionedEntity equals: 'mention-mentionedEntity'.
]

{ #category : #test }
DDMentionTest >> testMentioningEntity [
	"This method checks if mentioningEntity's getter works without giving any input"
	
	| aDDMention |
	aDDMention := DDMention new.
	
	self assert: aDDMention mentioningEntity equals: nil.
]

{ #category : #test }
DDMentionTest >> testMentioningEntity2 [
	"This method checks if mentioningEntity's getter and setter works given an input"
	
	| aDDMention |
	aDDMention := DDMention new.
	
	aDDMention mentioningEntity: 'mention-mentioningEntity'.
	
	self assert: aDDMention mentioningEntity equals: 'mention-mentioningEntity'.
]
