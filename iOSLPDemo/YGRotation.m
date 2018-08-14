//
//  YGRotation.m
//  iOSLPDemo
//
//  Created by Jackson on 2018/8/14.
//  Copyright © 2018年 Jackson. All rights reserved.
//

#import "YGRotation.h"

 static YGRotation *_instance = nil;
@implementation YGRotation
+ (YGRotation *)sharedInstance {
   
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        _instance = [[self alloc] init];
        _instance.orientationMask = UIInterfaceOrientationMaskPortrait;  // 默认竖屏
    });
    return _instance;
}

#pragma mark - 竖屏
- (void)rotationPortrait
{
    self.orientationMask = UIInterfaceOrientationMaskPortrait;
    
    [self _setNewOrientation:UIInterfaceOrientationMaskPortrait];
}

#pragma mark - 横屏
- (void)rotationLandscape
{
    self.orientationMask = UIInterfaceOrientationMaskLandscape;
    
    [self _setNewOrientation:UIInterfaceOrientationLandscapeRight];
    
}


-(void)_setNewOrientation:(int) orientationMask
{
    NSNumber *orientationValue = [NSNumber numberWithInt:orientationMask];
    [[UIDevice currentDevice] setValue:orientationValue forKey:@"orientation"];
}
@end
