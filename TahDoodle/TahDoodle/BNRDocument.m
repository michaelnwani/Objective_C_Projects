//
//  BNRDocument.m
//  TahDoodle
//
//  Created by Michael Nwani on 9/2/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRDocument.h"

@implementation BNRDocument

#pragma mark - NSDocument Overrides

- (id)init
{
    self = [super init];
    if (self) {
        // Add your subclass-specific initialization here.
    }
    return self;
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"BNRDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

- (NSData *)dataOfType:(NSString *)typeName
                 error:(NSError **)outError
{
    //This method is called when our document is being saved.
    //You are expected to hand the caller an NSData object wrapping our data
    //so that it can be written to disk
    //If there is no array, write out an empty array
    if (!self.tasks)
    {
        self.tasks = [NSMutableArray array];
    }
    
    //Pack the tasks array into an NSData object
    NSData *data = [NSPropertyListSerialization
                    dataWithPropertyList:self.tasks
                    format:NSPropertyListXMLFormat_v1_0 options:0
                    error:outError];
    
    //Return the newly-packed NSData object
    return data;
}

- (BOOL)readFromData:(NSData *)data
              ofType:(NSString *)typeName
               error:(NSError **)outError
{
    //This method is called when a document is being loaded
    //You are handed an NSData object and expected to pull our data out of it
    //Extract the tasks
    self.tasks = [NSPropertyListSerialization propertyListWithData:data
                                                           options:NSPropertyListMutableContainers
                                                            format:NULL
                                                             error:outError];
                                                //we're having outError point to the returned NSError pointer object. That's how exceptions get handled. It will act on what was returned. So outError is a pointer to a pointer. (the **'s)
    //return success or failure depending on success of the above call
    return (self.tasks != nil);
}

#pragma mark - Actions
-(void)addTask:(id)sender
{
//    NSLog(@"Add Task button clicked!");
    
    //If there is no array yet, create one
    if (!self.tasks)
    {
        self.tasks = [NSMutableArray array];
    }
    
    [self.tasks addObject:@"New Item"];
    
    // -reloadData tells the table view to refresh and ask its dataSource (which happens to be this BNRDocument object in this case) for new data to display
    [self.taskTable reloadData];
    
    // -updateChangeCount: tells the application whether or not the document has unsaved changes, NSChangeDone flags the document as unsaved
    [self updateChangeCount:NSChangeDone];
}


#pragma mark - Data Source Methods

-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    //This table view displays the tasks array,
    //so the number of entries in the table view will be the same
    //as the number of objects in the array
    return [self.tasks count];
}

-(id)tableView:(NSTableView *)tableView
objectValueForTableColumn:(NSTableColumn *)tableColumn
           row:(NSInteger)row
{
    //Return the item from tasks that corresponds to the cell
    //that the table view wants to display
    return [self.tasks objectAtIndex:row]; //only 1 column; the object for the row then, will be the object in the tasks array at that row. They go up sequentially.
}

//An updater method...
-(void)tableView:(NSTableView *)tableView
  setObjectValue:(id)object
  forTableColumn:(NSTableColumn *)tableColumn
             row:(NSInteger)row
{
    //When the user changes a task on the table view,
    // update the tasks array
    [self.tasks replaceObjectAtIndex:row withObject:object];
    
    //Since the values for the taskTable come from this here tasks array.. we're going to change(update) the value(object) at the specified row in the task table that has activated this event, with the new version. Automatically. Magic.
    
    //And then flag the document as having unsaved changes.
    [self updateChangeCount:NSChangeDone];
}

@end
