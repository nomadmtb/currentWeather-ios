//
//  LocateBot.m
//  currentWeather
//
//  Created by Kyle Luce on 5/25/14.
//  Copyright (c) 2014 Kyle Luce. All rights reserved.
//

#import "LocateBot.h"

@implementation LocateBot

// This is the delagate that will handle the errors for our location lookup.
-(void)locationManager:(CLLocationManager*) manager didFailWithError:(NSError *) error {
    
    NSLog(@"CLLocation Error: %@", error);
}

// This is the delagate that will get called whenever our location is updated.
- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    
    
    NSLog(@"Updated Location: %f,%f", newLocation.coordinate.latitude, newLocation.coordinate.longitude);
    
    // We want to turn off the lookup so it doesn't drain battery.
    [manager stopUpdatingLocation];
    
    
    // Allocate the _currentLocation if it's nil.
    if (!_currentLocation) {
        
        _currentLocation = [[CLLocation alloc] initWithLatitude:newLocation.coordinate.latitude longitude:newLocation.coordinate.longitude];
    
    // Okay, it's not nil. Just update it.
    }else{
        
        // Updating our location property with the newLocation.
        _currentLocation = newLocation;
        
    }
    
}

-(void) locateMe {
    
    //Create location manager.
    _manager = [[ CLLocationManager alloc] init];
    // Setting the desired accuracy.
    _manager.desiredAccuracy = kCLLocationAccuracyBest;
    
    // Start getting location.
    [_manager startUpdatingLocation];
    
    _manager.delegate = self;
    
}

@end
