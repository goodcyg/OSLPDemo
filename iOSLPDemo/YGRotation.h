//
//  YGRotation.h
//  iOSLPDemo
//
//  Created by Jackson on 2018/8/14.
//  Copyright © 2018年 Jackson. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface YGRotation : NSObject

+ (YGRotation *)sharedInstance;

@property (assign, nonatomic) UIInterfaceOrientationMask orientationMask;
#pragma mark - 竖屏
- (void)rotationPortrait;
#pragma mark - 横屏
- (void)rotationLandscape;
@end
