"
A DDExploreRawCommandTest is a test class for testing the behavior of DDExploreRawCommand
"
Class {
	#name : #DDExploreRawCommandTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Tests-Commands'
}

{ #category : #test }
DDExploreRawCommandTest >> testModelType [
	| aCommand |
	aCommand := DDExploreRawCommand new.
	self assert: aCommand modelType equals: #raw.
]
