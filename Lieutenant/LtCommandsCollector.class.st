Class {
	#name : #LtCommandsCollector,
	#superclass : #LtCommandsRegisterVisitor,
	#instVars : [
		'commandsCollected'
	],
	#category : #'Lieutenant-Register'
}

{ #category : #accessing }
LtCommandsCollector >> commandsCollected [
	^ commandsCollected
]

{ #category : #initialization }
LtCommandsCollector >> initialize [
	super initialize.
	commandsCollected := OrderedCollection new
]

{ #category : #visiting }
LtCommandsCollector >> visitLtCommandEntry: aLtCommandEntry [
	commandsCollected add: aLtCommandEntry command.
	^ aLtCommandEntry
]