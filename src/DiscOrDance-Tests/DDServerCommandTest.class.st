"
A DDServerCommandTest is a test class for testing the behavior of DDServerCommand
"
Class {
	#name : #DDServerCommandTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Tests-Commands'
}

{ #category : #tests }
DDServerCommandTest >> testNilServerName [
	| aCommand |
	aCommand := DDServerCommand new. 
	"aCommand serverName: nil." "This is not necessary."
	
	self should: [aCommand serverName] raise: Error.
]

{ #category : #test }
DDServerCommandTest >> testServerName [
	| aCommand |
	aCommand := DDServerCommand new. 
	aCommand serverName: 'server-name'.
	
	self assert: aCommand serverName equals: 'server-name'.
	
	
]
