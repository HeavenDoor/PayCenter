//
//  AppDelegate.h
//  PayCenterDemo
//
//  Created by shenghai on 2017/9/14.
//  Copyright © 2017年 shenghai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PayCenter.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

+ (AppDelegate*) sharedInstance;

- (id<PayCenterInterfaceProtocol, PayCenterCallBackProtocol, PayCenterInterfaceProtocol>)payCenter;

@end

