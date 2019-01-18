//
//  guestRequest.h
//  ProjectTemplate
//
//  Created by GM on 2019/1/17.
//  Copyright © 2019年 yuting. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface guestRequest : NSObject
+ (void)guestRequestSuccess:(void(^)(NSDictionary * info))success
                   failure :(void(^)(NSError *error))failure;
@end

NS_ASSUME_NONNULL_END
