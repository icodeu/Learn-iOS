//
//  PhilosopherDelegate.h
//  DelegatePattern
//
//  Created by wanghuan on 16/2/29.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PhilosopherDelegate

@required
-(void) eat;
-(void) sleep;
-(void) work;

@end
