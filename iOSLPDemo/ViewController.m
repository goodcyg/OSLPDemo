//
//  ViewController.m
//  iOSLPDemo
//
//  Created by Jackson on 2018/8/14.
//  Copyright © 2018年 Jackson. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"横竖屏切换荔枝";
    [self testButton];
 
}
#pragma mark -[self testButton]
-(void)testButton
{
    UIButton *Modalbtn=[UIButton new];
    Modalbtn.frame=CGRectMake(80, 120, 150, 60);
    Modalbtn.backgroundColor=[UIColor blueColor];
    [Modalbtn setTitle:@"Modal横屏" forState:UIControlStateNormal];
    [self.view addSubview:Modalbtn];
    
    [Modalbtn addTarget:self action:@selector(modalbuttonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *Pushbtn=[UIButton new];
    Pushbtn.frame=CGRectMake(80, 190, 150, 60);
    Pushbtn.backgroundColor=[UIColor blueColor];
    [Pushbtn setTitle:@"Push横屏" forState:UIControlStateNormal];
    [self.view addSubview:Pushbtn];
    
    [Pushbtn addTarget:self action:@selector(pushbuttonClick:) forControlEvents:UIControlEventTouchUpInside];
    
}

#pragma mark -
-(void)modalbuttonClick:(UIButton *)sender
{
    ViewController2 *vc2= [ViewController2 viewController2];
    vc2.type=YGTypeModal;
   [self presentViewController:vc2 animated: YES completion:nil];
}

-(void)pushbuttonClick:(UIButton *)sender
{
    ViewController2 *vc2= [ViewController2 viewController2];
    vc2.type=YGTypePush;
    [self.navigationController pushViewController:vc2 animated:NO];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
