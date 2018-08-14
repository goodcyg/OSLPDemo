//
//  ViewController2.m
//  iOSRotationScreen
//
//  Created by Jackson on 2018/8/14.
//  Copyright © 2018年 JR_Dun. All rights reserved.
//

#import "ViewController2.h"
#import "YGRotation.h"
@interface ViewController2 ()
- (IBAction)testbutton:(id)sender;

@end

@implementation ViewController2

+(instancetype)viewController2
{
    return [[self alloc] initWithNibName:nil bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
    [[YGRotation sharedInstance] rotationLandscape];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [[YGRotation sharedInstance] rotationPortrait];
}


- (IBAction)testbutton:(id)sender {
    if (_type==YGTypeModal) {
      [self dismissViewControllerAnimated:NO completion:nil];
        return;
    }
    [self.navigationController popViewControllerAnimated:NO];
}
@end
