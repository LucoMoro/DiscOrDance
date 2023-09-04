"
A DDStatisticsTest is a test class for testing the behavior of DDStatistics
"
Class {
	#name : #DDStatisticsTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDStatisticsTest >> testActivityStats [
	"This method checks if activityStats' getter works without giving any input"
	
	| aDDStatistics |
	aDDStatistics  := DDStatistics new.

	self assert: aDDStatistics activityStats equals: Dictionary new.
]

{ #category : #test }
DDStatisticsTest >> testActivityStats2 [
	"This method checks if activityStats' getter and setter works given an input"
	
	| aDDStatistics |
	aDDStatistics  := DDStatistics new.
	
	aDDStatistics activityStats: 'statistics-activityStats'.

	self assert: aDDStatistics activityStats equals: 'statistics-activityStats'.
]

{ #category : #test }
DDStatisticsTest >> testAuthorStats [
	"This method checks if authorStats' getter works without giving any input"
	
	| aDDStatistics |
	aDDStatistics  := DDStatistics new.

	self assert: aDDStatistics authorStats equals: Dictionary new.
]

{ #category : #test }
DDStatisticsTest >> testAuthorStats2 [
	"This method checks if authorStats' getter and setter works given an input"
	
	| aDDStatistics |
	aDDStatistics  := DDStatistics new.
	
	aDDStatistics authorStats: 'statistics-authorStats'.

	self assert: aDDStatistics authorStats equals: 'statistics-authorStats'.
]

{ #category : #test }
DDStatisticsTest >> testConversationStats [
	"This method checks if conversationStats' getter works without giving any input"
	
	| aDDStatistics |
	aDDStatistics  := DDStatistics new.

	self assert: aDDStatistics conversationStats equals: Dictionary new.
]

{ #category : #test }
DDStatisticsTest >> testConversationStats2 [
	"This method checks if conversationStats' getter and setter works given an input"
	
	| aDDStatistics |
	aDDStatistics  := DDStatistics new.
	
	aDDStatistics conversationStats: 'statistics-conversationStats'.

	self assert: aDDStatistics conversationStats equals: 'statistics-conversationStats'.
]

{ #category : #test }
DDStatisticsTest >> testMessageStats [
	"This method checks if messageStats' getter works without giving any input"
	
	| aDDStatistics |
	aDDStatistics  := DDStatistics new.

	self assert: aDDStatistics messageStats equals: Dictionary new.
]

{ #category : #test }
DDStatisticsTest >> testMessageStats2 [
	"This method checks if messageStats' getter and setter works given an input"
	
	| aDDStatistics |
	aDDStatistics  := DDStatistics new.
	
	aDDStatistics messageStats: 'statistics-messageStats'.

	self assert: aDDStatistics messageStats equals: 'statistics-messageStats'.
]

{ #category : #test }
DDStatisticsTest >> testServer [
	"This method checks if server's getter works without giving any input"
	
	| aDDStatistics |
	aDDStatistics  := DDStatistics new.

	self assert: aDDStatistics server equals: nil.
]

{ #category : #test }
DDStatisticsTest >> testServer2 [
	"This method checks if server's getter and setter works given an input"
	
	| aDDStatistics |
	aDDStatistics  := DDStatistics new.

	aDDStatistics server: 'statistics-server'.
	
	self assert: aDDStatistics server equals: 'statistics-server'.
]

{ #category : #test }
DDStatisticsTest >> testServerStats [
	"This method checks if serverStats' getter works without giving any input"
	
	| aDDStatistics |
	aDDStatistics  := DDStatistics new.

	self assert: aDDStatistics serverStats equals: Dictionary new.
]

{ #category : #test }
DDStatisticsTest >> testServerStats2 [
	"This method checks if serverStats' getter and setter works given an input"
	
	| aDDStatistics |
	aDDStatistics  := DDStatistics new.
	
	aDDStatistics serverStats: 'statistics-serverStats'.

	self assert: aDDStatistics serverStats equals: 'statistics-serverStats'.
]
