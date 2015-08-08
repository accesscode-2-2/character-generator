//
//  BenderTableViewController.m
//  CharacterGenerator
//
//  Created by Christian Maldonado on 8/4/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "BenderTableViewController.h"
#import "BenderManager.h"
#import "BenderDetailViewController.h"
#import "Bender.h"

@interface BenderTableViewController ()

@end

@implementation BenderTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Welcome"
                                                    message:@"Click the '+' button to begin!"
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
   
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [[BenderManager sharedManager]allBenders].count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"benderIdentifier" forIndexPath:indexPath];
    
    Bender *bender = [[[BenderManager sharedManager]allBenders] objectAtIndex:indexPath.row];
    
    cell.textLabel.text = bender.name;
    
    return cell;
}

-(void) viewWillAppear:(BOOL)animated{
    [self.tableView reloadData];
    animated = YES;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[BenderDetailViewController class]]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Bender *bender = [[[BenderManager sharedManager]allBenders] objectAtIndex:indexPath.row];
        BenderDetailViewController *detailViewController = segue.destinationViewController;
        detailViewController.bender = bender;
    }
}

@end