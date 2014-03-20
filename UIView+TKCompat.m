//
//  UIView+TKCompat.m
//  Toolkit
//
//  Created by Thomas Kuster on 15.10.13.
//  Copyright (c) 2013 Scholz & Volkmer GmbH. All rights reserved.
//

#import "UIView+TKCompat.h"

// 7.0 and above
#define IS_DEVICE_RUNNING_IOS_7_AND_ABOVE() ([[[UIDevice currentDevice] systemVersion] compare:@"7.0" options:NSNumericSearch] != NSOrderedAscending)

@implementation UIView (TKCompat)

- (CGFloat)topOfViewOffset
{
    CGFloat top = 0;
    if(IS_DEVICE_RUNNING_IOS_7_AND_ABOVE()){
        top = 20.0f;
    }
    return top;
}

- (void) addStatusBarBlur
{
    if(IS_DEVICE_RUNNING_IOS_7_AND_ABOVE()) {
        UIView *statusBarBackground = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.topOfViewOffset)];
        [statusBarBackground setBackgroundColor:[UIColor blackColor]];
        [statusBarBackground setAlpha:0.7];
        [self addSubview: statusBarBackground];
    }
}


@end

