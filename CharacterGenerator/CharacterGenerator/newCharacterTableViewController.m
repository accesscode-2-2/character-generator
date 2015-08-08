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
@property (weak, nonatomic) IBOutlet UITextField *nameLabel;
@property (weak, nonatomic) IBOutlet UITextField *pushupLabel;
@property (weak, nonatomic) IBOutlet UITextField *beerLabel;

@end

@implementation newCharacterTableViewController


// Take photo button action
- (IBAction)TakePhoto {
    
    imagePicker1 = [[UIImagePickerController alloc] init];
    imagePicker1.delegate = self;
    [imagePicker1 setSourceType:UIImagePickerControllerSourceTypeCamera];
    [self presentViewController:imagePicker1 animated:YES completion:NULL];
   
}


- (IBAction)ChooseExisting {
    
    imagePicker2 = [[UIImagePickerController alloc] init];
    imagePicker2.delegate = self;
    [imagePicker2 setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController:imagePicker2 animated:YES completion:NULL];
    
}

- (void) imagePickerController:(nonnull UIImagePickerController *)picker didFinishPickingMediaWithInfo:(nonnull NSDictionary<NSString *,id> *)info {
    image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [imageView setImage:image];
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (void) imagePickerControllerDidCancel:(nonnull UIImagePickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:NULL];
}

// end photo properties

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Data Picker Choices
    NSArray *choice = [[NSArray alloc] initWithObjects: @"Yes", @"No", nil];
    
    self.fight = choice;
}
- (IBAction)onSubmit:(UIButton *)sender {
    
    Character *person = [[Character alloc]init];
    
    int pushUpInt = [self.pushupLabel.text intValue];
    int beerInt = [self.beerLabel.text intValue];
    NSString *fightString = [self.fight objectAtIndex:[_yesOrNoPicker selectedRowInComponent:0]];
    BOOL canFight = [fightString boolValue];
    
    [person initializeName:self.nameLabel.text pushups:pushUpInt fighter:canFight andBeer:beerInt withImage:image];
    
    //[person initializeName:self.nameLabel.text pushups:pushUpInt fighter:canFight andBeer:beerInt ];
    
    characterModel * shared = [characterModel sharedInstance];
    [shared.allCharacters addObject:person];
    // add person to out character model data
    
    
}

#pragma mark Picker Data Source Methods

-(NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
        return 1;
}

- (IBAction)closeNewCharacter:(UIBarButtonItem *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return [self.fight count];
}

#pragma mark Picker Delagate Methods

- (NSString *)pickerView:(nonnull UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [self.fight objectAtIndex:row];
}
- (IBAction)buttonPressed:(id)sender {
    
    NSString *select = [self.fight objectAtIndex:[_yesOrNoPicker selectedRowInComponent:0]];
    
    NSString *title = [[NSString alloc]initWithFormat:@"Awesome!", select];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:@"You picked!" delegate:nil cancelButtonTitle:@"Let's continue!" otherButtonTitles: nil];
    
    [alert show];
}



@end
