//
//  CreateSoldierTableViewController.m
//  CharacterGenerator
//
//  Created by Z on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CreateSoldierTableViewController.h"

@interface CreateSoldierTableViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation CreateSoldierTableViewController

-(void)saveRecruit{
    
    Soldier *recruit = [[Soldier alloc] init];
    recruit.name = self.nameTextField.text;
    
    Manager *manager = [Manager sharedInstance];
    [manager addRecruit: recruit];
    
}

- (IBAction)dismissModalView:(UIButton *)sender {
    
    [self saveRecruit];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


#pragma mark - Table view data source
//empty because table is static

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSLog(@"preparing");
}

@end
