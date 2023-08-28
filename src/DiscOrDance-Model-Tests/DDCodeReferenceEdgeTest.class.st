"
A DDCodeReferenceEdgeTest is a test class for testing the behavior of DDCodeReferenceEdge
"
Class {
	#name : #DDCodeReferenceEdgeTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDCodeReferenceEdgeTest >> testCodeElement [
	"This test checks if parent's setter and getter works without giving any input"
	| aDDCodeReferenceEdge |
	aDDCodeReferenceEdge := DDCodeReferenceEdge new.
		
	self assert: (aDDCodeReferenceEdge codeElement) equals: nil.
]

{ #category : #test }
DDCodeReferenceEdgeTest >> testCodeElement2 [
	"This test checks if codeElement's setter and getter works given an input"
	| aDDCodeReferenceEdge |
	aDDCodeReferenceEdge := DDCodeReferenceEdge new.
	
	aDDCodeReferenceEdge codeElement: 'codeReferenceEdge-codeElement'.
		
	self assert: (aDDCodeReferenceEdge codeElement) equals: 'codeReferenceEdge-codeElement'.

]

{ #category : #test }
DDCodeReferenceEdgeTest >> testNode1 [
	"This test checks if node1's setter and getter works without giving any input"
	| aDDCodeReferenceEdge |
	aDDCodeReferenceEdge := DDCodeReferenceEdge new.
	
	self assert: (aDDCodeReferenceEdge node1) equals: nil.
]

{ #category : #test }
DDCodeReferenceEdgeTest >> testNode1_2 [
	"This test checks if node1's setter and getter works given an input"
	| aDDCodeReferenceEdge |
	aDDCodeReferenceEdge := DDCodeReferenceEdge new.
	
	aDDCodeReferenceEdge node1: 'codeReferenceEdge-node1'.
	
	self assert: (aDDCodeReferenceEdge referenceClass) equals: 'codeReferenceEdge-node1'.
]

{ #category : #test }
DDCodeReferenceEdgeTest >> testNode2 [
	"This test checks if node2's setter and getter works without giving any input"
	| aDDCodeReferenceEdge |
	aDDCodeReferenceEdge := DDCodeReferenceEdge new.
	
	self assert: (aDDCodeReferenceEdge node2) equals: nil.
]

{ #category : #test }
DDCodeReferenceEdgeTest >> testNode2_2 [
	"This test checks if node2's setter and getter works given an input"
	| aDDCodeReferenceEdge |
	aDDCodeReferenceEdge := DDCodeReferenceEdge new.
	
		aDDCodeReferenceEdge node2: 'codeReferenceEdge-node2'.
	
	self assert: (aDDCodeReferenceEdge codeElement) equals: 'codeReferenceEdge-node2'.
]

{ #category : #test }
DDCodeReferenceEdgeTest >> testReferenceClass [
	"This test checks if referenceClass' setter and getter works without giving any input"
	| aDDCodeReferenceEdge |
	aDDCodeReferenceEdge := DDCodeReferenceEdge new.
		
	self assert: (aDDCodeReferenceEdge referenceClass) equals: nil.
]

{ #category : #test }
DDCodeReferenceEdgeTest >> testReferenceClass2 [
	"This test checks if referenceClass' setter and getter works given an input"
	| aDDCodeReferenceEdge |
	aDDCodeReferenceEdge := DDCodeReferenceEdge new.
	
	aDDCodeReferenceEdge referenceClass: 'codeReferenceEdge-referenceClass'.
		
	self assert: (aDDCodeReferenceEdge referenceClass) equals: 'codeReferenceEdge-referenceClass'.
]
