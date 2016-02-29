//
//  Singleton.m
//  Singleton
//
//  Created by wanghuan on 16/2/29.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

static Singleton *sharedManager = nil;

+ (Singleton *)sharedManager {
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedManager = [[self alloc] init];
    });
    return sharedManager;
}

@end
