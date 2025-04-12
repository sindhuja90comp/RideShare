#ifndef PREMIUMRIDE_H
#define PREMIUMRIDE_H

#include "Ride.h"

class PremiumRide : public Ride {
public:
    PremiumRide(int rideID, const std::string& pickupLocation, const std::string& dropoffLocation, double baseFare);
    ~PremiumRide() override;

    void calculateFare() override;
    void rideDetails() const override;
};

#endif