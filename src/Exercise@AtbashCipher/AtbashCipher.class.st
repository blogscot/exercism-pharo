Class {
	#name : #AtbashCipher,
	#superclass : #Object,
	#instVars : [
		'dict'
	],
	#category : #'Exercise@AtbashCipher'
}

{ #category : #conversion }
AtbashCipher >> decodePhrase: aString [
	^ (self onlyLettersOrDigits: aString)
		collect: [ :char | dict at: char ]
		as: String
]

{ #category : #conversion }
AtbashCipher >> encodePhrase: aString [
	| encoded |
	encoded := (self onlyLettersOrDigits: aString)
		collect: [ :char | dict at: char asLowercase ]
		as: String.
	^ self insertSpace: encoded at: 5
]

{ #category : #initialization }
AtbashCipher >> initialize [
	| alphabet cipher digits |
	alphabet := 'abcdefghijklmnopqrstuvwxyz'.
	cipher := alphabet reversed.

	"Digits are not enciphered"
	digits := '01234567890'.
	alphabet := alphabet , digits.
	cipher := cipher , digits.
	
	dict := Dictionary new.
	alphabet doWithIndex: [ :each :i | dict add: each->(cipher at: i) ].
]

{ #category : #utils }
AtbashCipher >> insertSpace: text at: n [
	"inserts a space characer in string at n intervals"

	| aStream |
	aStream := WriteStream on: String new.
	text
		doWithIndex: [ :char :i | 
			aStream nextPut: char.
			(i rem: n) isZero
				ifTrue: [ aStream nextPut: $  ] ].
	^ aStream contents trimRight
]

{ #category : #utils }
AtbashCipher >> onlyLettersOrDigits: aString [
 ^ aString select: [ :each | each isDigit | each isLetter ] 

]
