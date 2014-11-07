//
//  UIView+Easing.h
//  iOSGamingLibrary
//
//  Created by Ogan on 04/11/14.
//  Copyright (c) 2014 Peak Games. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CAKeyframeAnimation+AHEasing.h"

@interface UIView (Easing)

- (void)animateToCenter:(CGPoint)center duration:(CGFloat)duration easingFunction:(AHEasingFunction)easingFunction completion:(void(^)(void)) completion;

- (void)animateToTransform:(CGAffineTransform)transform duration:(CGFloat)duration easingFunction:(AHEasingFunction)easingFunction completion:(void(^)(void)) completion;

@end
