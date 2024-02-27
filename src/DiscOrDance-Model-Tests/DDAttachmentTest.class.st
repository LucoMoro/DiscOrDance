"
A DDAttachmentTest is a test class for testing the behavior of DDAttachment
"
Class {
	#name : #DDAttachmentTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDAttachmentTest >> testFileName [
	"This method checks if fileName's getter and setter works given an input"
	
	| aDDAttachment |
	aDDAttachment := DDAttachment new.
	
	aDDAttachment fileName: 'attachment-filename'.
	
	self assert: aDDAttachment fileName equals: 'attachment-filename'.
]

{ #category : #test }
DDAttachmentTest >> testFileSize [
	"This method checks if fileSize's getter and setter works given an input"
	
	| aDDAttachment |
	aDDAttachment := DDAttachment new.
	
	aDDAttachment fileSize: 'attachment-size'.
	 
	self assert: aDDAttachment fileSize equals: 'attachment-size'.
]

{ #category : #test }
DDAttachmentTest >> testId [
	"This method checks if id's getter and setter works without giving any input"
	
	| aDDAttachment |
	aDDAttachment := DDAttachment new.
	
	aDDAttachment id: 'attachment-id'.
	
	self assert: aDDAttachment id equals: 'attachment-id'.
]

{ #category : #test }
DDAttachmentTest >> testProxyUrl [
	"This method checks if proxyUrl's getter and setter works given an input"
	
	| aDDAttachment |
	aDDAttachment := DDAttachment new.
	
	aDDAttachment proxyUrl: 'attachment-proxy'.
	
	self assert: aDDAttachment proxyUrl equals: 'attachment-proxy'.
]

{ #category : #test }
DDAttachmentTest >> testUrl [
	"This method checks if url's getter and setter works without giving any input"
	
	| aDDAttachment |
	aDDAttachment := DDAttachment new.
	
	aDDAttachment url: 'attachment-url'.
	
	self assert: aDDAttachment url equals: 'attachment-url'.
]
