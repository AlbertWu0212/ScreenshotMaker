//
//  DeviceDefiner.m
//  ScreenshotMaker
//
//  Created by WuZhengBin on 15/9/1.
//  Copyright (c) 2015年 WuZhengBin. All rights reserved.
//

#import "DeviceDefiner.h"
@import UIKit;
@import LocalAuthentication;

@implementation DeviceDefiner

+ (NSString *)fetchMyDevice
{
    UIScreen *currentScreen = [UIScreen mainScreen];
    NSString *deviceString;
    
    if ([currentScreen scale] == 3.0) {
        deviceString = @"iPhone 6 Plus";
    } else {
        if ([currentScreen bounds].size.height == 667) {
            deviceString = @"iPhone 6";
        } else if ([currentScreen bounds].size.height == 568) {
            //有指纹就是iPhone 5s，不然是5c或者5
            if ([DeviceDefiner isTouchIDAvailable]) {
                deviceString = @"iPhone 5s";
            } else {
                deviceString = @"iPhone 5";
            }
        } else {
            deviceString = @"iPhone 4s";
        }
    }
    
    return deviceString;
}

+ (BOOL)isTouchIDAvailable
{
    LAContext *context = [[LAContext alloc] init];
    NSError *error = nil;
    
    if ([context canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics
                             error:&error]){
        //有指纹
        return YES;
    }
    return NO;
}
@end
