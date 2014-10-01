//
//  XYZAddToDoItemViewController.h
//  ToDoList
//
//  Created by FitValet on 9/16/14.
//  Copyright (c) 2014 FitValet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYZToDoItem.h"

@interface XYZAddToDoItemViewController : UIViewController

@property XYZToDoItem *toDoItem;
@property NSMutableArray *nonInputtedItem;
@property NSString *nonInputString;

@end
