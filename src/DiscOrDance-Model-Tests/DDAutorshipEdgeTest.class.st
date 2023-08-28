"
A DDAutorshipEdgeTest is a test class for testing the behavior of DDAutorshipEdge
"
Class {
	#name : #DDAutorshipEdgeTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDAutorshipEdgeTest >> testAuthor [
	"This test checks if author's setter and getter works without giving any input"
	| aDDAutorshipEdge |
	aDDAutorshipEdge := DDAutorshipEdge new.
	
	self assert: (aDDAutorshipEdge author) equals: nil.
]

{ #category : #test }
DDAutorshipEdgeTest >> testAuthor2 [
	"This test checks if author's setter and getter works given an input"
	| aDDAutorshipEdge |
	aDDAutorshipEdge := DDAutorshipEdge new.
	
	aDDAutorshipEdge author: 'authorshipEdge-author'.
	
	self assert: (aDDAutorshipEdge author) equals: 'authorshipEdge-author'.
]

{ #category : #test }
DDAutorshipEdgeTest >> testMessage [
	"This test checks if message's setter and getter works without giving any input"
	| aDDAutorshipEdge |
	aDDAutorshipEdge := DDAutorshipEdge new.
	
	self assert: (aDDAutorshipEdge message) equals: nil.
]

{ #category : #test }
DDAutorshipEdgeTest >> testMessage2 [
	"This test checks if message's setter and getter works given an input"
	| aDDAutorshipEdge |
	aDDAutorshipEdge := DDAutorshipEdge new.
	
	aDDAutorshipEdge message: 'autorshipEdge-message'.
	
	self assert: (aDDAutorshipEdge message) equals: 'autorshipEdge-message'.

]

{ #category : #test }
DDAutorshipEdgeTest >> testNode1 [
	"This test checks if node1's setter and getter works without giving any input"
	| aDDAutorshipEdge |
	aDDAutorshipEdge := DDAutorshipEdge new.
	
	self assert: (aDDAutorshipEdge node1) equals: nil.
]

{ #category : #test }
DDAutorshipEdgeTest >> testNode1_2 [
	"This test checks if node1's setter and getter works given an input"
	| aDDAutorshipEdge |
	aDDAutorshipEdge := DDAutorshipEdge new.
	
	aDDAutorshipEdge node1: 'autorshipEdge-node1'.
	
	self assert: (aDDAutorshipEdge author) equals: 'autorshipEdge-node1'.
]

{ #category : #test }
DDAutorshipEdgeTest >> testNode2 [
	"This test checks if node2's setter and getter works without giving any input"
	| aDDAutorshipEdge |
	aDDAutorshipEdge := DDAutorshipEdge new.
	
	self assert: (aDDAutorshipEdge node2) equals: nil.
]

{ #category : #test }
DDAutorshipEdgeTest >> testNode2_2 [
	"This test checks if node2's setter and getter works without giving any input"
	| aDDAutorshipEdge |
	aDDAutorshipEdge := DDAutorshipEdge new.
	
	aDDAutorshipEdge node2: 'autorshipEdge-node2'.
	
	self assert: (aDDAutorshipEdge message) equals: 'autorshipEdge-node2'.
]
