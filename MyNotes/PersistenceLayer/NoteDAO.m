//
//  NoteDAO.m
//  MyNotes
//
//  Created by wanghuan on 16/2/29.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import "NoteDAO.h"
#import "Note.h"

@implementation NoteDAO

static NoteDAO *sharedManager;

+ (NoteDAO *)sharedManager {
    dispatch_once_t once;
    dispatch_once(&once, ^ {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        
        NSDate *date1 = [dateFormatter dateFromString:@"2010-11-02 12:12:12"];
        NSDate *date2 = [dateFormatter dateFromString:@"2012-01-12 13:13:13"];
        
        Note *note1 = [[Note alloc] init];
        note1.date = date1;
        note1.content = @"note1";
        
        Note *note2 = [[Note alloc] init];
        note2.date = date2;
        note2.content = @"note2";
        
        sharedManager = [[self alloc] init];
        sharedManager.listData  = [[NSMutableArray alloc] init];
        [sharedManager.listData addObject:note1];
        [sharedManager.listData addObject:note2];
    });
    return sharedManager;
}

- (int)create:(Note *)model {
    [self.listData addObject:model];
    return 0;
}

- (int)remove:(Note *)model {
    for (Note *note in self.listData) {
        if ([note.date isEqualToDate:model.date]) {
            [self.listData removeObject: note];
            break;
        }
    }
    return 0;
}

- (int)modify:(Note *)model {
    for (Note *note in self.listData) {
        if ([note.date isEqualToDate:model.date]) {
            note.content = model.content;
            break;
        }
    }
    return 0;
}

- (NSMutableArray *)findAll {
    return self.listData;
}

- (Note *)findById:(Note *)model {
    for (Note *note in self.listData) {
        if ([note.date isEqualToDate:model.date]){
            return note;
        }
    }
    return nil;
}

@end
