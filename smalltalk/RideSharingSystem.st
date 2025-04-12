!RideSharingSystem methodsFor: 'running'!

run
	"Create and interact with ride, driver, and rider objects."
	| rides driver1 rider1 |
	rides := OrderedCollection new.

	"Create instances of different ride types"
	rides add: (StandardRide initialize: 1 from: 'Home' to: 'Office' distance: 10).
	rides add: (PremiumRide initialize: 2 from: 'Airport' to: 'Hotel' distance: 30).
	rides add: (StandardRide initialize: 3 from: 'Park' to: 'Mall' distance: 5).
	rides add: (PremiumRide initialize: 4 from: 'Station' to: 'Restaurant' distance: 20).

	"Create a driver and a rider"
	driver1 := Driver initialize: 101 name: 'John Doe' rating: 4.8.
	rider1 := Rider initialize: 201 name: 'Jane Smith'.

	"Iterate through the list of rides to calculate fare, display details, and assign to driver and rider"
	rides do: [ :ride |
		ride calculateFare.
		Transcript show: ride rideDetails; cr.
		driver1 addRide: ride.
		rider1 requestRide: ride.
	].

	"Display information about the driver and the rider"
	Transcript show: driver1 getDriverInfo; cr.
	Transcript show: rider1 viewRides; cr.
!