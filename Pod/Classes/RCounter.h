//
//  RCounter.h
//  Version 0.1
//
//
//  Created by Ans Riaz on 12/12/13.
//  Copyright (c) 2013 Rizh. All rights reserved.
//
//  Have fun :-)

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface RCounter : UIControl {
    CGPoint centerStart;
}

@property (nonatomic) IBInspectable NSUInteger currentReading;
@property (nonatomic) IBInspectable NSUInteger numberOfDigits;

- (void)incrementCounter:(BOOL)animate;
- (void)updateCounter:(NSUInteger)newValue animate:(BOOL)animate;

@end
