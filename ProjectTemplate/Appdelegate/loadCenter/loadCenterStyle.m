//
//  loadCenterStyle.m
//  ProjectTemplate
//
//  Created by GM on 2019/1/17.
//  Copyright © 2019年 yuting. All rights reserved.
//

#import "loadCenterStyle.h"
#import "accountSave.h"
#import "tokenRequest.h"
#import "infoModel.h"
#import "loadPageView.h"
#import "gameInfoRequest.h"
@implementation loadCenterStyle

+ (loadCenterStyle *)shearInit{
    static loadCenterStyle * style = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        style = [[self alloc]init];
    });
    return style;
}
- (void)choseLoadAccountStyle{
    if([accountSave getUserLoginInfoList].count>0&&[accountSave getFastLogin]){
        [self tokenLoad];
    }else {
        [loadPage showLoadViewPage];
    }
}
- (void)tokenLoad{
    NSDictionary * dic= [accountSave getUserLoginInfoList].firstObject;
    infoModel * model  = [infoModel modelWithJSON:dic];
    [tokenRequest tokenRequestToken: model.token
                            Success:^(NSDictionary * _Nonnull info) {
        
    }
                            failure:^(NSError * _Nonnull error) {
                                [loadPage showLoadViewPage];
    }];
}
- (void)translateLoadSuccessInfo:(NSDictionary *)info{
    [accountSave setFastLogin:YES];
    [accountSave saveCurrentUserInfo:info];
}

@end
