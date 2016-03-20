//
//  AppInfo.h
//  AppManager
//
//  Created by wanghuan on 16/3/20.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@interface AppInfo : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *icon;
@property (strong, nonatomic, readonly) UIImage *image;

- (instancetype) initWithDict:(NSDictionary *)dict;
+ (instancetype) appInfoWithDict:(NSDictionary *)dict;

@end
