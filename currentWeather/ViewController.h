//
//  ViewController.h
//  currentWeather
//
//  Created by Kyle Luce on 5/25/14.
//  Copyright (c) 2014 Kyle Luce. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LocateBot.h"

@interface ViewController : UIViewController

- (IBAction)getWeather:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *printLocation;
@property (strong, nonatomic) LocateBot* locator;

@end
