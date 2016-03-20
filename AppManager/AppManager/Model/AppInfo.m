//
//  AppInfo.m
//  AppManager
//
//  Created by wanghuan on 16/3/20.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import "AppInfo.h"

@implementation AppInfo
{
    UIImage *_image;
}

- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)appInfoWithDict:(NSDictionary *)dict {
    return [[self alloc] initWithDict:dict];
}

- (UIImage *)image {
    if (!_image) {
        _image = [UIImage imageNamed:self.icon];
    }
    return _image;
}

@end
