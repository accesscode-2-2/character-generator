//
//  CharacterTableViewController.m
//  CharacterGenerator
//
//  Created by Mesfin Bekele Mekonnen on 8/6/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CharacterTableViewController.h"

@interface CharacterTableViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (nonatomic, strong) IBOutletCollection(UIButton) NSArray *locationQuestionButtons;
@property (nonatomic, strong) IBOutletCollection(UIButton) NSArray *textureQuestionButtons;
@property (nonatomic, strong) IBOutletCollection(UIButton) NSArray *colorQuestionButtons;
@end

@implementation CharacterTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
    
}

- (IBAction)locationButtonTapped:(UIButton *)sender {
    
    for(int i=0; i < self.locationQuestionButtons.count; i++){
        
        if(sender != self.locationQuestionButtons[i]){
            [self.locationQuestionButtons[i] setEnabled:NO];
        }
    }
}

- (IBAction)colorButtonTapped:(UIButton *)sender {
    for(int i=0; i < self.colorQuestionButtons.count; i++){
        
        if(sender != self.colorQuestionButtons[i]){
            [self.colorQuestionButtons[i] setEnabled:NO];
        }
    }

}

- (IBAction)textureButtonTapped:(UIButton *)sender {
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
