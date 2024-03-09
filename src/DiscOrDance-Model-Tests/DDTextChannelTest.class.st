"
A DDTextChannelTest is a test class for testing the behavior of DDTextChannel
"
Class {
	#name : #DDTextChannelTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDTextChannelTest >> testIsTextChannel [
	"This method checks if isTextChannels works properly"
	
	| aDDTextChannel |
	aDDTextChannel := DDTextChannel new.
	
	self assert: aDDTextChannel isTextChannel equals: true.
]
