"
A DDNextConversationEdgeTest is a test class for testing the behavior of DDNextConversationEdge
"
Class {
	#name : #DDNextConversationEdgeTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDNextConversationEdgeTest >> testFollowing [
	"This test checks if following's setter and getter works without giving any input"
	| aDDNextConversationEdge |
	aDDNextConversationEdge := DDNextConversationEdge new.
	
	self assert: (aDDNextConversationEdge following) equals: nil.
]

{ #category : #test }
DDNextConversationEdgeTest >> testFollowing2 [
	"This test checks if following's setter and getter works without giving any input"
	| aDDNextConversationEdge |
	aDDNextConversationEdge := DDNextConversationEdge new.
	
	self assert: (aDDNextConversationEdge following) equals: nil.
]

{ #category : #test }
DDNextConversationEdgeTest >> testNode1 [
	"This test checks if node1's getter works witout giving any input"
	| aDDNextConversationEdge |
	aDDNextConversationEdge := DDNextConversationEdge new.
	
	self assert: (aDDNextConversationEdge node1) equals: nil.
]

{ #category : #test }
DDNextConversationEdgeTest >> testNode1_2 [
	"This test checks if node1's setter works witout giving any input"
	| aDDNextConversationEdge |
	aDDNextConversationEdge := DDNextConversationEdge new.
	
	aDDNextConversationEdge node1: 'nextConversationEdge-node1'.
	
	self assert: (aDDNextConversationEdge preceding) equals: 'nextConversationEdge-node1'.
]

{ #category : #test }
DDNextConversationEdgeTest >> testNode2 [
	"This test checks if node2's getter works witout giving any input"
	| aDDNextConversationEdge |
	aDDNextConversationEdge := DDNextConversationEdge new.
	
	self assert: (aDDNextConversationEdge node2) equals: nil.
]

{ #category : #test }
DDNextConversationEdgeTest >> testNode2_2 [
	"This test checks if node2's setter works witout giving any input"
	| aDDNextConversationEdge |
	aDDNextConversationEdge := DDNextConversationEdge new.
	
	aDDNextConversationEdge node2: 'nextConversationEdge-node2'.
	
	self assert: (aDDNextConversationEdge following) equals: 'nextConversationEdge-node2'.
]

{ #category : #test }
DDNextConversationEdgeTest >> testPreceding [
	"This test checks if preceding's setter and getter works without giving any input"
	| aDDNextConversationEdge |
	aDDNextConversationEdge := DDNextConversationEdge new.
	
	self assert: (aDDNextConversationEdge preceding) equals: nil.
]

{ #category : #test }
DDNextConversationEdgeTest >> testPreceding2 [
	"This test checks if preceding's setter and getter works given an input"
	| aDDNextConversationEdge |
	aDDNextConversationEdge := DDNextConversationEdge new.
	
	aDDNextConversationEdge preceding: 'nextConversationEdge-preceding'.
	
	self assert: (aDDNextConversationEdge preceding) equals: 'nextConversationEdge-preceding'.
]
