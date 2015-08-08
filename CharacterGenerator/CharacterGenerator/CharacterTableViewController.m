//
//  CharacterTableViewController.m
//  CharacterGenerator
//
//  Created by Mesfin Bekele Mekonnen on 8/6/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CharacterTableViewController.h"
#import "Bender.h"
#import "BenderManager.h"

@interface CharacterTableViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (nonatomic, strong) IBOutletCollection(UIButton) NSArray *locationQuestionButtons;
@property (nonatomic, strong) IBOutletCollection(UIButton) NSArray *textureQuestionButtons;
@property (nonatomic, strong) IBOutletCollection(UIButton) NSArray *colorQuestionButtons;

@property (nonatomic) NSString *location;
@property (nonatomic) NSString *color;
@property (nonatomic) NSString *texture;


@end

@implementation CharacterTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
    
}

-(BOOL)isComplete{
    if(self.nameTextField.text.length == 0){
        return NO;
    }
    for(int i=0; i < self.locationQuestionButtons.count; i++){
        if([self.locationQuestionButtons[i] isSelected]){
            break;
        }
        if(i==self.locationQuestionButtons.count-1){
            return NO;
        }
    }
    for(int i=0;i<self.colorQuestionButtons.count;i++){
        if([self.colorQuestionButtons[i] isSelected]){
            break;
        }
        if(i==self.colorQuestionButtons.count-1){
            return NO;
        }    }
    for(int i=0;i<self.textureQuestionButtons.count;i++){
        if([self.textureQuestionButtons[i] isSelected]){
            break;
        }
        if(i==self.textureQuestionButtons.count-1){
            return NO;
        }    }
    return YES;
}

- (IBAction)doneButtonTapped:(UIBarButtonItem *)sender {
    if(![self isComplete]){
   
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Missing some Field Inputs!"
                                                        message:@"Input Data bruh"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
    else{
        Bender *newBender = [[Bender alloc] init];
        
        newBender.name = self.nameTextField.text;
        newBender.color = self.color;
        newBender.texture = self.texture;
        newBender.location = [newBender imageForName:self.location];
        
        [newBender animalForColor:self.color AndTexture:self.texture];
        
        
        
        [[BenderManager sharedManager] addBenders:newBender];
        
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

- (IBAction)locationButtonTapped:(UIButton *)sender {
    NSInteger idx = [self.locationQuestionButtons indexOfObject:sender];
    
    self.location = [Bender locations][idx];

    // disable all other buttons
    for(int i=0; i < self.locationQuestionButtons.count; i++){
        
        if(sender != self.locationQuestionButtons[i]){
            [self.locationQuestionButtons[i] setEnabled:NO];
        }
    }
}

- (IBAction)colorButtonTapped:(UIButton *)sender {
    NSInteger idx = [self.colorQuestionButtons indexOfObject:sender];
    
    self.color = [Bender colors][idx];
    for(int i=0; i < self.colorQuestionButtons.count; i++){
        
        if(sender != self.colorQuestionButtons[i]){
            [self.colorQuestionButtons[i] setEnabled:NO];
        }
    }

}

- (IBAction)textureButtonTapped:(UIButton *)sender {
    NSInteger idx = [self.textureQuestionButtons indexOfObject:sender];
    
    self.texture = [Bender textures][idx];
    for(int i=0; i < self.textureQuestionButtons.count; i++){
        
        if(sender != self.textureQuestionButtons[i]){
            [self.textureQuestionButtons[i] setEnabled:NO];
        }
    }
    
}



-(void)dismissKeyboard {
    [self.nameTextField resignFirstResponder];
}


@end
