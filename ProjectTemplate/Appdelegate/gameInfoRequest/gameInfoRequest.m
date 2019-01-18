//
//  gameInfoRequest.m
//  ProjectTemplate
//
//  Created by GM on 2019/1/17.
//  Copyright © 2019年 yuting. All rights reserved.
//

#import "gameInfoRequest.h"

@implementation gameInfoRequest
+(void)gameInfoRequestToken:(NSString *)token
                    Success:(void(^)(NSDictionary * info))success
                    failure:(void(^)(NSError * error))failure{
    
    NSMutableDictionary * dic = [NSMutableDictionary dictionary];
    [dic setValue:game_Re forKey:action_Re];
    [dic setValue:token forKey:token_Re];
    [dic setValue:InfoManagerShear.gameID forKey:game_id_Re];
    [dic setValue:InfoManagerShear.promotID forKey:promote_id_Re];
    DataEntity    * entity = [DataEntity new];
    entity.urlString =URL_Re;
    entity.needCache =NO;
    entity.parameters =[dic copy];
    [NetManager _request_POSTWithEntity:entity
                               successBlock:^(id response) {
        success(response);
    }
                               failureBlock:^(NSError *error) {
        failure(error);
    }
                              progressBlock:^(int64_t bytesProgress, int64_t totalBytesProgress) {
        
    }];
}
@end
