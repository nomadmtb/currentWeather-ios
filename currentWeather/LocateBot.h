//
//  LocateBot.h
//  currentWeather
//
//  Created by Kyle Luce on 5/25/14.
//  Copyright (c) 2014 Kyle Luce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface LocateBot : NSObject <CLLocationManagerDelegate>

-(void) locateMe;

@property (strong, nonatomic) CLLocation* currentLocation;
@property (strong, nonatomic) CLLocationManager* manager;

@end
