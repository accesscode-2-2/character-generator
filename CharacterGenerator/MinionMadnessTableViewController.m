//
//  MinionMadnessTableViewController.m
//  MinionMadness
//
//  Created by Kaisha Jones on 8/2/15.
//  Copyright (c) 2015 Jovanny Espinal. All rights reserved.
//

#import "MinionMadnessTableViewController.h"
#import "QuizData.h"
#import "MinionDetailViewController.h"
#import "Character.h"
#import "QuestionTableViewController.h"
#import "MInionManager.h"

@interface MinionMadnessTableViewController ()
@property(nonatomic)NSMutableArray *model;
@end

@implementation MinionMadnessTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    self.model =  [[MinionManager sharedManager]allMinions];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    Character *minion = self.model[indexPath.row];

    
    
    
    if ([segue.identifier isEqualToString:@"toDetail"]) {
        MinionDetailViewController *detailViewController = segue.destinationViewController;
        detailViewController.minionName = minion.name;
        detailViewController.numberOfEyes = minion.eyes;
        detailViewController.hairType = minion.hair;
        detailViewController.bodyType = minion.body;
        detailViewController.height = minion.height;
        detailViewController.minionImage = minion.minionImage;
    } else if ([segue.identifier isEqualToString:@"toQuestions"]) {
        QuestionTableViewController *QTVC = segue.destinationViewController;
    }
    
    
    
    
 // if plus sign is tapped then show
    
   
    
    
    
    }

-(void)viewWillAppear:(BOOL)animated{
    [self.tableView reloadData];
    animated = YES;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return self.model.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MinionIdentifier" forIndexPath:indexPath];
    

    Character *minion = self.model[indexPath.row];
    cell.textLabel.text = minion.name;
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
