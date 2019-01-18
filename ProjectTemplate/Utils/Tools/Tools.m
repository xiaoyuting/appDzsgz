//
//  Tools.m
//  ProjectTemplate
//
//  Created by GM on 2019/1/17.
//  Copyright © 2019年 yuting. All rights reserved.
//

#import "Tools.h"
#import "wfnjiSSKeychain.h"
@implementation Tools
+(NSString*)getDeviceId
{
    NSString * currentDeviceUUIDStr = [wfnjiSSKeychain passwordForService:@"com.liqiu"account:@"uuid"];
    if (currentDeviceUUIDStr == nil || [currentDeviceUUIDStr isEqualToString:@""])
    {
        NSUUID * currentDeviceUUID  = [UIDevice currentDevice].identifierForVendor;
        currentDeviceUUIDStr = currentDeviceUUID.UUIDString;
        currentDeviceUUIDStr = [currentDeviceUUIDStr stringByReplacingOccurrencesOfString:@"-" withString:@""];
        currentDeviceUUIDStr = [currentDeviceUUIDStr lowercaseString];
        [wfnjiSSKeychain setPassword: currentDeviceUUIDStr forService:@"com.dzsgz"account:@"uuid"];
    }
    
    
    return currentDeviceUUIDStr;
}


+(NSString*)getSDCardPath
{
    NSArray* paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString* cachesDir = [paths objectAtIndex:0];
    return cachesDir;
}
@end
