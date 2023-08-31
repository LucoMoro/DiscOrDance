"
A DDRoleTest is a test class for testing the behavior of DDRole
"
Class {
	#name : #DDRoleTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDRoleTest >> testEquals [
	"This method checks if id's getter and setter works given an input"
	
	| aDDRole aSecondDDRole |
	aDDRole  := DDRole new.
	aSecondDDRole := DDRole new.


	self assert: (aDDRole = aSecondDDRole) equals: true.
]

{ #category : #test }
DDRoleTest >> testId [
	"This method checks if id's getter and setter works without giving any input"
	
	| aDDRole |
	aDDRole  := DDRole new.

	self assert: (aDDRole id) equals: nil.
]

{ #category : #test }
DDRoleTest >> testId2 [
	"This method checks if id's getter and setter works given an input"
	
	| aDDRole |
	aDDRole  := DDRole new.
	
	aDDRole id: 'role-id'.

	self assert: (aDDRole id) equals: 'role-id'.
]
