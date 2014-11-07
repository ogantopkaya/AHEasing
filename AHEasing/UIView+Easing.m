//
//  UIView+Easing.m
//  iOSGamingLibrary
//
//  Created by Ogan on 04/11/14.
//  Copyright (c) 2014 Peak Games. All rights reserved.
//

#import "UIView+Easing.h"


@implementation UIView (Easing)

- (void)animateToCenter:(CGPoint)center duration:(CGFloat)duration easingFunction:(AHEasingFunction)easingFunction completion:(void(^)(void)) completion{
    
    if (completion) {
        [CATransaction begin];
        [CATransaction setCompletionBlock:completion];
    }
    
    {
        CALayer *layer= [self layer];
        [CATransaction begin];
        [CATransaction setValue:[NSNumber numberWithFloat:duration] forKey:kCATransactionAnimationDuration];
        
        CAAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"position"
                                                                  function:easingFunction
                                                                 fromPoint:[self center]
                                                                   toPoint:center];
        [layer addAnimation:animation forKey:@"position"];
        
        [CATransaction commit];
        self.center = center;
    }
    
    if (completion) {
        [CATransaction commit];
    }
}

- (void)animateToTransform:(CGAffineTransform)transform duration:(CGFloat)duration easingFunction:(AHEasingFunction)easingFunction completion:(void(^)(void)) completion{
    
    if (completion) {
        [CATransaction begin];
        [CATransaction setCompletionBlock:completion];
    }
    
    {
        CALayer *layer= [self layer];
        [CATransaction begin];
        [CATransaction setValue:[NSNumber numberWithFloat:duration] forKey:kCATransactionAnimationDuration];
        
        CAAnimation *animation = [CAKeyframeAnimation animationWithKeyPath:@"transform"
                                                                  function:easingFunction
                                                             fromTransform:self.transform
                                                               toTransform:transform];
        [layer addAnimation:animation forKey:@"transform"];
        
        [CATransaction commit];
        self.transform = transform;
    }
    
    if (completion) {
        [CATransaction commit];
    }
}


@end
