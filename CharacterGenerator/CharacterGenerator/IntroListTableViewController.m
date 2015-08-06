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
//Above is the class/model with all of our hard coded data -Justine

//Below is the new destination detail page view controller
#import "DestinationDetailPageViewController.h"


@interface IntroListTableViewController ()

//@property (nonatomic) DestinationDetails *destinationLocation;

@end

@implementation IntroListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Not sure that we need this below -Justine
    //self.navigationItem.title = @"Your Final Destination"; // change this if you want
    
// lines 26 and 27 will give weird red flags if uncommented, not sure how to implement in code

//    self.destinationLocation = [[DestinationDetails alloc] init];
//    [self.destinationLocation initializeData];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source
/*
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return [self.destinationLocation.destinationDetails allKeys].count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *keys = [self.destinationLocation.destinationDetails allKeys];
    NSString *key = [keys objectAtIndex:section];
    NSArray *values = [self.destinationLocation.destinationDetails objectForKey:key];
    return values.count;
}*/



 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UserDestinationCellIdentifier" forIndexPath:indexPath];
 
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
