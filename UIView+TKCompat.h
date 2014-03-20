//
//  UIView+TKCompat.h
//  Toolkit
//
//  Created by Thomas Kuster on 20.03.14.
//  Copyright (c) 2014 Scholz & Volkmer GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TKCompat)

- (CGFloat)topOfViewOffset;
- (void) addStatusBarBlur;

@end
