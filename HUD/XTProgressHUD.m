//
//  XTProgressHUD.m
//  XiaoTu
//
//  Created by 何振东 on 15/7/7.
//  Copyright © 2015年 LZA. All rights reserved.
//

// block self
#define XTWeakSelf  __weak typeof (self)weakSelf = self;
#define XTStrongSelf typeof(weakSelf) __strong strongSelf = weakSelf;

#import "XTProgressHUD.h"

@interface XTProgressHUD ()
@property (strong, nonatomic) UIToolbar *contentView;
@property (strong, nonatomic) UILabel *textLbl;
@property (strong, nonatomic) UIActivityIndicatorView *indicatorView;

@end


@implementation XTProgressHUD

+ (instancetype)progressHUD
{
    return [[XTProgressHUD alloc] initWithFrame:[UIScreen mainScreen].bounds];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:(CGRect)frame]) {
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.15];
        
        self.contentView = [[UIToolbar alloc] init];
        self.contentView.layer.cornerRadius = 8;
        self.contentView.clipsToBounds = YES;
        [self addSubview:self.contentView];
        
        self.indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
        self.indicatorView.color = [UIColor darkGrayColor];
        [self.indicatorView startAnimating];
        [self.contentView addSubview:self.indicatorView];
        
        self.textLbl = [[UILabel alloc] init];
        self.textLbl.font = [UIFont systemFontOfSize:14];
        self.textLbl.textAlignment = NSTextAlignmentCenter;
        self.textLbl.textColor = [UIColor darkGrayColor];
        self.textLbl.text = @"加载中...";
        [self.textLbl sizeToFit];
        [self.contentView addSubview:self.textLbl];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.contentView.bounds = CGRectMake(0, 0, 90, 90);
    self.contentView.center = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2-20);
    self.indicatorView.center = CGPointMake(self.contentView.bounds.size.width/2, self.contentView.bounds.size.height/2 - 15);
    self.textLbl.center = CGPointMake(self.contentView.bounds.size.width/2, self.contentView.bounds.size.height/2 + 17);
}

- (void)showHudAtView:(UIView *)aView
{
    [aView addSubview:self];
}

- (void)showHudAtView:(UIView *)aView withText:(NSString *)text
{
    self.textLbl.text = text;
    [aView addSubview:self];
}

- (void)hideHud
{
    XTWeakSelf;
    [UIView animateWithDuration:0.45 animations:^{
        weakSelf.alpha = 0.0;
    } completion:^(BOOL finished) {
        [weakSelf removeFromSuperview];
    }];
}


+ (void)showText:(NSString *)text atView:(UIView *)aView
{
    UILabel *lbl = [[UILabel alloc] init];
    lbl.text = text;
    lbl.textAlignment = NSTextAlignmentCenter;
    lbl.font = [UIFont systemFontOfSize:14.5];
    lbl.backgroundColor = [UIColor colorWithWhite:0.869 alpha:1.000];
    lbl.shadowColor = [UIColor colorWithWhite:0.823 alpha:0.427];
    [lbl sizeToFit];
    lbl.layer.cornerRadius = 8;
    lbl.clipsToBounds = YES;
    [aView addSubview:lbl];
    
    lbl.center = CGPointMake(aView.center.x, aView.bounds.size.height);
    lbl.bounds = CGRectMake(0, 0, lbl.bounds.size.width + 18, lbl.bounds.size.height + 12);

    [UIView animateWithDuration:1.15 delay:0 usingSpringWithDamping:0.3 initialSpringVelocity:0.2 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        lbl.center = CGPointMake(aView.center.x, aView.bounds.size.height - 40);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.75 delay:0.75 usingSpringWithDamping:1 initialSpringVelocity:1 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            lbl.center = CGPointMake(aView.center.x, aView.bounds.size.height + 30);
        } completion:^(BOOL finished) {
            [lbl removeFromSuperview];
        }];
    }];
}



@end
