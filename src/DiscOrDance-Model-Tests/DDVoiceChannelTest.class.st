"
A DDVoiceChannelTest is a test class for testing the behavior of DDVoiceChannel
"
Class {
	#name : #DDVoiceChannelTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDVoiceChannelTest >> testIsTextChannel [
	"This method checks if isTextChannels works properly"
	
	| aDDVoiceChannel |
	aDDVoiceChannel := DDVoiceChannel new.
	
	self assert: aDDVoiceChannel isTextChannel equals: false.
]
