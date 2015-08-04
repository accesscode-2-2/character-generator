//
//  CreatePageTableViewController.m
//  CharacterGenerator
//
//  Created by Jamaal Sedayao on 8/3/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CreatePageTableViewController.h"

@interface CreatePageTableViewController ()

@end

@implementation CreatePageTableViewController
- (IBAction)buttonTapped:(UIButton *)sender {
    
    if (self.angryEmojiButton.isTouchInside == YES){
        NSLog(@"Angry");
    }
    if (self.crazyEmojiButton.isTouchInside == YES){
        NSLog(@"Crazy");
    }
    if (self.kissEmojiButton.isTouchInside == YES){
        NSLog(@"Kiss");
    }
    if (self.poopEmojiButton.isTouchInside == YES){
        NSLog(@"Poop");
    }
    if (self.tearsEmojiButton.isTouchInside == YES){
        NSLog(@"Tears");
    }
    if (self.fireEmojiButton.isTouchInside == YES){
        NSLog(@"Fire!");
    }
    
}
- (IBAction)foodButtonTapped:(UIButton *)sender {
    
    if (self.chocolateFoodButton.isTouchInside == YES){
        NSLog(@"Chocolate");
    }
    if (self.macFoodButton.isTouchInside == YES){
        NSLog(@"MackyCheese");
    }
    if (self.sandwichFoodButton.isTouchInside == YES){
        NSLog(@"Sandwich");
    }
    if (self.pizzaFoodButton.isTouchInside == YES){
        NSLog(@"Pizza");
    }
    if (self.kaleFoodButton.isTouchInside == YES){
        NSLog(@"Kale");
    }
    if (self.burritoFoodButton.isTouchInside == YES){
        NSLog(@"CHIPOTLE!");
    }
}
- (IBAction)celebButtonTapped:(UIButton *)sender {
    
    if (self.shiaCelebButton.isTouchInside == YES){
        NSLog(@"Shia");
    }
    if (self.jLawCelebButton.isTouchInside == YES){
        NSLog(@"J-Law");
    }
    if (self.steveYeunCelebButton.isTouchInside == YES){
        NSLog(@"Glenn from Walking Dead!");
    }
    if (self.lupitaCelebButton.isTouchInside == YES){
        NSLog(@"Lupita");
    }
    if (self.theRockCelebButton.isTouchInside == YES){
        NSLog(@"THE ROCK!");
    }
    if (self.sofiaVergaraCelebButton.isTouchInside == YES){
        NSLog(@"Sofia");
    }
}

- (IBAction)switchedON:(UISwitch *)sender {
    
    if (self.alcoholSwitch.isOn == YES){
        NSLog(@"Beer Me!");
    } else {
        NSLog(@"Lame...");
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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
