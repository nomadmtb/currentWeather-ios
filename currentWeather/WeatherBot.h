//
//  WeatherBot.h
//  currentWeather
//
//  Created by Kyle Luce on 5/25/14.
//  Copyright (c) 2014 Kyle Luce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LocateBot.h"

@interface WeatherBot : NSObject

@property (strong, nonatomic) NSString* weatherTemp;
@property (strong, nonatomic) NSString* weatherHumidity;

-(void) getWeather:(LocateBot*)myLocation;

@end
