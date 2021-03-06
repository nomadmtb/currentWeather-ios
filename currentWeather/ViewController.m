//
//  ViewController.m
//  currentWeather
//
//  Created by Kyle Luce on 5/25/14.
//  Copyright (c) 2014 Kyle Luce. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    if (!_locator) {
        _locator = [[LocateBot alloc] init];
    }
    
    [_locator locateMe];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getWeather:(id)sender {
    
    // Update location text-field with new coords from bot.
    _printLocation.text = [NSString stringWithFormat:@"%f, %f",
                           _locator.currentLocation.coordinate.latitude,
                           _locator.currentLocation.coordinate.longitude];
    
    // Now we can get the weather from the weatherBot.
    
    // Lazy allocate.
    if (!_weather) {
        _weather = [[WeatherBot alloc] init];
    }
    
    [_weather getWeather:_locator];
    
    _printHumidity.text = @"";
    _printTemp.text = @"";
    
    _printTemp.text = _weather.weatherTemp;
    _printHumidity.text = _weather.weatherHumidity;
}

@end
