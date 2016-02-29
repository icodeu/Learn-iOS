//
//  Philosopher.m
//  DelegatePattern
//
//  Created by wanghuan on 16/2/29.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import "Philosopher.h"

@implementation Philosopher

- (void)start {
    count = 0;
    timer = [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(handle) userInfo:nil repeats:YES];
}

- (void)handle {
    switch (count) {
        case 0:
            [self.delegate sleep];
            count++;
            break;
        case 1:
            [self.delegate eat];
            count++;
            break;
        case 2:
            [self.delegate work];
            count++;
            [timer invalidate];
            break;
    }
}



@end
