//
//  CreateSoldierTableViewController.m
//  CharacterGenerator
//
//  Created by Z on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CreateSoldierTableViewController.h"
#import "SoldierListTableViewController.h"


@interface CreateSoldierTableViewController ()

@property (nonatomic) Soldier *recruit;

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation CreateSoldierTableViewController

- (IBAction)dismissModalView:(UIButton *)sender {
      [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)textFieldValueChanged:(UITextField *)sender {
        self.recruit.name = self.nameTextField.text;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.recruit = [[Soldier alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
//empty because table is static


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSLog(@"preparing");
    
    
    SoldierListTableViewController *soldierListVC = segue.destinationViewController;

    
    
    [soldierListVC.model.myRecruits addObject:self.recruit];
    
    
}

@end
