//
//  BNRAppDelegate.h
//  iTahDoodle
//
//  Created by Michael Nwani on 9/1/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>

//Declare a helper function that you will use to get a path
//to the location on disk where you can save the to-do list
//Does not belong to the BNRAppDelegate class; could've been created in any other class
//We're calling our save file a document.
NSString *BNRDocPath(void);

@interface BNRAppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;

@property (nonatomic) NSMutableArray *tasks;

-(void)addTask:(id)sender;
@end
