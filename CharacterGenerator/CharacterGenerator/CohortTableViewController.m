//
//  CohortTableViewController.m
//  CharacterGenerator
//
//  Created by Chris David on 8/7/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CohortTableViewController.h"
#import "C4QStudentManager.h"
#import "C4QStudent.h"

@interface CohortTableViewController ()
@property (nonatomic) C4QStudentManager *manager;
@end


@implementation CohortTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.manager = [C4QStudentManager sharedC4QStudentManager];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.manager.C4QStudentArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StudentCellIdentifier" forIndexPath:indexPath];
    
    NSString *studentName = [self.manager.C4QStudentArray[indexPath.row] name];
    cell.textLabel.text = studentName;
    
    if ([self.manager.C4QStudentArray[indexPath.row] imageName] != nil) {
        NSURL *imageURL = [NSURL URLWithString:[self.manager.C4QStudentArray[indexPath.row] imageName]];
        
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
            NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
            
            dispatch_async(dispatch_get_main_queue(), ^{
                // Update the UI
                cell.imageView.image = [UIImage imageWithData:imageData];
            });
        });
    }
        
    return cell;
}

@end
