#ifndef STANDARDRIDE_H
#define STANDARDRIDE_H

#include "Ride.h"

class StandardRide : public Ride {
public:
    StandardRide(int rideID, const std::string& pickupLocation, const std::string& dropoffLocation, double baseFare);
    ~StandardRide() override;

    void calculateFare() override;
    void rideDetails() const override;
};

#endif