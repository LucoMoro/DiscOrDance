"
A DDRoleMentionTest is a test class for testing the behavior of DDRoleMention
"
Class {
	#name : #DDRoleMentionTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDRoleMentionTest >> testIsRoleMention [
	"This method checks if isRoleMention's getter works witout giving any input"
	
	| aDDRoleMention |
	aDDRoleMention := DDRoleMention new.
	
	self assert: aDDRoleMention isRoleMention equals: true.
]
