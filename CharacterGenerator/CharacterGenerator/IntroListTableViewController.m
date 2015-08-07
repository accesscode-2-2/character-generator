//
//  IntroListTableViewController.m
//  CharacterGenerator
//
//  Created by Justine Gartner on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "IntroListTableViewController.h"
#import "QuizTableViewController.h"
#import "DestinationsModel.h"
#import "DestinationDetailPageViewController.h"


@interface IntroListTableViewController ()

@end

@implementation IntroListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

}

#pragma mark - Table view data source
/*
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
 
    return 
}*/



 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UserDestinationCellIdentifier" forIndexPath:indexPath];
 
     [[DestinationsModel sharedModel].userDestinations objectForKey:@""];
 // Configure the cell...
 
 return cell;
 }


//the method below is our segue from the intro list to the quiz AND from the intro list to the detail view
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"showQuizTableViewController"] ) {
        //to make it possible for QuizViewController to update the IntroListTableViewController
        UINavigationController *destinationContoller = segue.destinationViewController;
        QuizTableViewController *quizTableViewController = (QuizTableViewController *)destinationContoller.topViewController;
        quizTableViewController.introListTableViewController = self;
    } else if ([segue.identifier isEqualToString:@"showDestinationDetails"]) {
        // prepare destination details page view controller
        // pass it destination data
    }
        
    NSLog(@"hi!");
    
    
}

@end
