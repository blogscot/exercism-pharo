Class {
	#name : #Acronym,
	#superclass : #Object,
	#instVars : [
		're'
	],
	#category : #'Exercise@Acronym'
}

{ #category : #'as yet unclassified' }
Acronym >> abbreviatePhrase: aString [
	^ (re matchesIn: aString)
		collect: [ :word | word first uppercase ]
		as: String
]

{ #category : #initialization }
Acronym >> initialize [
	re := '([a-zA-Z])[a-zA-Z^'']{0,}\s?' asRegex
]
