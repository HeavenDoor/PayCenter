//
//  AppDelegate.m
//  PayCenterDemo
//
//  Created by shenghai on 2017/9/14.
//  Copyright © 2017年 shenghai. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (nonatomic, strong) id<PayCenterInterfaceProtocol, PayCenterCallBackProtocol, PayCenterInterfaceProtocol> payCenter;

@end

@implementation AppDelegate

- (id<PayCenterInterfaceProtocol, PayCenterCallBackProtocol, PayCenterInterfaceProtocol>)payCenter {
    if (_payCenter == nil) {
        _payCenter = [[PayCenter alloc] init];
    }
    return _payCenter;
}
+ (AppDelegate*)sharedInstance {
    return (AppDelegate*)[UIApplication sharedApplication].delegate;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    [self.payCenter restoreSceneOfWeChatPay];
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary*)options {
    if ([url.host isEqualToString:@"safepay"]) {

        //        [[AlipaySDK defaultService] processOrderWithPaymentResult:url standbyCallback:^(NSDictionary *resultDic) {
        //            [weakSelf.payCenter aliPayCallBack:resultDic];
        //        }];
        //        return YES;
        //    } else if ([url.relativeString rangeOfString:@"//pay/"].location != NSNotFound) {
        //        return [WXApi handleOpenURL:url delegate:self];
    }
    return YES;
}

#pragma mark - 微信支付回调
//-(void)onResp:(BaseResp *)resp {
//    if ([resp isKindOfClass:[PayResp class]]) {
//        PayResp *response = (PayResp *)resp;
//        switch (response.errCode) {
//            case WXSuccess: {
//                [_payCenter WeChatPayCallBackSuccess];
//                break;
//            }
//            default: {
//                [_payCenter callWeChatPayCallBackFaile:response.errStr];
//                break;
//            }
//        }
//    }
//}


@end
