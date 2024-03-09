"
A DDExploreCommandTest is a test class for testing the behavior of DDExploreCommand
"
Class {
	#name : #DDExploreCommandTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Tests-Commands'
}

{ #category : #test }
DDExploreCommandTest >> testModelType [
	| aCommand |
	aCommand := DDExploreCommand new.
	self should: [ aCommand modelType ]  raise: SubclassResponsibility.
]
