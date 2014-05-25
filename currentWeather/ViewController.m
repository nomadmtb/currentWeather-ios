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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getWeather:(id)sender {
    
    // Allocate the location bot if not already done so.
    
    if (!_locator) {
        _locator = [[LocateBot alloc] init];
    }
    
    NSLog(@"Locator obj -> %@", _locator);
    
    // Send locateMe message to location class.
    [_locator locateMe];
    
    // Clear location text.
    _printLocation.text = @"";

    // Update location text-field with new coords from bot.
    _printLocation.text = [NSString stringWithFormat:@"%f, %f",
                           _locator.currentLocation.coordinate.latitude,
                           _locator.currentLocation.coordinate.longitude];
}

@end
