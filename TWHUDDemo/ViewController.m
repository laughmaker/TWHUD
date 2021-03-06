//
//  ViewController.m
//  XTHUD
//
//  Created by 何振东 on 15/9/7.
//  Copyright © 2015年 LZA. All rights reserved.
//

#import "ViewController.h"
#import "TWHUD.h"

@interface ViewController ()
- (IBAction)showText:(id)sender;
- (IBAction)showProgress:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)showText:(id)sender {
    [TWHUD showText:@"这里是显示弹出提示，会自动消息的" atView:self.view];
}

- (IBAction)showProgress:(id)sender {
    TWHUD *progressHUD = [TWHUD hud];
    [progressHUD showHudAtView:self.view withText:@"请稍等..."];

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [progressHUD hideHud];
    });
}

@end
