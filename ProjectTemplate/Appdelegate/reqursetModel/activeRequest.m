//
//  activeRequest.m
//  ProjectTemplate
//
//  Created by GM on 2019/1/17.
//  Copyright © 2019年 yuting. All rights reserved.
//

#import "activeRequest.h"
#import "Tools.h"
#import <AdSupport/AdSupport.h>
#import "OpenUDID.h"
#import "centerInfo.h"
@implementation activeRequest
+ (void)activeRequestEvent{
    NSMutableDictionary  *dic =[[NSMutableDictionary alloc] init];
    [dic setValue:@"system.active" forKey:action_Re];
    [dic setObject:InfoManagerShear.gameID  forKey:game_id_Re];
    [dic setValue:[OpenUDID value] forKey:idfv_Re];
 
    [dic setValue:[ASIdentifierManager sharedManager].advertisingIdentifier.UUIDString forKey:idfa_Re];
     [dic setValue:[NSString stringWithFormat:@"%f",[[NSDate date] timeIntervalSince1970]] forKey:ts_Re];
    DataEntity    * entity = [DataEntity new];
    entity.urlString =URL_Re;
    entity.needCache =NO;
    entity.parameters =[dic copy];
    [NetManager _request_POSTWithEntity:entity
                               successBlock:^(id response) {
        
    }
                               failureBlock:^(NSError *error) {
       
    }
                              progressBlock:^(int64_t bytesProgress, int64_t totalBytesProgress) {
        
    }];
}
@end
