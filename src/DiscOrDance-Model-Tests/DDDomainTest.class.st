"
A DDDomainTest is a test class for testing the behavior of DDDomain
"
Class {
	#name : #DDDomainTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDDomainTest >> testLanguage [
	"This method checks if language's getter and setter works without giving any input"
	
	| aDDDomain |
	aDDDomain := DDDomain new.

	self assert: (aDDDomain language) equals: 'english'.
]

{ #category : #test }
DDDomainTest >> testLanguage2 [
	"This method checks if language's getter and setter works given an input"
	
	| aDDDomain |
	aDDDomain := DDDomain new.
	
	aDDDomain language: 'italian'.

	self assert: (aDDDomain language) equals: 'italian'.
]

{ #category : #test }
DDDomainTest >> testPunctuation [
	"This method checks if punctuation's getter and setter works without giving any input"
	
	| aDDDomain |
	aDDDomain := DDDomain new.

	self assert: (aDDDomain punctuation) equals: DDDomain defaultPunctuation.
]

{ #category : #test }
DDDomainTest >> testPunctuation2 [
	"This method checks if punctuation's getter and setter works given an input"
	
	| aDDDomain |
	aDDDomain := DDDomain new.
	
	aDDDomain punctuation: '?'.

	self assert: (aDDDomain punctuation) equals: '?'.
]

{ #category : #test }
DDDomainTest >> testStopwords [
	"This method checks if stopwords's getter and setter works  without giving any input"
	
	| aDDDomain |
	aDDDomain := DDDomain new.

	self assert: (aDDDomain stopwords) equals: DDDomain defaultStopwords.
]

{ #category : #test }
DDDomainTest >> testStopwords2 [
	"This method checks if stopwords's getter and setter works given an input"
	
	| aDDDomain |
	aDDDomain := DDDomain new.
	
	aDDDomain stopwords: 'domain-stopwords'.

	self assert: (aDDDomain stopwords) equals: 'domain-stopwords'.
]
