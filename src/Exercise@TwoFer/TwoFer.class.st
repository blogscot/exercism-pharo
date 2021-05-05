Class {
	#name : #TwoFer,
	#superclass : #Object,
	#category : #'Exercise@TwoFer'
}

{ #category : #accesing }
TwoFer >> who [
	^ self who: 'you'
]

{ #category : #accesing }
TwoFer >> who: name [
	^ 'One for ' , name , ', one for me.'
]
