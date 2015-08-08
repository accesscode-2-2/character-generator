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
#import "MInionManager.h"



@interface QuestionTableViewController ()

// kj to call on these methods for the images to show in the table view controller next to their name.

@property (nonatomic) NSString *eyes;
@property (nonatomic) NSString *hair;
@property (nonatomic) NSString *body;
@property (nonatomic) int height;

@property (nonatomic, strong) IBOutletCollection(UIButton) NSArray *question1;
@property (nonatomic, strong) IBOutletCollection(UIButton) NSArray *question2;
@property (nonatomic, strong) IBOutletCollection(UIButton) NSArray *question3;
@property (nonatomic, strong) IBOutletCollection(UIButton) NSArray *question4;

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

@property (weak, nonatomic) IBOutlet UITextField *nameField;


@end



@implementation QuestionTableViewController


//Question 1
- (IBAction)question1Tap:(UIButton *)sender {
    NSInteger idx = [self.question1 indexOfObject:sender];
   
    if (idx == 0){
        self.eyes = @"One";
    }
    else{
        self.eyes = @"Two";
    }
    
}

//Question 2
- (IBAction)question2Tap:(UIButton *)sender {
    NSInteger idx = [self.question2 indexOfObject:sender];
    
    if (idx == 0){
        self.hair = @"Flat, Center-Parted";
    }
    else if (idx == 1){
        self.hair = @"Spiky";
    }
    else if(idx == 2){
        self.hair = @"Standing Straight Up";
    }
    else {
        self.hair = @"A Tiny Clump of Hair";
    }
}

//Question 3
- (IBAction)question3Tap:(UIButton *)sender {
    NSInteger idx = [self.question3 indexOfObject:sender];
    
    if (idx == 0 || idx == 2) {
        self.body = @"Fat";
    }
    else {
        self.body = @"Slim";
    }
}


//Question 4
- (IBAction)question4Tap:(UIButton *)sender {
    NSInteger idx = [self.question4 indexOfObject:sender];
    
    int lowerBound = 95;
    int midBound = 100;
    int upperbound = 115;
    
    if (idx == 0) {
        self.height = lowerBound + arc4random() % (midBound - lowerBound);;
    }
    else {
        self.height = midBound + arc4random() % (upperbound - midBound);
    }
}


//Generate Button
- (IBAction)generateMinion:(UIButton *)sender {
    Character *minion = [[Character alloc] init];
    minion.name = self.nameField.text;
    minion.eyes = self.eyes;
    minion.hair = self.hair;
    minion.body = self.body;
    minion.height = self.height;
    
    [minion generateImage];
    
    [[MinionManager sharedManager] addMinion:minion];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
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
