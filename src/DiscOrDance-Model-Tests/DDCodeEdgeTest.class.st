"
A DDCodeEdgeTest is a test class for testing the behavior of DDCodeEdge
"
Class {
	#name : #DDCodeEdgeTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDCodeEdgeTest >> testCode [
	"This method checks if node1's getter works without giving any input"
	
	| aDDCodeEdge |
	aDDCodeEdge := DDCodeEdge new.
	
	self assert: aDDCodeEdge code equals: nil.
]

{ #category : #test }
DDCodeEdgeTest >> testCode2 [
	"This method checks if node1's getter and setter works given an input"
	
	| aDDCodeEdge |
	aDDCodeEdge := DDCodeEdge new.
	
	aDDCodeEdge code: 'codeEdge-code'.
	
	self assert: aDDCodeEdge code equals: 'codeEdge-code'.
]

{ #category : #test }
DDCodeEdgeTest >> testEntity [
	"This method checks if entity's getter works without giving any input"
	
	| aDDCodeEdge |
	aDDCodeEdge := DDCodeEdge new.
	
	self assert: aDDCodeEdge entity equals: nil.
]

{ #category : #test }
DDCodeEdgeTest >> testEntity2 [
	"This method checks if entity's getter and setter works given an input"
	
	| aDDCodeEdge |
	aDDCodeEdge := DDCodeEdge new.
	
	aDDCodeEdge entity: 'codeEdge-entity'.
	
	self assert: aDDCodeEdge entity equals: 'codeEdge-entity'.
]

{ #category : #test }
DDCodeEdgeTest >> testNode1 [
	"This method checks if node1's getter works without giving any input"
	
	| aDDCodeEdge |
	aDDCodeEdge := DDCodeEdge new.
		
	self assert: aDDCodeEdge node1 equals: nil.
]

{ #category : #test }
DDCodeEdgeTest >> testNode1_2 [
	"This method checks if node1's getter and setter works given an input"
	
	| aDDCodeEdge |
	aDDCodeEdge := DDCodeEdge new.
	
	aDDCodeEdge node1: 'codeEdge-node1'.
	
	self assert: aDDCodeEdge code equals: 'codeEdge-node1'.
]

{ #category : #test }
DDCodeEdgeTest >> testNode2 [
	"This method checks if node2's getter works without giving any input"
	
	| aDDCodeEdge |
	aDDCodeEdge := DDCodeEdge new.
		
	self assert: aDDCodeEdge node2 equals: nil.
]

{ #category : #test }
DDCodeEdgeTest >> testNode2_2 [
	"This method checks if node2's getter and setter works given an input"
	| aDDCodeEdge |
	aDDCodeEdge := DDCodeEdge new.
	
	aDDCodeEdge node2: 'codeEdge-node2'.
	
	self assert: aDDCodeEdge entity equals: 'codeEdge-node2'.
]
