Class {
	#name : #MatrixReader,
	#superclass : #Object,
	#category : #'Exercise@Matrix'
}

{ #category : #running }
MatrixReader >> input: matrix atColumn: col [
	| literals width |
	literals := matrix parseLiterals.
	width := literals size sqrt asInteger.
	^ ((Interval from: 1 to: literals size)
		select: [ :n | (n rem: width) = (col rem: width) ])
	collect: [ :i | literals at: i ]
]

{ #category : #running }
MatrixReader >> input: matrix atRow: row [
	| literals width startPos endPos |
	literals := matrix parseLiterals.
	width := literals size sqrt asInteger.
	startPos := (row - 1) * width + 1.
	endPos := startPos + width - 1.
	^ literals copyFrom: startPos to: endPos
]
