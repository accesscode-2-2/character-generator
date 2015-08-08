//
//  AllCharactersTableViewController.m
//  CharacterGenerator
//
//  Created by Artur Lan on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "AllCharactersTableViewController.h"
#import "characterModel.h"
#import "Character.h"
#import "characterDeetsViewController.h"
#import "newCharacterTableViewController.h"

@interface AllCharactersTableViewController ()
@property (nonatomic) characterModel * model;

@end

@implementation AllCharactersTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"AC 2.2 Super Heroes";
    
    self.model = [characterModel sharedInstance];
    
//    self.model = [[characterModel alloc]init];
    [self.model initializeCharacters];
    
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData]; // to reload selected cell
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.destinationViewController isKindOfClass:[characterDeetsViewController class]]) {
        NSIndexPath * indexPath = [self.tableView indexPathForSelectedRow];
        Character * person = [self.model.allCharacters objectAtIndex:indexPath.row];
        NSString * name = person.name;

        BOOL canFight = person.canFight;
        int pushUpLimit = person.pushupLimit;
        int beerLimit = person.beerLimit;
        
        characterDeetsViewController *destination = segue.destinationViewController;
        destination.characterName = name;
        destination.canFight = canFight;
        destination.pushupLimit = pushUpLimit;
        destination.beerLimit = beerLimit;
        destination.superHeroName = person.superPower;
        destination.deetsImageName = person.image;
        
    
    }
   
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [self.model.allCharacters count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"characterCellIdentifier" forIndexPath:indexPath];
    Character *person = [self.model.allCharacters objectAtIndex:indexPath.row];
    
    NSString * name = [person name];
    UIImage * image = [person image];
    
    cell.textLabel.text = name;
    cell.imageView.image = image;
    
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
