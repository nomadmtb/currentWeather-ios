//
//  ViewController.h
//  currentWeather
//
//  Created by Kyle Luce on 5/25/14.
//  Copyright (c) 2014 Kyle Luce. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LocateBot.h"
#import "WeatherBot.h"

@interface ViewController : UIViewController

- (IBAction)getWeather:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *printLocation;
@property (strong, nonatomic) LocateBot* locator;
@property (strong, nonatomic) WeatherBot* weather;

@end
