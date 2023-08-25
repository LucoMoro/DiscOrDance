"
A DDExploreCleanedCommandTest is a test class for testing the behavior of DDExploreCleanedCommand
"
Class {
	#name : #DDExploreCleanedCommandTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Tests-Commands'
}

{ #category : #test }
DDExploreCleanedCommandTest >> testModelType [
	| aCommand |
	aCommand := DDExploreCleanedCommand new.
	self assert: aCommand modelType equals: #clean.
]
