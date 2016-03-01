//
//  NoteBL.h
//  MyNotes
//
//  Created by wanghuan on 16/3/1.
//  Copyright © 2016年 icodeyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Note.h"
#import "NoteDAO.h"

@interface NoteBL : NSObject

-(NSMutableArray *) create:(Note *)model;

-(NSMutableArray *) remove:(Note *)model;

-(NSMutableArray *) findAll;

@end
