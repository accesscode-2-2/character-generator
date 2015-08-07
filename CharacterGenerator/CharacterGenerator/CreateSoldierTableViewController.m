//
//  CreateSoldierTableViewController.m
//  CharacterGenerator
//
//  Created by Z on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CreateSoldierTableViewController.h"
#import "COD4database.h"

@interface CreateSoldierTableViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@property (nonatomic) COD4database *model;

@end

@implementation CreateSoldierTableViewController

-(void)saveRecruit{
    
    Soldier *recruit = [[Soldier alloc] init];
    recruit.name = self.nameTextField.text;
    
    NSInteger row = [self.teamPicker selectedRowInComponent:0];
    recruit.team = [[self.model.team allKeys] objectAtIndex:row];
    
    Manager *manager = [Manager sharedInstance];
    [manager addRecruit: recruit];
    
}

- (IBAction)dismissModalView:(UIButton *)sender {
    
    [self saveRecruit];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(void)viewWillAppear:(BOOL)animated{
    
    //setup model
    self.model = [[COD4database alloc] init];
    [self.model setup];
    
    // Connect data
    self.teamPicker.dataSource = self;
    self.teamPicker.delegate = self;
    
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

#pragma mark - picker view

// The number of columns of data
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    NSArray *teams = [self.model.team allKeys];
    
    return teams.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [[self.model.team allKeys] objectAtIndex:row];
}

 //Catpure the picker view selection
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    // This method is triggered whenever the user makes a change to the picker selection.
    // The parameter named row and component represents what was selected.
    NSString *selectedTeam = [[self.model.team allKeys] objectAtIndex:row];
    self.teamImageView.image = [UIImage imageNamed:selectedTeam];
}

@end
