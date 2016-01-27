//
//  ZKPopStateViewHUD.m
//  ZKPopSateView
//
//  Created by 张坤 on 16/1/26.
//  Copyright © 2016年 张坤. All rights reserved.
//

#import "ZKPopStateViewHUD.h"

static UIWindow *window_;
static NSTimer *time_;
@implementation ZKPopStateViewHUD
+ (void)showSuccessWithMessage:(NSString *)message{
    [self showMessage:message withIMage:[UIImage imageNamed:@"ZKPopStateImages.bundle/zk_hud_success"]];
}
+ (void)showErrorWithMessage:(NSString *)message{
    [self showMessage:message withIMage:[UIImage imageNamed:@"ZKPopStateImages.bundle/zk_hud_error"]];
}
+ (void)showLoadWithMessage:(NSString *)message{
    
    [time_ invalidate];
    time_ = nil;
    
    [self setupWindow];
    
    UILabel *label = [[UILabel alloc]init];
    label.font = [UIFont systemFontOfSize:12.0f];
    label.frame = window_.bounds;
    label.text = message;
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    
    UIActivityIndicatorView *loadView = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    [loadView startAnimating];
    loadView.center = CGPointMake(230, 10);
    [window_ addSubview:label];
    [window_ addSubview:loadView];
}
+ (void)hideHud{
    window_ = nil;
    [time_ invalidate];
    time_ = nil;
}
+ (void)showMessage:(NSString *)message{
    [self showMessage:message withIMage:nil];
}
+ (void)showMessage:(NSString *)message withIMage:(UIImage *)image{
    
    [time_ invalidate];
    
    [self setupWindow];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:message forState:UIControlStateNormal];
    if (image) {
        [button setImage:[UIImage imageNamed:@"ZKPopStateImages.bundle/zk_hud_success"] forState:UIControlStateNormal];
        button.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    }
    button.titleLabel.font = [UIFont systemFontOfSize:12.0f];
    
    button.frame = window_.bounds;
    [window_ addSubview:button];
    
    time_ = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(hideHud) userInfo:nil repeats:NO];
    
}
+ (void)setupWindow{
    window_.hidden = YES;
    window_ = [[UIWindow alloc]init];
    window_.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 20);
    window_.windowLevel = UIWindowLevelAlert;
    window_.backgroundColor = [UIColor blackColor];
    window_.hidden = NO;
}
@end
