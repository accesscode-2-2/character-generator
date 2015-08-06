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



-(void)dismissKeyboard {
    [self.nameTextField resignFirstResponder];
}


@end
