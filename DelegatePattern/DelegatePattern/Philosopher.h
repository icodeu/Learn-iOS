//
//  Philosopher.h
//  DelegatePattern
//
//  Created by wanghuan on 16/2/29.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhilosopherDelegate.h"

@interface Philosopher : NSObject {
    NSTimer *timer;
    int count;
}

@property(nonatomic, strong) id<PhilosopherDelegate> delegate;

- (void)start;
- (void)handle;


@end
