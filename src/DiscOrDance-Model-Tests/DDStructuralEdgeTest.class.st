"
A DDStructuralEdgeTest is a test class for testing the behavior of DDStructuralEdge
"
Class {
	#name : #DDStructuralEdgeTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDStructuralEdgeTest >> testChild [
	"This method checks if child's getter works witout giving any input"
	
	| aDDStructuralEdge |
	aDDStructuralEdge := DDStructuralEdge new.
	
	self assert: aDDStructuralEdge child equals: nil.
]

{ #category : #test }
DDStructuralEdgeTest >> testChild2 [
	"This method checks if child's getter and setter works given an input"
	| aDDStructuralEdge |
	aDDStructuralEdge := DDStructuralEdge new.
	
	aDDStructuralEdge child: 'structuralEdge-child'.
	
	self assert: aDDStructuralEdge child equals: 'structuralEdge-child'.
]

{ #category : #test }
DDStructuralEdgeTest >> testNode1 [
	"This method checks if node1's getter works witout giving any input"
	| aDDStructuralEdge |
	aDDStructuralEdge := DDStructuralEdge new.
	
	self assert: aDDStructuralEdge node1 equals: nil.
]

{ #category : #test }
DDStructuralEdgeTest >> testNode1_2 [
	"This method checks if node1's setter works given an input"
	
	| aDDStructuralEdge |
	aDDStructuralEdge := DDStructuralEdge new.
	
	aDDStructuralEdge node1: 'structuralEdge-node1'.
	
	self assert: aDDStructuralEdge parent equals: 'structuralEdge-node1'.
]

{ #category : #test }
DDStructuralEdgeTest >> testNode2 [
	"This method checks if node2's getter works witout giving any input"
	
	| aDDStructuralEdge |
	aDDStructuralEdge := DDStructuralEdge new.
	
	self assert: aDDStructuralEdge node2 equals: nil.
]

{ #category : #test }
DDStructuralEdgeTest >> testNode2_2 [
	"This method checks if node2's setter works given an input"
	
	| aDDStructuralEdge |
	aDDStructuralEdge := DDStructuralEdge new.
	
	aDDStructuralEdge node2: 'structuralEdge-node2'.
	
	self assert: aDDStructuralEdge child equals: 'structuralEdge-node2'.
]

{ #category : #test }
DDStructuralEdgeTest >> testParent [
	"This method checks if parent's getter and setter works without giving any input"
	
	| aDDStructuralEdge |
	aDDStructuralEdge := DDStructuralEdge new.
		
	self assert: aDDStructuralEdge parent equals: nil.
]

{ #category : #test }
DDStructuralEdgeTest >> testParent2 [
	"This method checks if parent's getter and setter works given an input"
	
	| aDDStructuralEdge |
	aDDStructuralEdge := DDStructuralEdge new.
	
	aDDStructuralEdge parent: 'structuralEdge-parent'.
		
	self assert: aDDStructuralEdge parent equals: 'structuralEdge-parent'.
]
