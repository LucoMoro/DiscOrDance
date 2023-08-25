"
A DDCommandTest is a test class for testing the behavior of DDCommand
"
Class {
	#name : #DDCommandTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Tests-Commands'
}

{ #category : #test }
DDCommandTest >> testExecute [
	| aCommand |
	aCommand := DDCommand new.
	self should: [ aCommand execute ]  raise: SubclassResponsibility.
]
