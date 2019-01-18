//
//  guestRequest.m
//  ProjectTemplate
//
//  Created by GM on 2019/1/17.
//  Copyright © 2019年 yuting. All rights reserved.
//

#import "guestRequest.h"
#import <AdSupport/ASIdentifierManager.h>
@implementation guestRequest
+ (void)guestRequestSuccess:(void(^)(NSDictionary * info))success
                   failure :(void(^)(NSError *error))failure{
    NSMutableDictionary * parameters = [NSMutableDictionary dictionary];
    [parameters setValue:guest_Re forKey:action_Re];
    [parameters setValue:[OpenUDID value] forKey:idfv_Re];
    [parameters setValue:InfoManagerShear.gameID forKey:game_id_Re];
    [parameters setValue:InfoManagerShear.promotID forKey:promote_id_Re];
    [parameters setValue:[[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString] forKey:idfa_Re];
    DataEntity *entity = [DataEntity new];
    entity.urlString=URL_Re;
    entity.needCache =NO;
    entity.parameters =[parameters copy];
    
    
    [NetManager   _request_POSTWithEntity:entity successBlock:^(id response) {
         success(response);
    } failureBlock:^(NSError *error) {
         failure(error);
    } progressBlock:^(int64_t bytesProgress, int64_t totalBytesProgress) {
         
    }];
//    [RequestManager requestWithType:HttpRequestTypePost
//                          urlString:URL_Re
//                         parameters:[dic copy]
//                       successBlock:^(id response) {
//                           success(response);
//                          } failureBlock:^(NSError *error) {
//                              failure(error);
//                          } progress:^(int64_t bytesProgress, int64_t totalBytesProgress) {
//
//                          }];
}
@end
