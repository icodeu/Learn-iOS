//
//  NoteDAO.h
//  MyNotes
//
//  Created by wanghuan on 16/2/29.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Note.h"

@interface NoteDAO : NSObject

@property(nonatomic, strong) NSMutableArray *listData;

+(NoteDAO *) sharedManager;

-(int) create:(Note *)model;

-(int) remove:(Note *)model;

-(int) modify:(Note *)model;

-(NSMutableArray *) findAll;

-(Note *) findById:(Note *)model;

@end
