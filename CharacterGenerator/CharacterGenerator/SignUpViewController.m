//
//  SignUpViewController.m
//  CharacterGenerator
//
//  Created by Elber Carneiro on 8/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "SignUpViewController.h"
#import "C4QStudentManager.h"

@interface SignUpViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *genderTextField;
@property (weak, nonatomic) IBOutlet UITextField *boroughTextField;
@property (weak, nonatomic) IBOutlet UITextField *imageTextField;
@property (nonatomic) C4QStudentManager *manager;

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.manager = [C4QStudentManager sharedC4QStudentManager];
}

- (IBAction)enterTapped:(id)sender {
    [self.manager addNewStudentWithName:self.nameTextField.text
                                 gender:self.genderTextField.text
                              residence:self.boroughTextField.text
                           andImageName:self.imageTextField.text];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
/*
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
}
*/


@end
