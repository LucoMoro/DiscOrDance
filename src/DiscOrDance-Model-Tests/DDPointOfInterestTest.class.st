"
A DDPointOfInterestTest is a test class for testing the behavior of DDPointOfInterest
"
Class {
	#name : #DDPointOfInterestTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDPointOfInterestTest >> testChannel [
	"This method checks if channel's getter and setter works without giving any input"
	| aDDPointOfInterest |
	aDDPointOfInterest  := DDPointOfInterest new.

	self assert: (aDDPointOfInterest channel) equals: nil.
]

{ #category : #test }
DDPointOfInterestTest >> testChannel2 [
	"This method checks if channel's getter and setter works given an input"
	| aDDPointOfInterest |
	aDDPointOfInterest  := DDPointOfInterest new.
	
	aDDPointOfInterest channel: 'POIs-channel'.

	self assert: (aDDPointOfInterest channel) equals: 'POIs-channel'.
]

{ #category : #test }
DDPointOfInterestTest >> testCriteria [
	"This method checks if criteria's getter and setter works without giving any input"
	| aDDPointOfInterest |
	aDDPointOfInterest  := DDPointOfInterest new.

	self assert: (aDDPointOfInterest criteria) equals: nil.
]

{ #category : #test }
DDPointOfInterestTest >> testCriteria2 [
	"This method checks if criteria's getter and setter works given an input"
	| aDDPointOfInterest |
	aDDPointOfInterest  := DDPointOfInterest new.
	
	aDDPointOfInterest criteria: 'POIs-criteria'.

	self assert: (aDDPointOfInterest criteria) equals: 'POIs-criteria'.
]

{ #category : #test }
DDPointOfInterestTest >> testMessage [
	"This method checks if message's getter and setter works without giving any input"
	| aDDPointOfInterest |
	aDDPointOfInterest  := DDPointOfInterest new.

	self assert: (aDDPointOfInterest message) equals: nil.
]

{ #category : #test }
DDPointOfInterestTest >> testMessage2 [
	"This method checks if message's getter and setter works given an input"
	| aDDPointOfInterest |
	aDDPointOfInterest  := DDPointOfInterest new.
	
	aDDPointOfInterest message: 'POIs-message'.

	self assert: (aDDPointOfInterest message) equals: 'POIs-message'.
]

{ #category : #test }
DDPointOfInterestTest >> testName [
	"This method checks if name's getter and setter works given an input"
	| aDDPointOfInterest |
	aDDPointOfInterest  := DDPointOfInterest new.
	
	aDDPointOfInterest criteria: 'POIs-name'.

	self assert: (aDDPointOfInterest name) equals: 'POIs-name'.
]
