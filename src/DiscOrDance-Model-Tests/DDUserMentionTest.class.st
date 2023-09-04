"
A DDUserMentionTest is a test class for testing the behavior of DDUserMention
"
Class {
	#name : #DDUserMentionTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDUserMentionTest >> testIsUserMention [
	"This method checks if isUserMention's getter works witout giving any input"
	
	| aDDUserMention |
	aDDUserMention := DDUserMention new.
	
	self assert: aDDUserMention isUserMention equals: true.
]
