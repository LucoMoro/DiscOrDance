"
A DDMergedAuthorTest is a test class for testing the behavior of DDMergedAuthor
"
Class {
	#name : #DDMergedAuthorTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDMergedAuthorTest >> testAliases [
	"This method checks if aliases's getter and setter of aDDMergedAuthor works without giving any input"
	| aDDMergedAuthor |
	aDDMergedAuthor := DDMergedAuthor new.
	
	self assert: (aDDMergedAuthor aliases) equals: Set new.
]

{ #category : #test }
DDMergedAuthorTest >> testAliases2 [
	"This method checks if aliases's getter and setter of aDDMergedAuthor works given an input"
	| aDDMergedAuthor |
	aDDMergedAuthor := DDMergedAuthor new.
	
	aDDMergedAuthor aliases: 'mergedAuthor-aliases'.
	
	self assert: (aDDMergedAuthor aliases) equals: 'mergedAuthor-aliases'.
]

{ #category : #test }
DDMergedAuthorTest >> testAuthors [
	"This method checks if authors' getter and setter of aDDAttachment works without giving any input"
	| aDDMergedAuthor |
	aDDMergedAuthor := DDMergedAuthor new.
	
	self assert: (aDDMergedAuthor authors) equals: Set new.
]

{ #category : #test }
DDMergedAuthorTest >> testAuthors2 [
	"This method checks if authors' getter and setter of aDDMergedAuthor works given an input"
	| aDDMergedAuthor aDDAuthor |
	aDDMergedAuthor := DDMergedAuthor new.
	aDDAuthor := DDAuthor new.
	
	aDDMergedAuthor authors: aDDAuthor.
	
	self assert: (aDDMergedAuthor authors) equals: aDDAuthor.
]
