//
//  MainTableViewController.m
//  CharacterGenerator
//
//  Created by Jamaal Sedayao on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "MainTableViewController.h"
#import "weekendPlans.h"
#import "CreatePageTableViewController.h"
#import "WendPlanCharacter.h"
#import "ResultsPageViewController.h"

@interface MainTableViewController ()

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.model = [[weekendPlans alloc]init];
    [self.model initializeData];

    self.wendPlansObjects = [[NSMutableArray alloc]init]; //move to results
    
    NSMutableArray *titles = [[NSMutableArray alloc] init];
    self.titles = titles; //property titles (to the left from the equal sign) equals to NSMutableArray *titles on line right above it)  

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self.tableView reloadData];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[CreatePageTableViewController class]]) {
        CreatePageTableViewController *createController = (CreatePageTableViewController *)segue.destinationViewController;
        createController.titles = self.titles;
    } else {
        NSIndexPath *ip = [self.tableView indexPathForSelectedRow];
        WendPlanCharacter *character = [self.titles objectAtIndex:ip.row];
        ResultsPageViewController *resultsController = (ResultsPageViewController *)segue.destinationViewController;
        resultsController.character = character;
    }
    //we need to create a segue vc that will carry on the same properties as the sender vc
    //this table vc passes then the NSMutableArray property to the segue vc
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titles.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier"forIndexPath:indexPath];
    
    WendPlanCharacter *title = [self.titles objectAtIndex:indexPath.row];
    cell.textLabel.text = title.titleString;
    cell.imageView.image = title.plansImage; 
    return cell;
}

@end
