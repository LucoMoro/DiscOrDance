"
A DDCategoryTest is a test class for testing the behavior of DDCategory
"
Class {
	#name : #DDCategoryTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDCategoryTest >> testChannels [
	"This method checks if channels' getter works without giving any input"
	
	| aDDCategory |
	aDDCategory := DDCategory new.
	
	self assert: aDDCategory channels equals: OrderedCollection new. 
]

{ #category : #test }
DDCategoryTest >> testChannels2 [
	"This method checks if channels' getter and setter works given an input"
	
	| aDDCategory |
	aDDCategory := DDCategory new.
	
	aDDCategory channels: 'category-channel'.
	
	self assert: aDDCategory channels equals: 'category-channel'. 
]

{ #category : #test }
DDCategoryTest >> testGetAuthors [
	"This method checks if getAuthors works properly"
	
	| aDDCategory aDDChannelMock |
	aDDCategory := DDCategory new.
	aDDChannelMock := Mock new.
	
	(aDDChannelMock stub collect: OrderedCollection new) willReturn: OrderedCollection new.
	
	self assert: aDDCategory getAuthors equals: Set new. 
]

{ #category : #test }
DDCategoryTest >> testGetAuthors2 [
	"This method checks if getAuthors works properly without mocking the DDChannel class"
	
	| aDDCategory aDDChannel aSet|
	aDDCategory := DDCategory new.
	aDDChannel := DDChannel new.
	aSet := Set new.
	
	aSet add: aDDChannel.
	aDDCategory channels: aSet.
	
	self assert: aDDCategory getAuthors equals: Set new. 
]

{ #category : #test }
DDCategoryTest >> testGetContainerServer [
	"This method checks if getContainerServer works properly without giving any input" 
	
	| aDDCategory |
	aDDCategory := DDCategory new.
	
	self assert: aDDCategory getContainerServer equals: nil. 
]

{ #category : #test }
DDCategoryTest >> testGetContainerServer2 [
	"This method checks if getContainerServer works properly given an input"
	
	| aDDCategory |
	aDDCategory := DDCategory new.
	
	aDDCategory parent: 'category-server'.
	
	self assert: aDDCategory getContainerServer equals: 'category-server'. 
]

{ #category : #test }
DDCategoryTest >> testGetMessagesByAuthor [
	"This method checks if getMessagesByAuthor works properly"
	
	| aDDCategory aDDChannelMock |
	aDDCategory := DDCategory new.
	aDDChannelMock := Mock new.
	
	(aDDChannelMock stub collect: OrderedCollection new) willReturn: OrderedCollection new.
	
	self assert: aDDCategory getMessagesByAuthor equals: Bag new. 
]

{ #category : #test }
DDCategoryTest >> testGetMessagesByAuthor2 [
	"This method checks if getMessagesByAuthor works properly without mocking the DDChannel class"
	
	| aDDCategory aDDChannel aSet |
	aDDCategory := DDCategory new.
	aDDChannel := DDChannel new.
	aSet := Set new.
	
	aSet add: aDDChannel.
	aDDCategory channels: aSet.
	
	self assert: aDDCategory getMessagesByAuthor equals: Bag new. 
]

{ #category : #test }
DDCategoryTest >> testMaxMessagesInChannels [
	"This method checks if getMessagesByAuthor works properly without mocking the DDChannel class"
	
	| aDDCategory aDDChannel aSet aSecondDDChannel |
	aDDCategory := DDCategory new.
	aDDChannel := DDChannel new.
	aSet := Set new.
	aSecondDDChannel := DDChannel new.
	
	aSet add: aDDChannel.
	aSet add: aSecondDDChannel.
	aDDChannel messages: 'hello'.
	aSecondDDChannel messages: 'hello there'.
	aDDCategory channels: aSet.
	
	self assert: aDDCategory maxMessagesInChannels equals: 11. 
]

{ #category : #test }
DDCategoryTest >> testParent [
	"This method checks if parent's getter works without giving any input"
	
	| aDDCategory |
	aDDCategory := DDCategory new.
	
	self assert: aDDCategory parent equals: nil. 
]

{ #category : #test }
DDCategoryTest >> testParent2 [
	"This method checks if parent's getter and setter works given an input"
	
	| aDDCategory |
	aDDCategory := DDCategory new.
	
	aDDCategory parent: 'category-parent'.
	
	self assert: aDDCategory parent equals: 'category-parent'. 
]

{ #category : #test }
DDCategoryTest >> testServer [
	"This method checks if server's getter works without giving any input"
	
	| aDDCategory |
	aDDCategory := DDCategory new.

	self assert: aDDCategory server equals: nil. 
]

{ #category : #test }
DDCategoryTest >> testServer2 [
	"This method checks if server's getter and setter works given an input"
	
	| aDDCategory |
	aDDCategory := DDCategory new.
	
	aDDCategory parent: 'category-server'.

	self assert: aDDCategory server equals: 'category-server'. 
]

{ #category : #test }
DDCategoryTest >> testTextChannels [
	"This method checks if textChannels works properly"
	
	| aDDCategory aDDChannelMock |
	aDDCategory := DDCategory new.
	aDDChannelMock := Mock new.
	
	(aDDChannelMock collect: OrderedCollection new) willReturn: OrderedCollection new.
	
	self assert: aDDCategory textChannels equals: OrderedCollection new. 
]

{ #category : #test }
DDCategoryTest >> testTextChannels2 [
	"This method checks if textChannels works properly without mocking the DDChannel subclass"
	
	| aDDCategory aDDTextChannel aSet |
	aDDCategory := DDCategory new.
	aDDTextChannel := DDTextChannel new.
	aSet := Set new.
	
	aSet add: aDDTextChannel.
	aDDCategory channels: aSet.	
	
	self assert: aDDCategory textChannels equals: aSet. 
]

{ #category : #test }
DDCategoryTest >> testVoiceChannels [
	"This method checks if voiceChannels works properly"
	
	| aDDCategory aDDChannelMock |
	aDDCategory := DDCategory new.
	aDDChannelMock := Mock new.
	
	(aDDChannelMock collect: OrderedCollection new) willReturn: OrderedCollection new.
	
	self assert: aDDCategory voiceChannels equals: OrderedCollection new. 
]

{ #category : #test }
DDCategoryTest >> testVoiceChannels2 [
	"This method checks if voiceChannels works properly without mocking the DDChannel subclass"
	
	| aDDCategory aDDVoiceChannel aSet |
	aDDCategory := DDCategory new.
	aDDVoiceChannel := DDVoiceChannel new.
	aSet := Set new.
	
	aSet add: aDDVoiceChannel.
	aDDCategory channels: aSet.	
	
	self assert: aDDCategory voiceChannels equals: aSet. 
]
