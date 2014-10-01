//
//  XYZToDoItem.h
//  ToDoList
//
//  Created by FitValet on 9/16/14.
//  Copyright (c) 2014 FitValet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property BOOL display;
@property (readonly) NSDate *creationDate;

@end
