//
//  centerInfo.h
//  ProjectTemplate
//
//  Created by GM on 2019/1/17.
//  Copyright © 2019年 yuting. All rights reserved.
//

#import <Foundation/Foundation.h>
#define InfoManagerShear  [centerInfo shearInfo]

NS_ASSUME_NONNULL_BEGIN

@interface centerInfo : NSObject
@property  (nonatomic ,copy) NSString * gameID;
@property  (nonatomic ,copy) NSString * promotID;
+ (centerInfo * )shearInfo;
@end

NS_ASSUME_NONNULL_END
