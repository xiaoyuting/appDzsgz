//
//  accountSave.m
//  ProjectTemplate
//
//  Created by GM on 2019/1/18.
//  Copyright © 2019年 yuting. All rights reserved.
//

#import "accountSave.h"
#import "infoModel.h"
@implementation accountSave
/**
 保存当前登录用户的信息，最多保存5个
 */
+(void)saveCurrentUserInfo:(NSDictionary *)model
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *signArray = [[NSMutableArray alloc]init];
    
    
    if ([userDefaults objectForKey:@"userinfos"]) {
        //NSArray *uArray = [userDefaults objectForKey:@"userinfos"];
        //[signArray addObjectsFromArray:uArray];
       
        //[signArray removeObjectAtIndex:1];
        [signArray insertObject:model atIndex:0];
        NSArray *sArray = [NSArray arrayWithArray:signArray];
        [userDefaults setObject:sArray forKey:@"userinfos"];
        [userDefaults synchronize];
        //判断新加入的账号 是不是在之前就已经有保存过了 如果有保存过了 就把他更新一下  放到数组的最前面
        // 判断  是否之前登陆过
//        NSInteger userIndex = signArray.count;
//        for (NSInteger i = 0; i<signArray.count; i++) {
//            infoModel  *m = signArray[i];
//            if ([m.uid isEqualToString:model.uid]) {
//
//                userIndex = i;
//                break;
//            }
//        }
//        if (userIndex != signArray.count) {
//            //等于 就是不在  不等于 就是之前有登录过
//            DLog(@"账户之前登录过,直接快速登录");
//            [signArray removeObjectAtIndex:userIndex];
//            [signArray insertObject:model atIndex:0];
//            NSArray *sArray = [NSArray arrayWithArray:signArray];
//            [userDefaults setObject:sArray forKey:@"userinfos"];
//            [userDefaults synchronize];
//        }else {
//            DLog(@"该账户不存在.需要存储");
//            //这个判断是判断存储了几条账户信息 如果账户信息是小于5条的 就代表还可以继续存储 如果大于 就要替换最后一条
//            if (signArray.count < 1) {
//                [signArray insertObject:model atIndex:0];
//                NSArray *sArray = [NSArray arrayWithArray:signArray];
//                [userDefaults setObject:sArray forKey:@"userinfos"];
//                [userDefaults synchronize];
//                return;
//            }else {
//                // 这边是 需要保存的数组 大于5条了 就需要将其中的最后一条 替换掉  并且还要把这最后一条放到最前面
//                //                [signArray replaceObjectAtIndex:4 withObject:signDic];
//                //                [signArray exchangeObjectAtIndex:4 withObjectAtIndex:0];
//                [signArray removeObjectAtIndex:1];
//                [signArray insertObject:model atIndex:0];
//                NSArray *sArray = [NSArray arrayWithArray:signArray];
//                [userDefaults setObject:sArray forKey:@"userinfos"];
//                [userDefaults synchronize];
//            }
//        }
    }
    else{
        //这里是没有保存过 第一个账号  这样的话 就只需要把其放到数组最前面保存就行了
        
        [signArray addObject:model];
        NSArray *sArray = [NSArray arrayWithArray:signArray];
        [userDefaults setObject:sArray forKey:@"userinfos"];
        [userDefaults synchronize];
    }
}

+(void)saveCurrentUserInfoLine:(NSDictionary *)dic
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    //这里是没有保存过 第一个账号  这样的话 就只需要把其放到数组最前面保存就行了
    
    [userDefaults setObject:dic forKey:@"userinfoline"];
    [userDefaults synchronize];
}

+(void)saveCurrentUserInfoGoogle:(NSDictionary *)dic
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    //这里是没有保存过 第一个账号  这样的话 就只需要把其放到数组最前面保存就行了
    
    [userDefaults setObject:dic forKey:@"userinfogoogle"];
    [userDefaults synchronize];
}
+(void)saveCurrentUserInfoFaceBook:(NSDictionary *)dic
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    //这里是没有保存过 第一个账号  这样的话 就只需要把其放到数组最前面保存就行了
    
    [userDefaults setObject:dic forKey:@"userinfofacebook"];
    [userDefaults synchronize];
}
+(void)saveCurrentUserInfoFastlogin:(NSDictionary *)dic
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    //这里是没有保存过 第一个账号  这样的话 就只需要把其放到数组最前面保存就行了
    
    [userDefaults setObject:dic forKey:@"userinfofastlogin"];
    [userDefaults synchronize];
}

+ (void)delectCurrentUserInfoGoogle{
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    //这里是没有保存过 第一个账号  这样的话 就只需要把其放到数组最前面保存就行了
    
    [userDefaults setObject:nil forKey:@"userinfogoogle"];
    [userDefaults synchronize];
    
    
}
+ (void)delectCurrentUserInfoLine{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    //这里是没有保存过 第一个账号  这样的话 就只需要把其放到数组最前面保存就行了
    
    [userDefaults setObject:nil forKey:@"userinfofastline"];
    [userDefaults synchronize];
}

+ (void)delectCurrentUserInfoFaceBook{
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    //这里是没有保存过 第一个账号  这样的话 就只需要把其放到数组最前面保存就行了
    
    [userDefaults setObject:nil forKey:@"userinfofacebook"];
    [userDefaults synchronize];
    
    
}
+ (void)delectCurrentUserInfoFastlogin{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    //这里是没有保存过 第一个账号  这样的话 就只需要把其放到数组最前面保存就行了
    
    [userDefaults setObject:nil forKey:@"userinfofastlogin"];
    [userDefaults synchronize];
}
/**
 获取保存账号列表
 
 @return 账号列表
 */
+(NSArray* )getUserLoginInfoList
{
    NSMutableArray* array = [NSMutableArray array];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if ([userDefaults objectForKey:@"userinfos"]) {
        NSArray *uArray = [userDefaults objectForKey:@"userinfos"];
        for (int i=0; i<[uArray count]; i++) {
            infoModel* model = uArray[i];
            [array addObject:model];
        }
        return array;
    }else {
        //没有数据
        return nil;
    }
}


/**
 删除列表中的数据
 
 @param index 需要删除账户的位置
 @return 返回值YES 代表 证明本地还有账户  返回值NO  代表 证明本地已经没有账户了
 */
+ (BOOL) userNameDeleteToPlist:(NSInteger ) index {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *signArray = [[NSMutableArray alloc]init];
    if ([userDefaults objectForKey:@"userinfos"]) {
        NSArray *uArray = [userDefaults objectForKey:@"userinfos"];
        [signArray addObjectsFromArray:uArray];
        [signArray removeObjectAtIndex:index];
        if (signArray.count == 0) {
            NSArray *sArray = [NSArray arrayWithArray:signArray];
            [userDefaults setObject:sArray forKey:@"userinfos"];
            [userDefaults synchronize];
            return NO;
        }else {
            NSArray *sArray = [NSArray arrayWithArray:signArray];
            [userDefaults setObject:sArray forKey:@"userinfos"];
            [userDefaults synchronize];
            return YES;
        }
    }else {
        NSArray *sArray = [NSArray arrayWithArray:signArray];
        [userDefaults setObject:sArray forKey:@"userinfos"];
        [userDefaults synchronize];
        return NO;
    }
    
}

/**
 设置下次是否自动登录
 
 @param isFast YES自动登录，NO不自动登录
 */
+(void)setFastLogin:(BOOL)isFast
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if (isFast == NO) {
        [userDefaults removeObjectForKey:@"isFast"];
        
    }
    else
    {
        [userDefaults setBool:isFast forKey:@"isFast"];
    }
    [userDefaults synchronize];
}

/**
 判断是否自动登录
 
 @return YES自动登录，NO不自动登录
 */
+(BOOL)getFastLogin
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    BOOL isFast =[[userDefaults objectForKey:@"isFast"] boolValue];
    return isFast;
}

@end
