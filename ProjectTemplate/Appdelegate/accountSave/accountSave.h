//
//  accountSave.h
//  ProjectTemplate
//
//  Created by GM on 2019/1/18.
//  Copyright © 2019年 yuting. All rights reserved.
//

#import <Foundation/Foundation.h>
@class infoModel;
NS_ASSUME_NONNULL_BEGIN

@interface accountSave : NSObject
/**
 保存当前登录用户的信息，最多保存5个
 */
+(void)saveCurrentUserInfo:(NSDictionary *)model;

/**
 获取保存账号列表
 
 @return 账号列表
 */
+(NSArray* )getUserLoginInfoList;



/**
 删除列表中的数据
 
 @param index 需要删除账户的位置
 @return 返回值YES 代表 证明本地还有账户  返回值NO  代表 证明本地已经没有账户了
 */
+ (BOOL) userNameDeleteToPlist:(NSInteger ) index;

/**
 设置下次是否自动登录
 
 @param isFast YES自动登录，NO不自动登录
 */
+(void)setFastLogin:(BOOL)isFast;

/**
 判断是否自动登录
 
 @return YES自动登录，NO不自动登录
 */
+(BOOL)getFastLogin;


+(void)saveCurrentUserInfoFaceBook:(NSDictionary *)dic;

+(void)saveCurrentUserInfoFastlogin:(NSDictionary *)dic;

+(void)saveCurrentUserInfoLine:(NSDictionary *)dic;


+(void)saveCurrentUserInfoGoogle:(NSDictionary *)dic;


+ (void)delectCurrentUserInfoFaceBook;


+ (void)delectCurrentUserInfoFastlogin;


+ (void)delectCurrentUserInfoGoogle;

+ (void)delectCurrentUserInfoLine;
@end

NS_ASSUME_NONNULL_END
