Class {
	#name : #DDScraperTest,
	#superclass : #DDTestCase,
	#instVars : [
		'scraper',
		'workingDir',
		'isTokenPresent',
		'tokenValue'
	],
	#category : #'DiscOrDance-Tests-Scraper'
}

{ #category : #running }
DDScraperTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	| modelsDir tempDir serverFiles |
	super setUp.
	scraper := DDScraper new.
	workingDir := FileSystem disk workingDirectory.
	isTokenPresent := false.
	tokenValue := nil.
	modelsDir := workingDir / 'models'.
	
	"Backup files in models folder (if present)"
	modelsDir exists
		ifTrue: [
			tempDir := workingDir / 'temp'.
			tempDir exists ifTrue: [  ] ifFalse: [ FileSystem disk createDirectory: tempDir] .
			serverFiles := modelsDir children.
			serverFiles do: [ :each |
				FileSystem disk copy: each to: (tempDir / (each basename)).
				FileSystem disk delete: (modelsDir / (each basename)).
			].
			FileSystem disk delete: modelsDir.
		]
		ifFalse: [
			"Do nothing"
		].
	
	"Backup Discord token"
	Smalltalk os environment at: 'DISCORD_API_TOKEN' ifPresent: [ :value | 
		isTokenPresent := true. 
		tokenValue := value.
		Smalltalk os environment removeKey: 'DISCORD_API_TOKEN'.
	].

]

{ #category : #running }
DDScraperTest >> tearDown [ 
	| modelsDir tempDir serverFiles testFiles |
	workingDir := FileSystem disk workingDirectory.
	modelsDir := workingDir / 'models'.
	tempDir := workingDir / 'temp'.
	
	"Reset models folder"
	modelsDir exists 
		ifTrue: [ 
			testFiles := modelsDir children.
			testFiles do: [ :each |
				FileSystem disk delete: (modelsDir / (each basename)).
			].
			FileSystem disk delete: modelsDir.
		]
		ifFalse: [ 
		].
	
	"Restore original files (if present)"
	tempDir exists
		ifTrue: [
			FileSystem disk createDirectory: modelsDir.
			serverFiles := tempDir children.
			serverFiles do: [ :each |
				FileSystem disk copy: each to: (modelsDir / (each basename)).
				FileSystem disk delete: (tempDir / (each basename)).
			].
			FileSystem disk delete: tempDir.	
		]
		ifFalse: [
		].
	
	"Restore Discord token"
	Smalltalk os environment at: 'DISCORD_API_TOKEN' ifPresent: [ :value | 
		Smalltalk os environment removeKey: 'DISCORD_API_TOKEN'.
	].
	isTokenPresent 
		ifTrue: [ 
			Smalltalk os environment at: 'DISCORD_API_TOKEN' put: tokenValue.
		].
	
	super tearDown. 
]

{ #category : #test }
DDScraperTest >> testBot [
	"Test with no Discord API token"
	self should: [ scraper bot ] raise: Error.
]

{ #category : #tests }
DDScraperTest >> testBot2 [
	"Test with Discord API token"
	Smalltalk os environment at: 'DISCORD_API_TOKEN' put: 'test-token'.
	self assert: scraper bot token equals: 'test-token'.
]

{ #category : #tests }
DDScraperTest >> testGetLocalServersList [
	"Test with non-existing models folder"
	| list |
	list := scraper getLocalServersList.
	self assert: list size equals: 0.
	

	"Original test by wolfenmark"
	"| list |
	list := scraper getLocalServersList.
	(list includes: 'Wolfenmark bot development server') ifFalse: [ 
		scraper createPartialModel: 'Wolfenmark bot development server'.
		list := scraper getLocalServersList.
	].

	self assert: list isNotEmpty.
	self assert: (list includes: 'Wolfenmark bot development server')"
]

{ #category : #tests }
DDScraperTest >> testGetLocalServersList2 [
	"Test with no files in the models folder"
	| list |
	FileSystem disk createDirectory: (workingDir / 'models').
	list := scraper getLocalServersList.
	self assert: list size equals: 0.
	
]

{ #category : #tests }
DDScraperTest >> testGetLocalServersList3 [
	"Test with one file in the models folder"
	| list tempFilePath |
	FileSystem disk createDirectory: (workingDir / 'models').
	"tempFilePath := (workingDir / 'models' / 'my-test-server_clean_stats_v1_2.fl')."
	tempFilePath := (workingDir / 'models' / 'my-test-server_clean_stats_v1.fl').
	tempFilePath writeStreamDo: [ :stream | ]. 
	list := scraper getLocalServersList.
	self assert: list size equals: 1.
	"self assert: (list at: 1) equals: ('my-test-server_clean_stats_v1_')."
	self assert: (list at: 1) equals: ('my-test-server_clean_stats').
]

{ #category : #tests }
DDScraperTest >> testGetServersList [
	| list |
	list := scraper getServersList.

	self assert: list isNotEmpty.
	self assert: (list includes: 'Wolfenmark bot development server')
]

{ #category : #test }
DDScraperTest >> testGlobalConfiguration [
	| aConfiguration |
	aConfiguration := DDGlobalConfiguration new limitMessages: true; messagesPerChannel: 1000.
	scraper globalConfiguration: aConfiguration.
	
	self assert: scraper globalConfiguration limitMessages equals: true.
	self assert: scraper globalConfiguration messagesPerChannel equals: 1000.
]
