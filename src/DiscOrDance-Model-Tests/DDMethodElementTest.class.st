"
A DDMethodElementTest is a test class for testing the behavior of DDMethodElement
"
Class {
	#name : #DDMethodElementTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDMethodElementTest >> testName [
	"This method checks if name's getter and setter works given an input"
	
	| aDDMethodElement |
	aDDMethodElement  := DDMethodElement new.
	
	aDDMethodElement referencedMethodName: 'methodElement-referencedMethodName'.

	self assert: (aDDMethodElement name) equals: 'methodElement-referencedMethodName'.
]

{ #category : #test }
DDMethodElementTest >> testReferencedMethodName [
	"This method checks if referencedMethodName's getter and setter works without giving any input"
	
	| aDDMethodElement |
	aDDMethodElement  := DDMethodElement new.

	self assert: (aDDMethodElement referencedMethodName) equals: nil.
]

{ #category : #test }
DDMethodElementTest >> testReferencedMethodName2 [
	"This method checks if referencedMethodName's getter and setter works given an input"
	
	| aDDMethodElement |
	aDDMethodElement  := DDMethodElement new.
	
	aDDMethodElement referencedMethodName: 'methodElement-referencedMethodName'.

	self assert: (aDDMethodElement referencedMethodName) equals: 'methodElement-referencedMethodName'.
]
