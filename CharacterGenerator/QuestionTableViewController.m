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

//Options (A & B) for Q1
@property (weak, nonatomic) IBOutlet UIButton *Q1AOption;
@property (weak, nonatomic) IBOutlet UIButton *Q1BOption;

//Options (A - D) for Q2
@property (weak, nonatomic) IBOutlet UIButton *Q2AOption;
@property (weak, nonatomic) IBOutlet UIButton *Q2BOption;
@property (weak, nonatomic) IBOutlet UIButton *Q2COption;
@property (weak, nonatomic) IBOutlet UIButton *Q2DOption;


//Options (A - D) for Q3
@property (weak, nonatomic) IBOutlet UIButton *Q3AOption;
@property (weak, nonatomic) IBOutlet UIButton *Q3BOption;
@property (weak, nonatomic) IBOutlet UIButton *Q3COption;
@property (weak, nonatomic) IBOutlet UIButton *Q3DOption;


//Options (A & B) for Q4
@property (weak, nonatomic) IBOutlet UIButton *Q4AOption;
@property (weak, nonatomic) IBOutlet UIButton *Q4BOption;

@property (weak, nonatomic) IBOutlet UIButton *GenerateButton;



@end



@implementation QuestionTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];


}
- (IBAction)buttonTapped:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


- (IBAction)selected:(UIButton *)sender {
    if (self.Q1AOption == sender) {
       // Set minion eye property to ONE
       //
        if (self.Q2AOption == sender) {
            //set minion hair property to Flat, Center-Parted"
            
            if (self.Q3AOption == sender || self.Q3COption) {
                //set minion body type to fat
                
                if (self.Q4AOption == sender) {
                    // set minion height number as short
                }
                
                else if (self.Q4BOption == sender){
                    // set minion height number to average/tall
                }
            }
            else if (self.Q3BOption == sender || self.Q3DOption == sender){
                // set minion body type to slim
            }
        }
        else if (self.Q2BOption == sender){
            //set minion hair property to Spiky
            if (self.Q3AOption == sender || self.Q3COption) {
                //set minion body type to fat
                
                if (self.Q4AOption == sender) {
                    // set minion height number as short
                }
                
                else if (self.Q4BOption == sender){
                    // set minion height number to average/tall
                }
            }
            else if (self.Q3BOption == sender || self.Q3DOption == sender){
                // set minion body type to slim
            }
        }
        else if (self.Q2COption){
            //set minion hair property to Standing Straight Up
            if (self.Q3AOption == sender || self.Q3COption) {
                //set minion body type to fat
                
                if (self.Q4AOption == sender) {
                    // set minion height number as short
                }
                
                else if (self.Q4BOption == sender){
                    // set minion height number to average/tall
                }
            }
            else if (self.Q3BOption == sender || self.Q3DOption == sender){
                // set minion body type to slim
            }
        }
        else if (self.Q2DOption){
            //set minion hair property to Tiny Clump of Hair
            if (self.Q3AOption == sender || self.Q3COption) {
                //set minion body type to fat
                
                if (self.Q4AOption == sender) {
                    // set minion height number as short
                }
                
                else if (self.Q4BOption == sender){
                    // set minion height number to average/tall
                }
            }
            else if (self.Q3BOption == sender || self.Q3DOption == sender){
                // set minion body type to slim
            }
        }
        
       //arc4random- set to Stuart or Phil
    } else if (self.Q1BOption == sender){
        //Set minion eye property to TWO
        if (self.Q2AOption == sender) {
            //set minion hair property to Flat, Center-Parted"
            
            if (self.Q3AOption == sender || self.Q3COption) {
                //set minion body type to fat
                
                if (self.Q4AOption == sender) {
                    // set minion height number as short
                }
                
                else if (self.Q4BOption == sender){
                    // set minion height number to average/tall
                }
            }
            else if (self.Q3BOption == sender || self.Q3DOption == sender){
                // set minion body type to slim
            }
        }
        else if (self.Q2BOption == sender){
            //set minion hair property to Spiky
            if (self.Q3AOption == sender || self.Q3COption) {
                //set minion body type to fat
                
                if (self.Q4AOption == sender) {
                    // set minion height number as short
                }
                
                else if (self.Q4BOption == sender){
                    // set minion height number to average/tall
                }
            }
            else if (self.Q3BOption == sender || self.Q3DOption == sender){
                // set minion body type to slim
            }
        }
        else if (self.Q2COption){
            //set minion hair property to Standing Straight Up
            if (self.Q3AOption == sender || self.Q3COption) {
                //set minion body type to fat
                
                if (self.Q4AOption == sender) {
                    // set minion height number as short
                }
                
                else if (self.Q4BOption == sender){
                    // set minion height number to average/tall
                }
            }
            else if (self.Q3BOption == sender || self.Q3DOption == sender){
                // set minion body type to slim
            }
        }
        else if (self.Q2DOption){
            //set minion hair property to Tiny Clump of Hair
            if (self.Q3AOption == sender || self.Q3COption) {
                //set minion body type to fat
                
                if (self.Q4AOption == sender) {
                    // set minion height number as short
                }
                
                else if (self.Q4BOption == sender){
                    // set minion height number to average/tall
                }
            }
            else if (self.Q3BOption == sender || self.Q3DOption == sender){
                // set minion body type to slim
            }
    }
        
        
        
    }
    
//    //&& self.Q2BOption == sender && self.Q3BOption == sender && (self.Q4AOption == sender || self.Q4DOption == sender))
//        //set to Jerry
//    } else if (self.Q1COption == sender && self.Q2AOption == sender && self.Q3BOption == sender && (self.Q4BOption == sender || self.Q4COption == sender)) {
//        //set to Jorge
//    } else if (self.Q1DOption == sender && self.Q2COption == sender && self.Q3BOption == sender && (self.Q4AOption || self.Q4DOption == sender))  {
//        //set to Tim
//    } else {
//        //what abt other possible combo of options selected
//    }

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
