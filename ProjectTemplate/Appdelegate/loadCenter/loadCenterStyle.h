//
//  loadCenterStyle.h
//  ProjectTemplate
//
//  Created by GM on 2019/1/17.
//  Copyright © 2019年 yuting. All rights reserved.
//

#import <Foundation/Foundation.h>
#define  loadStyle  [loadCenterStyle shearInit]
@class  infoModel;
NS_ASSUME_NONNULL_BEGIN

@interface loadCenterStyle : NSObject
- (void)choseLoadAccountStyle;
+ (loadCenterStyle *)shearInit;
- (void)translateLoadSuccessInfo:(NSDictionary  *)info;
@end

NS_ASSUME_NONNULL_END
