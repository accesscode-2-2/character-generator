//
//  ListTableViewController.m
//  modal
//
//  Created by Fatima Zenine Villanueva on 8/2/15.
//  Copyright (c) 2015 apps. All rights reserved.
//

#import "ListTableViewController.h"
#import "Athlete.h"
#import "QuestionDetail.h"
#import "AthleteManager.h"
#import "ResultsViewController.h"

@interface ListTableViewController ()
@property (nonatomic) Athlete *model;
@property (nonatomic) QuestionDetail *questionModel;
@end

@implementation ListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AthleteManager *sharedManager = [AthleteManager sharedManager];
    
    self.questionModel = [[QuestionDetail alloc]init];
    
    NSLog(@"%@", sharedManager.athletes);
    
    NSLog(@"%@", self.questionModel.name);

    
    NSIndexPath *indexPath;
    
    UITableViewCell *cellThis = [self.tableView cellForRowAtIndexPath:indexPath];
    if(cellThis.isSelected) {
        [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
        NSLog(@"%@", self.questionModel.name);
        //NSLog(@"%@", sharedManager.athletes);
    }
    
    

}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return  [AthleteManager sharedManager].athletes.count;

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListIdentifier" forIndexPath:indexPath];
    
//    AthleteManager *sharedManager = [AthleteManager sharedManager];
//    
//    NSArray *keys = [sharedManager.athletes allKeys];
//    NSString *key = [keys objectAtIndex:indexPath.section];
    
    Athlete *athlete = [AthleteManager sharedManager].athletes[indexPath.row];

    cell.textLabel.text = athlete.name;
    
    return cell;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    if ([segue.destinationViewController isKindOfClass:[ResultsViewController class]]) {
        NSLog(@"Preparing... RESULTS");
        ResultsViewController *resultsVC = segue.destinationViewController;
        
        //        resultsVC.resultsOfCharacter = self.model.name;
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        resultsVC.resultsOfCharacter = [AthleteManager sharedManager].athletes[indexPath.row];

    }

    
}


@end
