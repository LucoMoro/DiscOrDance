"
A DDServerTest is a test class for testing the behavior of DDServer
"
Class {
	#name : #DDServerTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDServerTest >> testActiveAuthors [
	"Tist test checks if activeAuthors' geteter and setter works withput giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer activeAuthors) equals: Set new.

]

{ #category : #test }
DDServerTest >> testActiveAuthors2 [
	"Tist test checks if activeAuthors' geteter and setter works ginve an input"
	| aDDServer aDDAuthor |
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	
	aDDServer activeAuthors: aDDAuthor.
	
	self assert: (aDDServer activeAuthors) equals: aDDAuthor.

]

{ #category : #test }
DDServerTest >> testActiveMembers [
	"Tist test checks if activeMembers works properly"
	| aDDServer aDDAuthor aSet|
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	aSet := Set new.
	
	aSet add: aDDAuthor.
	aDDServer members: aSet.
	aDDServer activeAuthors: aSet.
	
	self assert: (aDDServer activeMembers) equals: aSet.

]

{ #category : #test }
DDServerTest >> testActiveMembers2 [
	"Tist test checks if activeMembers works properly"
	| aDDServer aDDAuthor aSecondDDAuthor aSet aSecondSet|
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	aSecondDDAuthor := DDAuthor new.
	aSet := Set new.
	aSecondSet := Set new.
	
	aSet add: aDDAuthor.
	aSet add: aSecondDDAuthor.
	aSecondSet add: aSecondDDAuthor.
	aDDServer members: aSet.
	aDDServer activeAuthors: aSecondSet.
	
	self assert: (aDDServer activeMembers) equals: aSecondSet.

]

{ #category : #test }
DDServerTest >> testActivitySortedAuthors [
	"Tist test checks if activitySortedAuthors works properly"
	| aDDServer aDDAuthorMock aSet|
	aDDServer := DDServer new.
	aSet := Set new.
	aDDAuthorMock := Mock new.
	
	aSet add: aDDAuthorMock.
	(aDDAuthorMock stub activitySorted: aSet) willReturn: OrderedCollection new.
	
	self assert: (aDDServer activitySortedAuthors) equals: OrderedCollection new.

]

{ #category : #test }
DDServerTest >> testAddActiveAuthor [
	"Tist test checks if addActiveAuthor works properly without initializing the array"
	| aDDServer aDDAuthor aSet |
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	aSet := Set new.

	aDDServer activeAuthors: Set new.
	aDDServer addActiveAuthor: aDDAuthor.
	
	aSet add: aDDAuthor.
	
	self assert: (aDDServer activeAuthors) equals: aSet.

]

{ #category : #test }
DDServerTest >> testAddActiveAuthor2 [
	"Tist test checks if addActiveAuthor works properly with an initialized array"
	| aDDServer aDDAuthor aSecondDDAuthor aSet aSetOfDDAuthors|
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	aSecondDDAuthor := DDAuthor new.
	aSet := Set new.
	aSetOfDDAuthors := Set new.
	
	aSetOfDDAuthors add: aDDAuthor.
	aDDServer activeAuthors: aSetOfDDAuthors.
	aDDServer addActiveAuthor: aSecondDDAuthor.
	
	aSet add: aDDAuthor.
	aSet add: aSecondDDAuthor.
	
	self assert: (aDDServer activeAuthors) equals: aSet.

]

{ #category : #test }
DDServerTest >> testAddAuthor [
	"Tist test checks if addAuthor works properly without initializing the array"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer authors) equals: Set new.

]

{ #category : #test }
DDServerTest >> testAddAuthor2 [
	"Tist test checks if addAuthor works properly without initializing the array"
	| aDDServer aDDAuthor aSet |
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.
	aSet := Set new.

	aDDServer addAuthor: aDDAuthor.
	
	aSet add: aDDAuthor.
	
	self assert: (aDDServer authors) equals: aSet.

]

{ #category : #test }
DDServerTest >> testAddEmoji [
	"Tist test checks if addAuthor works properly with an initialized array"
	| aDDServer aDDEmoji aSet |
	aDDServer := DDServer new.
	aDDEmoji := DDEmoji new.
	aSet := Set new.
	
	aDDServer addEmoji: aDDEmoji.
	aSet add: aDDEmoji.
	
	
	self assert: (aDDServer emojis) equals: aSet.

]

{ #category : #test }
DDServerTest >> testAlphaSortedAuthors [
	"Tist test checks if alphaSortedAuthors works properly with an initialized array"
	| aDDServer aDDAuthorMock aSet |
	aDDServer := DDServer new.
	aDDAuthorMock := Mock new.
	aSet := Set new.
	
	aDDServer addAuthor: aDDAuthorMock.
	aSet add: aDDAuthorMock.
	(aDDAuthorMock stub alphaSorted: aSet) willReturn: aSet.
	aDDServer alphaSortedAuthors.
	
	self assert: (aDDServer authors) equals: aSet.

]
