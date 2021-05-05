Class {
	#name : #Isogram,
	#superclass : #Object,
	#category : #'Exercise@Isogram'
}

{ #category : #testing }
Isogram >> isIsogramPhrase: text [
	| letters |
	letters := text asLowercase onlyLetters.
	^ letters size = letters asSet size
]
