//
//  QuestionTableViewController.m
//  MinionMadness
//
//  Created by Kaisha Jones on 8/2/15.
//  Copyright (c) 2015 Jovanny Espinal. All rights reserved.
//

#import "QuestionTableViewController.h"
#import "Character.h"
#import "QuizData.h"
#import "MinionMadnessTableViewController.h"
#import "MinionDetailViewController.h"



@interface QuestionTableViewController ()

// kj to call on these methods for the images to show in the table view controller next to their name.

@property (nonatomic) NSDictionary *tableData;
@property (nonatomic) NSMutableArray *allCharacters;
@property (nonatomic) NSArray *minions;

//Options (A - D) for Q1
@property (weak, nonatomic) IBOutlet UIButton *Q1AOption;
@property (weak, nonatomic) IBOutlet UIButton *Q1BOption;
@property (weak, nonatomic) IBOutlet UIButton *Q1COption;
@property (weak, nonatomic) IBOutlet UIButton *Q1DOption;

//Options (A - C) for Q2
@property (weak, nonatomic) IBOutlet UIButton *Q2AOption;
@property (weak, nonatomic) IBOutlet UIButton *Q2BOption;
@property (weak, nonatomic) IBOutlet UIButton *Q2COption;


//Options (A & B) for Q3
@property (weak, nonatomic) IBOutlet UIButton *Q3AOption;
@property (weak, nonatomic) IBOutlet UIButton *Q3BOption;


//Options (A - D) for Q4
@property (weak, nonatomic) IBOutlet UIButton *Q4AOption;
@property (weak, nonatomic) IBOutlet UIButton *Q4BOption;
@property (weak, nonatomic) IBOutlet UIButton *Q4COption;
@property (weak, nonatomic) IBOutlet UIButton *Q4DOption;

@end



@implementation QuestionTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];


}
- (IBAction)buttonTapped:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


- (IBAction)selected:(id)sender {
    if (self.Q1AOption == sender && self.Q2AOption == sender && self.Q3AOption == sender && (self.Q4AOption == sender || self.Q4DOption == sender)) {
       //arc4random- set to Stuart or Phil
    } else if (self.Q1BOption == sender && self.Q2BOption == sender && self.Q3BOption == sender && (self.Q4AOption == sender || self.Q4DOption == sender)) {
        //set to Jerry
    } else if (self.Q1COption == sender && self.Q2AOption == sender && self.Q3BOption == sender && (self.Q4BOption == sender || self.Q4COption == sender)) {
        //set to Jorge
    } else if (self.Q1DOption == sender && self.Q2COption == sender && self.Q3BOption == sender && (self.Q4AOption || self.Q4DOption == sender))  {
        //set to Tim
    } else {
        //what abt other possible combo of options selected
    }

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"minionCellIdentifier" forIndexPath:indexPath];
//    
//    // Configure the cell...
//    
//    
//    NSArray *keys = [self.tableData allKeys];
//    NSString *key = keys[indexPath.section];
//    NSArray *minionArray = [self.tableData objectForKey:key];
//    NSArray *sortedArray = [self.tableData objectForKey:key];
//    
//    
//    NSString *name = (NSString *) minionArray[indexPath.row];
//    cell.textLabel.text = name;
//    cell.imageView.image = [UIImage imageNamed:name];
//    
//    
//    NSArray *allCharacters = [self.minions sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
//    //NSString *allCharacters = [sortedArray objectAtIndex:indexPath.row];
//    
//    cell.textLabel.text = allCharacters;
//    cell.imageView.image = [UIImage imageNamed: allCharacters];
//    return cell;
//
//}


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
