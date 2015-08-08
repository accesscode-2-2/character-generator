//
//  CohortTableViewController.m
//  CharacterGenerator
//
//  Created by Chris David on 8/7/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CohortTableViewController.h"
#import "CohortDetailViewController.h"
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
    
    NSString *imageName = [self.manager.C4QStudentArray[indexPath.row] imageName];
    //NSLog(@"image url: %@", imageName);
    
    // Load image only if the user put in a url
    if (![imageName isEqualToString:@"horse"]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            NSURL *studentImageLink = [NSURL URLWithString:imageName];
            NSData *imageData = [NSData dataWithContentsOfURL:studentImageLink];
            cell.imageView.image = [UIImage imageWithData:imageData];
            [self.tableView reloadData];
        });
    } else {
        cell.imageView.image = [UIImage imageNamed:imageName];
    }
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // get the indexPath for the tapped cell
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    NSLog(@"indexPath: %@", indexPath);
    CohortDetailViewController *cd = [segue destinationViewController];
    NSLog(@"indexPath.row %lu", indexPath.row);
    cd.studentIndex = indexPath.row;
}

@end
