//
//  XTProgressHUD.h
//  XiaoTu
//
//  Created by 何振东 on 15/7/7.
//  Copyright © 2015年 LZA. All rights reserved.
//

/**
 *  网络加载HUD
 */

#import <UIKit/UIKit.h>

@interface XTProgressHUD : UIView

+ (instancetype)progressHUD;

/**
 *  显示HUD
 */
- (void)showHudAtView:(UIView *)aView;

/**
 *  显示Hud
 *
 *  @param aView 显示的父视图
 *  @param text  显示的文字内容
 */
- (void)showHudAtView:(UIView *)aView withText:(NSString *)text;


/**
 *  隐藏HUD
 */
- (void)hideHud;

+ (void)showText:(NSString *)text atView:(UIView *)aView;


@end
