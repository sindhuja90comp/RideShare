Ride subclass: #PremiumRide
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RideSharing'.

!PremiumRide methodsFor: 'fare calculation'!

calculateFare
	"Calculate the fare for a premium ride."
	fare := self distance * 2.5. "Premium fare per mile"