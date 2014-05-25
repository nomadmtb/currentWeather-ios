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
    
    if (!_locator) {
        _locator = [[LocateBot alloc] init];
    }
    
    NSLog(@"Locator: %@", _locator);
    
    [_locator locateMe];
}
@end
