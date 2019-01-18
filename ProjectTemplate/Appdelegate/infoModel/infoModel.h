//
//  infoModel.h
//  ProjectTemplate
//
//  Created by GM on 2019/1/18.
//  Copyright © 2019年 yuting. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface infoModel : NSObject
/**
 用户的 UID
 */
@property (nonatomic, copy)   NSString* uid;

/**
 用户的 Nickname
 */
@property (nonatomic, copy)   NSString* nickname;

/**
 用户的 sid
 */
@property (nonatomic, copy)   NSString* sid;

/**
 用户的 token
 */
@property (nonatomic, copy)   NSString* token;

/**
 用户的头像地址
 */
@property (nonatomic, copy)   NSString* face;//头像地址

/**
 用户的猫币数量
 */
@property (nonatomic, copy)   NSString* coins;

/**
 用户是否绑定手机
 */
@property (nonatomic,assign)  BOOL need_bind;

/**
 用户优惠券数量
 */
@property (nonatomic,assign)  int promote_coin;

/**
 用户积分
 */
@property (nonatomic,assign)  int user_point;

@property (nonatomic, strong) NSString* phone;

@property (nonatomic, assign) BOOL  user_new;

@property (nonatomic, copy)   NSString * selectType;
@end

NS_ASSUME_NONNULL_END
