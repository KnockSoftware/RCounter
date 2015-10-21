//
//  RViewController.m
//  RCounter
//
//  Created by William Henderson on 10/21/2015.
//  Copyright (c) 2015 William Henderson. All rights reserved.
//

#import "RViewController.h"

#define kRefreshTimeInSeconds 1

@interface RViewController () {
    NSTimer *myTimerName;
    long second;
}

@end

@implementation RViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
        
    second = 0;
    
    myTimerName = [NSTimer scheduledTimerWithTimeInterval: kRefreshTimeInSeconds target:self selector:@selector(handleTimer:) userInfo:nil repeats:YES];}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)handleTimer: (id) sender
{
    
    //    [counter updateCounter:second animate:YES];
    [self.counter incrementCounter:YES];
    //    second++;
}

-(void)stopTimer: (id) sender
{
    if(myTimerName)
    {
        [myTimerName invalidate];
        myTimerName = nil;
    }
}


@end
