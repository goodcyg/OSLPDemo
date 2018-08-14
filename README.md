# iOSLPDemo
横竖屏切换的例子

## AppDelegate 
```
- (UIInterfaceOrientationMask)application:(UIApplication *)application
  supportedInterfaceOrientationsForWindow:(UIWindow *)window
{
    return [YGRotation sharedInstance].orientationMask;
}

```

## 使用例子 
``` 
 
#pragma mark - 横屏
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
    [[YGRotation sharedInstance] rotationLandscape];
}   
#pragma mark - 竖屏
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [[YGRotation sharedInstance] rotationPortrait];
}


```