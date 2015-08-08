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

@property (nonatomic) NSMutableArray *tableData;
@property (nonatomic) NSDictionary *userDestinationDetails;

@end

@implementation IntroListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableData = [DestinationsModel sharedModel].userDestinations;
    NSLog(@"%@", self.tableData);
    NSLog(@"%@", [DestinationsModel sharedModel].userDestinations);
    
    self.userDestinationDetails  = [DestinationsModel sharedModel].destinationDetails;
    NSLog(@"%@", self.userDestinationDetails);
    NSLog(@"%@", [DestinationsModel sharedModel].destinationDetails);
    
    // Add this line in viewDidLoad in same class you want the tableView to refresh
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(refreshTableWithNotification:) name:@"RefreshTable" object:nil];
}

// Add this method just beneath viewDidLoad:
- (void)refreshTableWithNotification:(NSNotification *)notification {
    [self.tableView reloadData];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
 
    return self.tableData.count;
}



 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UserDestinationCellIdentifier" forIndexPath:indexPath];
 
     //[[DestinationsModel sharedModel].userDestinations objectForKey:@""];
     NSArray *userDestinations = self.tableData;
     NSString *userDestinationsTitle = userDestinations[indexPath.section];
     cell.textLabel.text = userDestinationsTitle;
     
     NSString *imageName = [userDestinationsTitle stringByReplacingOccurrencesOfString:@" " withString:@"_"];
     
     cell.imageView.image = [UIImage imageNamed:imageName];
     
 
 
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
        UINavigationController *destinationController = segue.destinationViewController;
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        NSArray *userDestinations = self.tableData;
        NSString *userDestinationName =  userDestinations[indexPath.section];
        NSString *destinationDescriptions = [self.userDestinationDetails objectForKey:userDestinationName];
        
        NSString *imageName = [userDestinationName stringByReplacingOccurrencesOfString:@" " withString:@"_"];
        
        DestinationDetailPageViewController *detailViewController = (DestinationDetailPageViewController *) destinationController;
        
        detailViewController.destinationName = userDestinationName;
        detailViewController.destinationDetails = destinationDescriptions;
        detailViewController.destinationImage = [UIImage imageNamed:imageName];
        
    }
        
    NSLog(@"hi!");
    
    
}

-(NSString *)objectForIndexPath: (NSIndexPath *)indexPath {
    
    NSArray *userDestinations = self.tableData;
    NSString *userDestinationName =  userDestinations[indexPath.section];
    NSArray *destinationDescriptions = [self.userDestinationDetails objectForKey:userDestinationName];
    
    return destinationDescriptions[indexPath.row];

}

@end
