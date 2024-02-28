"
A DDEmbedFieldTest is a test class for testing the behavior of DDEmbedField
"
Class {
	#name : #DDEmbedFieldTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDEmbedFieldTest >> testValue [
	"This method checks if value's getter and setter works giving an input"
	
	| aDDEmbedField |
	aDDEmbedField := DDEmbedField new.
	
	aDDEmbedField value: 'embedField-value'.

	self assert: aDDEmbedField value equals: 'embedField-value'.
]
