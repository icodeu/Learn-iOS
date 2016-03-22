//
//  Model.m
//  CollectionViewDemo
//
//  Created by wanghuan on 16/3/20.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import "Model.h"
#import "ImageInfo.h"

@implementation Model

-(instancetype) init {
    self = [super init];
    if (self) {
        self.mArray = [NSMutableArray arrayWithCapacity:5];
        for (int i=0; i<100; i++) {
            ImageInfo *imageInfo = [[ImageInfo alloc] init];
            imageInfo.imgName = [NSString stringWithFormat:@"美图%d号", i];
            imageInfo.imgPath = [NSString stringWithFormat:@"1.jpg"];
            
            [self.mArray addObject:imageInfo];
        }
    }
    return self;
}

@end
