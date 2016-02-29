//
//  Singleton.h
//  Singleton
//
//  Created by wanghuan on 16/2/29.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

+ (Singleton *)sharedManager;
@property (nonatomic, strong) NSString *singletonData;

@end
