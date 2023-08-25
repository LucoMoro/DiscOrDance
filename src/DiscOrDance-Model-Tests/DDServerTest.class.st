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

{ #category : #test }
DDServerTest >> testAuthors [
	"Tist test checks if authors' getter and setter works without giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer authors) equals: Set new.

]

{ #category : #test }
DDServerTest >> testAuthors2 [
	"Tist test checks if authors' getter and setter works given an input"
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer authors: 'server-author'.
	
	self assert: (aDDServer authors) equals: 'server-author'.

]

{ #category : #test }
DDServerTest >> testAuthorsNamed [
	"Tist test checks if authorsNamed function works properly without initializing the array"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer authorsNamed: 'author-name') equals: Set new.

]

{ #category : #test }
DDServerTest >> testAuthorsNamed2 [
	"Tist test checks if authorsNamed function works properly if the array is initialized"
	| aDDServer aDDAuthorMock aSet|
	aDDServer := DDServer new.
	aDDAuthorMock := Mock new.
	aSet := Set new.
	
	aSet add: aDDAuthorMock.
	aDDAuthorMock name: 'author-name'.
	aDDServer authors: aSet.
	
	(aDDAuthorMock stub name) willReturn: 'author-name'.
	
	self assert: (aDDServer authorsNamed: 'author-name') equals: aSet.

]

{ #category : #test }
DDServerTest >> testCategories [
	"Tist test checks if categories' getter and setter works without giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer categories) equals: OrderedCollection new.

]

{ #category : #test }
DDServerTest >> testCategories2 [
	"Tist test checks if categories' getter and setter works without giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer categories: 'server-category'.
	
	self assert: (aDDServer categories) equals: 'server-category'.

]

{ #category : #test }
DDServerTest >> testConversations [
	"Tist test checks if conversations' getter and setter works without giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer conversations) equals: nil.

]

{ #category : #test }
DDServerTest >> testConversations2 [
	"Tist test checks if conversations' getter and setter works given an input"
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer conversations: 'server-conversations'.
	
	self assert: (aDDServer conversations) equals: 'server-conversations'.

]

{ #category : #test }
DDServerTest >> testDomain [
	"Tist test checks if domain's getter and setter works without giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer domain.
	
	self assert: (true).

]

{ #category : #test }
DDServerTest >> testEmojis [
	"Tist test checks if emojis' getter and setter works without giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	self assert: (aDDServer emojis) equals: Set new.

]

{ #category : #test }
DDServerTest >> testEmojis2 [
	"Tist test checks if emojis' getter and setter works without giving any input"
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer emojis: 'server-emojis'.
	
	self assert: (aDDServer emojis) equals: 'server-emojis'.

]

{ #category : #test }
DDServerTest >> testGetActiveAuthorLike [
	"Tist test checks if getActiveAuthorLike works properly without initializing the array"
	| aDDServer |
	aDDServer := DDServer new.

	self assert: (aDDServer activeAuthors) equals: Set new.

]

{ #category : #test }
DDServerTest >> testGetActiveAuthorLike2 [
	"Tist test checks if getActiveAuthorLike works properly initializing the array"
	| aDDServer aDDAuthor|
	aDDServer := DDServer new.
	aDDAuthor := DDAuthor new.

	aDDServer addActiveAuthor: aDDAuthor.

	self assert: (aDDServer getActiveAuthorLike: aDDAuthor) equals: aDDAuthor.

]

{ #category : #test }
DDServerTest >> testGetAuthorWithId [
	"Tist test checks if getAuthorWithId  works properly"
	| aDDServer aDDAuthorMock aSet|
	aDDServer := DDServer new.
	aDDAuthorMock := Mock new.
	aSet := Set new.

	aSet add: aDDAuthorMock.
	aDDServer authors: aSet.
	
	(aDDAuthorMock stub id) willReturn: 'author-id'.
	
	self assert: (aDDServer getAuthorWithId: 'author-id') equals: aDDAuthorMock.

]

{ #category : #test }
DDServerTest >> testGetEmojiWithId [
	"Tist test checks if getEmojiWithId works properly"
	| aDDServer aDDEmojiMock aSet|
	aDDServer := DDServer new.
	aDDEmojiMock := Mock new.
	aSet := Set new.

	aSet add: aDDEmojiMock.
	aDDServer emojis: aSet.
	
	(aDDEmojiMock stub id) willReturn: 'emoji-id'.
	
	self assert: (aDDServer getEmojiWithId: 'emoji-id') equals: aDDEmojiMock.

]

{ #category : #test }
DDServerTest >> testGetRoleWithId [
	"Tist test checks if getRoleWithId first branch  works properly"
	| aDDServer aDDRoleMock aSet|
	aDDServer := DDServer new.
	aDDRoleMock := Mock new.
	aSet := Set new.

	aSet add: aDDRoleMock.
	aDDServer roles: aSet.
	
	(aDDRoleMock stub id) willReturn: 'role-id'.
	
	self assert: (aDDServer getRoleWithId: 'role-id') equals: aDDRoleMock.

]

{ #category : #test }
DDServerTest >> testGetRoleWithId2 [
	"Tist test checks if getRoleWithId second branch  works properly"
	| aDDServer aDDRoleMock |
	aDDServer := DDServer new.
	aDDRoleMock := Mock new.
	
	(aDDRoleMock stub id) willReturn: 'role-id'.
	
	self assert: (aDDServer getRoleWithId: 'role-id') equals: aDDRoleMock.

]

{ #category : #test }
DDServerTest >> testInactiveMembers [
	"Tist test checks if inactiveMembers works properly without initializing the array"
	| aDDServer aDDAuthorMock |
	aDDServer := DDServer new.
	aDDAuthorMock := Mock new.

	aDDServer addAuthor: aDDAuthorMock.
	aDDServer addActiveAuthor: aDDAuthorMock.
	
	self assert: (aDDServer inactiveMembers) equals: Set new.

]

{ #category : #test }
DDServerTest >> testIsCustomEdited [
	"Tist test checks if isCustomEdited works properly"
	| aDDServer |
	aDDServer := DDServer new.

	self assert: (aDDServer isCustomEdited) equals: false.

]

{ #category : #test }
DDServerTest >> testManualCustomize [
	"Tist test checks if manualCustomize works properly"
	| aDDServer |
	aDDServer := DDServer new.
	
	aDDServer manualCustomize.
	 
	self assert: (aDDServer isCustomEdited) equals: true.

]
