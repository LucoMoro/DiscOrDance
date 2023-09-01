"
A DDConversationFlowEdgeTest is a test class for testing the behavior of DDConversationFlowEdge
"
Class {
	#name : #DDConversationFlowEdgeTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDConversationFlowEdgeTest >> testFollowing [
	"This method checks if following's getter works without giving any input"
	
	| aDDConversationFlowEdge |
	aDDConversationFlowEdge := DDConversationFlowEdge new.
	
	self assert: aDDConversationFlowEdge following equals: nil.
]

{ #category : #test }
DDConversationFlowEdgeTest >> testFollowing2 [
	"This method checks if following's getter and setter works given an input"
	
	| aDDConversationFlowEdge |
	aDDConversationFlowEdge := DDConversationFlowEdge new.
	
	aDDConversationFlowEdge following: 'conversationFlowEdge-following'.
	
	self assert: aDDConversationFlowEdge following equals: 'conversationFlowEdge-following'.
]

{ #category : #test }
DDConversationFlowEdgeTest >> testNode1 [
	"This method checks if node1's getter works without giving any input"
	
	| aDDConversationFlowEdge |
	aDDConversationFlowEdge := DDConversationFlowEdge new.
	
	self assert: aDDConversationFlowEdge node1 equals: nil.
]

{ #category : #test }
DDConversationFlowEdgeTest >> testNode1_2 [
	"This method checks if node1's getter and setter works given an input"
	
	| aDDConversationFlowEdge |
	aDDConversationFlowEdge := DDConversationFlowEdge new.
	
	aDDConversationFlowEdge node1: 'conversationFlowEdge-node1'.
	
	self assert: aDDConversationFlowEdge preceding equals: 'conversationFlowEdge-node1'.
]

{ #category : #test }
DDConversationFlowEdgeTest >> testNode2 [
	"This method checks if node2's getter works without giving any input"
	
	| aDDConversationFlowEdge |
	aDDConversationFlowEdge := DDConversationFlowEdge new.
	
	self assert: aDDConversationFlowEdge node2 equals: nil.
]

{ #category : #test }
DDConversationFlowEdgeTest >> testNode2_2 [
	"This method checks if node2's getter and setter works given an input"
	
	| aDDConversationFlowEdge |
	aDDConversationFlowEdge := DDConversationFlowEdge new.

	aDDConversationFlowEdge node2: 'conversationFlowEdge-node2'.
	
	self assert: aDDConversationFlowEdge following equals: 'conversationFlowEdge-node2'.
]

{ #category : #test }
DDConversationFlowEdgeTest >> testPreceding [
	"This method checks if preceding's getter works without giving any input"
	
	| aDDConversationFlowEdge |
	aDDConversationFlowEdge := DDConversationFlowEdge new.
	
	self assert: aDDConversationFlowEdge preceding equals: nil.
]

{ #category : #test }
DDConversationFlowEdgeTest >> testPreceding2 [
	"This method checks if preceding's getter and setter works given an input"
	
	| aDDConversationFlowEdge |
	aDDConversationFlowEdge := DDConversationFlowEdge new.
	
	aDDConversationFlowEdge preceding: 'conversationFlowEdge-preceding'.
	
	self assert: aDDConversationFlowEdge preceding equals: 'conversationFlowEdge-preceding'.
]
