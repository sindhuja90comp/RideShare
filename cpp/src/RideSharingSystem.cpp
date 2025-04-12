#include <iostream>
#include <vector>
#include "include/Ride.h"
#include "include/StandardRide.h"
#include "include/PremiumRide.h"
#include "include/Driver.h"
#include "include/Rider.h"

int main() {
    // Create some riders
    Rider rider1(101, "Alice");
    Rider rider2(102, "Bob");

    // Create some drivers
    Driver driver1(201, "Charlie", 4.8);
    Driver driver2(202, "Diana", 4.5);

    // Create some rides
    Ride* standardRide1 = new StandardRide(301, "Home", "Office", 10.0);
    Ride* premiumRide1 = new PremiumRide(302, "Airport", "Hotel", 25.0);

    // Riders request rides
    rider1.requestRide(standardRide1);
    rider2.requestRide(premiumRide1);
    rider1.viewRides();
    rider2.viewRides();

    // Drivers get assigned rides
    driver1.addRide(standardRide1);
    driver2.addRide(premiumRide1);
    driver1.getDriverInfo();
    driver2.getDriverInfo();

    // Calculate fares and display ride details
    standardRide1->calculateFare();
    premiumRide1->calculateFare();
    standardRide1->rideDetails();
    premiumRide1->rideDetails();

    // Clean up allocated memory
    delete standardRide1;
    delete premiumRide1;

    return 0;
}