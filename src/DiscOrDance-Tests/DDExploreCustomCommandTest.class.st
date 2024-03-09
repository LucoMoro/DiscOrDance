"
A DDExploreCustomCommandTest is a test class for testing the behavior of DDExploreCustomCommand
"
Class {
	#name : #DDExploreCustomCommandTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Tests-Commands'
}

{ #category : #tests }
DDExploreCustomCommandTest >> testModelType [
	| aCommand |
	aCommand := DDExploreCustomCommand new.
	self assert: aCommand modelType equals: #custom.
]
