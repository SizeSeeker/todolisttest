//
//  XYZAddToDoItemViewController.m
//  ToDoList
//
//  Created by FitValet on 9/16/14.
//  Copyright (c) 2014 FitValet. All rights reserved.
//

#import "XYZAddToDoItemViewController.h"
#import "XYZToDoListTableViewController.h"

@interface XYZAddToDoItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *cancelButton;

@end

@implementation XYZAddToDoItemViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if (sender == self.doneButton) {
        if (self.textField.text.length > 0) {
            self.toDoItem = [[XYZToDoItem alloc] init];
            self.toDoItem.itemName = self.textField.text;
            self.toDoItem.completed = NO;
            self.toDoItem.display = YES;
        }
    } else if (sender == self.cancelButton) {
        if (self.textField.text.length > 0) {
            self.nonInputString = self.textField.text;
        }
    } else {
        return;
    }
}


- (void)viewWillAppear:(BOOL)animated
{
    
    [super viewWillAppear:animated];
    self.textField.text = (self.nonInputString) ? self.nonInputString : @"";

}

- (void)loadInitialData {
    self.nonInputString = [[NSString alloc] init];
//    self.nonInputString = @"testtest";
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadInitialData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
