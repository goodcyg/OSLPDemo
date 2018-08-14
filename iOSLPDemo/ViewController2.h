//
//  ViewController2.h
//  iOSRotationScreen
//
//  Created by Jackson on 2018/8/14.
//  Copyright © 2018年 JR_Dun. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, YGType) {
    YGTypeModal=0,
    YGTypePush=1
};


@interface ViewController2 : UIViewController
+(instancetype)viewController2;
@property (nonatomic,assign) YGType type;
@end
