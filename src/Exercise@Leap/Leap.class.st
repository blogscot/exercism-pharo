Class {
	#name : #Leap,
	#superclass : #Object,
	#category : #'Exercise@Leap'
}

{ #category : #acccessing }
Leap >> leapYear: year [
	^ (year rem: 4) isZero
		& ((year rem: 100) isZero not | (year rem: 400) isZero)
]
