//
//  WeatherBot.m
//  currentWeather
//
//  Created by Kyle Luce on 5/25/14.
//  Copyright (c) 2014 Kyle Luce. All rights reserved.
//

#import "WeatherBot.h"

@implementation WeatherBot

-(void) getWeather:(LocateBot *)myLocation {
    
    // Get weather data from server, initialize properties.
    NSString* weatherEndpoint = [[NSString alloc] initWithFormat:
        @"http://api.openweathermap.org/data/2.5/weather?lat=%f&lon=%f&units=imperial",
        myLocation.currentLocation.coordinate.latitude,
        myLocation.currentLocation.coordinate.longitude];
    
    NSLog(@"Endpoint: %@", weatherEndpoint);
    
    // Request weather data.
    NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:weatherEndpoint]];
    
    // Making request to the endPoint.
    NSData* response = [NSURLConnection sendSynchronousRequest:request
        returningResponse: nil error: nil];
    
    // Parse the JSON data into an array.
    NSError* parseError = nil;
    NSArray* encodedData = [NSJSONSerialization JSONObjectWithData:response
        options:0 error:&parseError];
    
    NSLog(@"%@", encodedData);
}

@end
