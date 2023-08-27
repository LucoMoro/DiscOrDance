"
A DDChannelMentionTest is a test class for testing the behavior of DDChannelMention
"
Class {
	#name : #DDChannelMentionTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDChannelMentionTest >> testIsChannelMention [
	"This test checks if isChannelMention's getter works witout giving any input"
	| aDDChannelMention |
	aDDChannelMention := DDChannelMention new.
	
	self assert: (aDDChannelMention isChannelMention) equals: true.
]
