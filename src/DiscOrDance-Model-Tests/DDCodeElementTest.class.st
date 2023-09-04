"
A DDCodeElementTest is a test class for testing the behavior of DDCodeElement
"
Class {
	#name : #DDCodeElementTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDCodeElementTest >> testCode [
	"This method checks if code's getter works without giving any input"
	
	| aDDCodeElement |
	aDDCodeElement  := DDCodeElement new.

	self assert: aDDCodeElement code equals: nil.
]

{ #category : #test }
DDCodeElementTest >> testCode2 [
	"This method checks if code's getter and setter works given an input"
	
	| aDDCodeElement |
	aDDCodeElement  := DDCodeElement new.
	
	aDDCodeElement code: 'codeElement-code'.

	self assert: aDDCodeElement code equals: 'codeElement-code'.
]

{ #category : #test }
DDCodeElementTest >> testIndex [
	"This method checks if index's getter works without giving any input"
	
	| aDDCodeElement |
	aDDCodeElement  := DDCodeElement new.

	self assert: aDDCodeElement index equals: nil.
]

{ #category : #test }
DDCodeElementTest >> testIndex2 [
	"This method checks if index's getter and setter works given an input"
	
	| aDDCodeElement |
	aDDCodeElement  := DDCodeElement new.
	
	aDDCodeElement index: 'codeElement-index'.

	self assert: aDDCodeElement index equals: 'codeElement-index'.
]
