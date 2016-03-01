//
//  NoteBL.m
//  MyNotes
//
//  Created by wanghuan on 16/3/1.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import "NoteBL.h"

@implementation NoteBL

-(NSMutableArray *)create:(Note *)model {
    NoteDAO *dao = [NoteDAO sharedManager];
    [dao create:model];
    return [dao findAll];
}

-(NSMutableArray *)remove:(Note *)model {
    NoteDAO *dao = [NoteDAO sharedManager];
    [dao remove:model];
    return [dao findAll];
}

- (NSMutableArray *)findAll {
    NoteDAO *dao = [NoteDAO sharedManager];
    return [dao findAll];
}

@end
