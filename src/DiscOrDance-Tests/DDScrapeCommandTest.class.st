"
A DDScrapeCommandTest is a test class for testing the behavior of DDScrapeCommand
"
Class {
	#name : #DDScrapeCommandTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Tests-Commands'
}

{ #category : #test }
DDScrapeCommandTest >> testConfiguration [
	| aCommand aConfiguration |
	aCommand := DDScrapeCommand new. 
	aConfiguration := DDGlobalConfiguration new.
	aCommand configuration: aConfiguration.
	
	self assert: aCommand configuration equals: aConfiguration.
]

{ #category : #tests }
DDScrapeCommandTest >> testNilConfiguration [
	| aCommand aConfiguration |
	aCommand := DDScrapeCommand new. 
	aConfiguration := nil.
	aCommand configuration: aConfiguration.
	
	self should: [ aCommand configuration ] raise: Error.
]
