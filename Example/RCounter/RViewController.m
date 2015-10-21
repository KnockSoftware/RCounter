//
//  RViewController.m
//  RCounter
//
//  Created by William Henderson on 10/21/2015.
//  Copyright (c) 2015 William Henderson. All rights reserved.
//

#import "RViewController.h"
#import "RCounter.h"

#define kRefreshTimeInSeconds 1

@interface RViewController () {
    NSTimer *myTimerName;
    long second;
    RCounter *counter;
}

@end

@implementation RViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    counter = [[RCounter alloc] initWithFrame:CGRectMake(0, 0, 160, 70) andNumberOfDigits:5];
    [self.view addSubview:counter];
    counter.center = self.view.center;
    
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
    [counter incrementCounter:YES];
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
