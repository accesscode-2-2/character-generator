//
//  SoldierListTableViewController.m
//  CharacterGenerator
//
//  Created by Z on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "SoldierListTableViewController.h"
#import "Soldier.h"
#import "SoldierDetailViewController.h"


@interface SoldierListTableViewController ()
@property (weak, nonatomic) IBOutlet UILabel *primaryWeaponTypeLabel;

@end

@implementation SoldierListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //create manager
    Manager *myManager = [Manager sharedInstance];
    self.manager = myManager;
    
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    self.model = [[COD4database alloc] init];;
    [self.model setup];
    
//    Soldier *rob = [[Soldier alloc] init];
//    rob.name = @"Rob";
//    
//    [myManager addRecruit:rob];
    
}

-(void)viewWillAppear:(BOOL)animated{
    [self.tableView reloadData];
    animated = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.manager.myRecruits.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SoldierIdentifier" forIndexPath:indexPath];
    
    // Configure the cell...
    
    //id type vs. soldier type
    
    Soldier *currentSoldier = [self.manager recruitAtIndex:indexPath.row];
    cell.textLabel.text = currentSoldier.name;
    cell.imageView.image = [UIImage imageNamed:currentSoldier.team];
    cell.detailTextLabel.text = currentSoldier.primaryWeaponType;
    
    return cell;
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

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([segue.identifier isEqual:@"showAdd"]) {
        //
    }
    else{
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        Soldier *currentSoldier = [self.manager recruitAtIndex:indexPath.row];
        
        SoldierDetailViewController *detailVC = segue.destinationViewController;
        
        detailVC.soldier = currentSoldier;
        
        
    }
    
    
}

@end
