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
	"This test checks if changeMentionee works properly without entering in the true branch"
	| aDDMention aSecondMention|
	aDDMention := DDMention new.
	aSecondMention := DDMention new.
	
	aDDMention changeMentionee: aSecondMention.
	
	self assert: (aDDMention mentionedEntity) equals: aSecondMention.
]

{ #category : #test }
DDMentionTest >> testChangeMentionee2 [
	"This test checks if changeMentionee works properly entering in the true branch"
	| aDDMention aSecondMention|
	aDDMention := DDMention new.
	aSecondMention := DDMention new.
	
	aDDMention mentioningEntity: aSecondMention.
	aDDMention mentionedEntity: aSecondMention.
	aDDMention changeMentionee: aSecondMention.
	
	self assert: (aDDMention mentioningEntity) equals: aSecondMention.
]

{ #category : #test }
DDMentionTest >> testChangeMentioner [
	"This test checks if changeMentionee works properly without entering in the true branch"
	| aDDMention aSecondMention|
	aDDMention := DDMention new.
	aSecondMention := DDMention new.
	
	aDDMention mentioningEntity: aSecondMention.
	aDDMention mentionedEntity: aSecondMention.
	aDDMention changeMentionee: aSecondMention.
	
	self assert: (aDDMention mentioningEntity) equals: aSecondMention.
]

{ #category : #test }
DDMentionTest >> testChangeMentioner2 [
	"This test checks if changeMentionee works properly entering in the true branch"
	| aDDMention aSecondMention|
	aDDMention := DDMention new.
	aSecondMention := DDMention new.
	
	aDDMention mentioningEntity: aSecondMention.
	aDDMention mentionedEntity: aSecondMention.
	aDDMention changeMentionee: aSecondMention.
	
	self assert: (aDDMention mentionedEntity) equals: aSecondMention.
]

{ #category : #test }
DDMentionTest >> testIsChannelMention [
	"This test checks if isChannelMention works properly"
	| aDDMention |
	aDDMention := DDMention new.
	
	self assert: (aDDMention isChannelMention) equals: false.
]

{ #category : #test }
DDMentionTest >> testIsRoleMention [
	"This test checks if isRoleMention works properly"
	| aDDMention |
	aDDMention := DDMention new.
	
	self assert: (aDDMention isRoleMention) equals: false.
]

{ #category : #test }
DDMentionTest >> testIsSpecialMention [
	"This test checks if isSpecialMention works properly"
	| aDDMention |
	aDDMention := DDMention new.
	
	self assert: (aDDMention isSpecialMention) equals: false.
]

{ #category : #test }
DDMentionTest >> testIsUserMention [
	"This test checks if mentionedEntity's setter and getter works without giving any input"
	| aDDMention |
	aDDMention := DDMention new.
	
	self assert: (aDDMention isUserMention) equals: false.
]

{ #category : #test }
DDMentionTest >> testMentionedEntity [
	"This test checks if mentionedEntity's setter and getter works without giving any input"
	| aDDMention |
	aDDMention := DDMention new.
	
	self assert: (aDDMention mentionedEntity) equals: nil.
]

{ #category : #test }
DDMentionTest >> testMentionedEntity2 [
	"This test checks if mentionedEntity's setter and getter works given an input"
	| aDDMention |
	aDDMention := DDMention new.
	
	aDDMention mentionedEntity: 'mention-mentionedEntity'.
	
	self assert: (aDDMention mentionedEntity) equals: 'mention-mentionedEntity'.
]

{ #category : #test }
DDMentionTest >> testMentioningEntity [
	"This test checks if mentioningEntity's setter and getter works without giving any input"
	| aDDMention |
	aDDMention := DDMention new.
	
	self assert: (aDDMention mentioningEntity) equals: nil.
]

{ #category : #test }
DDMentionTest >> testMentioningEntity2 [
	"This test checks if mentioningEntity's setter and getter works given an input"
	| aDDMention |
	aDDMention := DDMention new.
	
	aDDMention mentioningEntity: 'mention-mentioningEntity'.
	
	self assert: (aDDMention mentioningEntity) equals: 'mention-mentioningEntity'.
]
