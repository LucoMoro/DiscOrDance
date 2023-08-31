"
A DDCodeTest is a test class for testing the behavior of DDCode
"
Class {
	#name : #DDCodeTest,
	#superclass : #TestCase,
	#category : #'DiscOrDance-Model-Tests-Base'
}

{ #category : #test }
DDCodeTest >> testCodeClasses [
	"This method checks if codeSource's getter and setter of aDDCode works without giving any input"
	
	| aDDCode |
	aDDCode := DDCode new.
	
	aDDCode codeSource: ''.
	
	self assert: (aDDCode codeClasses) equals: OrderedCollection new.
	
]

{ #category : #test }
DDCodeTest >> testCodeSource [
	"This method checks if codeSource's getter and setter of aDDCode works without giving any input"
	
	| aDDCode |
	aDDCode := DDCode new.
	
	self assert: (aDDCode codeSource) equals: nil.
	
]

{ #category : #test }
DDCodeTest >> testCodeSource2 [
	"This method checks if codeSource's getter and setter of aDDCode works given an giving any input"
	
	| aDDCode |
	aDDCode := DDCode new.
	
	aDDCode codeSource: 'source-code'.
	
	self assert: (aDDCode codeSource) equals: 'source-code'.
	
]

{ #category : #test }
DDCodeTest >> testIsSourceCode [
	"This method checks if isSourceCode works properly given an input"
	
	| aDDCode aDDSyntaxHighlightColorMetric |
	aDDCode := DDCode new.
	aDDSyntaxHighlightColorMetric := Mock new.
	
	(aDDSyntaxHighlightColorMetric stub highlightDictionary) willReturn: OrderedCollection new.
	aDDCode codeSource: ' Person {
    	private String name;
    	private int age;
    	}'.
	
	self assert: (aDDCode isSourceCode) equals: false.
	
]

{ #category : #test }
DDCodeTest >> testMessage [
	"This method checks if message's getter and setter of aDDCode works without giving any input"
	
	| aDDCode |
	aDDCode := DDCode new.
	
	self assert: (aDDCode message) equals: nil.
	
]

{ #category : #test }
DDCodeTest >> testMessage2 [
	"This method checks if message's getter and setter of aDDCode works given an input"
	
	| aDDCode |
	aDDCode := DDCode new.
	
	aDDCode message: 'code-message'.
	
	self assert: (aDDCode message) equals: 'code-message'.
	
]

{ #category : #test }
DDCodeTest >> testSyntaxHighlight [
	"This method checks syntaxHighlight first branch"
	
	| aDDCode |
	aDDCode := DDCode new.

	aDDCode codeSource: '	public class Person {'.
  
	self assert: (	aDDCode syntaxHighlight) equals: #none.
	
]

{ #category : #test }
DDCodeTest >> testSyntaxHighlight2 [
	"This method checks syntaxHighlight second branch"
	
	| aDDCode |
	aDDCode := DDCode new.

	aDDCode codeSource: ' Person {
    	private String name;
    	private int age;
    	}'.
  
	self assert: (	aDDCode syntaxHighlight) equals: #'person {'.
	
]

{ #category : #test }
DDCodeTest >> testSyntaxHighlight3 [
	"This method checks syntaxHighlight third branch"
	
	| aDDCode |
	aDDCode := DDCode new.

	aDDCode codeSource: '	public class Person {
    	private String name;
    	private int age;
    
    	public Person(String name, int age) {
        	this.name = name;
        	this.age = age;
    	}
    
    }'.
  
	self assert: (	aDDCode syntaxHighlight) equals: #none.
	
]
