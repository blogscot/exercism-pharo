Class {
	#name : #Pangram,
	#superclass : #Object,
	#category : #'Exercise@Pangram'
}

{ #category : #'as yet unclassified' }
Pangram >> isPangramSentence: sentence [
	^ sentence onlyLetters asLowercase asCharacterSet size = 26 
	
]
