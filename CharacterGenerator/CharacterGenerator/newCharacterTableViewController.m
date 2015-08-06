//
//  newCharacterTableViewController.m
//  CharacterGenerator
//
//  Created by Henna on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "newCharacterTableViewController.h"

@interface newCharacterTableViewController ()

@property (strong, nonatomic) NSArray *fight;

@end

@implementation newCharacterTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Data Picker Choices
    NSArray *choice = [[NSArray alloc] initWithObjects:@"Can you fight?", @"Yes", @"No", nil];
    
    self.fight = choice;
}

#pragma mark Picker Data Source Methods

-(NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
        return 1;
}

- (IBAction)closeNewCharacter:(UIBarButtonItem *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return [_fight count];
}

#pragma mark Picker Delagate Methods

- (NSString *)pickerView:(nonnull UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [_fight objectAtIndex:row];
}
- (IBAction)buttonPressed:(id)sender {
    
    NSString *select = [_fight objectAtIndex:[_yesOrNoPicker selectedRowInComponent:0]];
    
    NSString *title = [[NSString alloc]initWithFormat:@"Awesome!", select];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:@"You picked!" delegate:nil cancelButtonTitle:@"Let's continue!" otherButtonTitles: nil];
    
    [alert show];
}

@end
