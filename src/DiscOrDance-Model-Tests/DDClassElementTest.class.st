"
A DDClassElementTest is a test class for testing the behavior of DDClassElement
"
Class {
	#name : #DDClassElementTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDClassElementTest >> testName [
	"This method checks if referencedClassName's getter and setter works given an input"
	
	| aDDClassElement |
	aDDClassElement  := DDClassElement new.
	
	aDDClassElement referencedClassName: 'classElement-name'.

	self assert: (aDDClassElement name) equals: 'classElement-name'.
]

{ #category : #test }
DDClassElementTest >> testReferencedClassName [
	"This method checks if referencedClassName's getter and setter works without giving any input"
	
	| aDDClassElement |
	aDDClassElement  := DDClassElement new.

	self assert: (aDDClassElement referencedClassName) equals: nil.
]

{ #category : #test }
DDClassElementTest >> testReferencedClassName2 [
	"This method checks if referencedClassName's getter and setter works given an input"
	
	| aDDClassElement |
	aDDClassElement  := DDClassElement new.
	
	aDDClassElement referencedClassName: 'classElement-referencedClassName'.

	self assert: (aDDClassElement referencedClassName) equals: 'classElement-referencedClassName'.
]
