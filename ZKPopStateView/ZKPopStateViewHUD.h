//
//  ZKPopStateViewHUD.h
//  ZKPopSateView
//
//  Created by 张坤 on 16/1/26.
//  Copyright © 2016年 张坤. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ZKPopStateViewHUD : NSObject
+ (void)showSuccessWithMessage:(NSString *)message;
+ (void)showErrorWithMessage:(NSString *)message;
+ (void)showLoadWithMessage:(NSString *)message;
+ (void)showMessage:(NSString *)message;
+ (void)showMessage:(NSString *)message withIMage:(UIImage *)image;
+ (void)hideHud;
@end
