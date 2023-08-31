"
A DDGlobalConfigurationTest is a test class for testing the behavior of DDGlobalConfiguration
"
Class {
	#name : #DDGlobalConfigurationTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Tests-Base'
}

{ #category : #test }
DDGlobalConfigurationTest >> testLimitMessages [
	| aConfiguration |
	aConfiguration := DDGlobalConfiguration new.
	aConfiguration limitMessages: true.
	self assert: aConfiguration limitMessages equals: true.
]

{ #category : #test }
DDGlobalConfigurationTest >> testMessagesPerChannel [
	| aConfiguration |
	aConfiguration := DDGlobalConfiguration new.
	aConfiguration messagesPerChannel: 250.
	self assert: aConfiguration messagesPerChannel equals: 250.
]
