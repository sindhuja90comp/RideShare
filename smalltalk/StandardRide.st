Ride subclass: #StandardRide
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RideSharing'.

!StandardRide methodsFor: 'fare calculation'!

calculateFare
	"Calculate the fare for a standard ride."
	fare := self distance * 1.5.