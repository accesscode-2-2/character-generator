//
//  CohortTableViewController.m
//  CharacterGenerator
//
//  Created by Chris David on 8/7/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CohortTableViewController.h"
#import "C4QStudentManager.h"


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
        cell.imageView.image = [UIImage imageNamed:studentName];
        
        return cell;
}


@end
