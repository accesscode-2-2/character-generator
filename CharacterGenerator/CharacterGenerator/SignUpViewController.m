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
@property (weak, nonatomic) IBOutlet UIButton *enterButtonActive;

@property (weak, nonatomic) IBOutlet UILabel *warningFillOutNameField;

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.manager = [C4QStudentManager sharedC4QStudentManager];
    self.warningFillOutNameField.hidden = YES;
   
    
    if (self.nameTextField.text.length == 0) {
        
        [self.enterButtonActive setEnabled:NO];
        
    }

}


-(void)awakeFromNib {

    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(textedit)
                                                 name:UITextFieldTextDidChangeNotification
                                               object:self.nameTextField];
}

-(void) textedit {
    if (self.nameTextField.text.length == 0) {
    [self.enterButtonActive setEnabled:NO];
    }
    else if (self.nameTextField.text.length != 0) {
        [self.enterButtonActive setEnabled:YES];
    }

}



- (IBAction)enterTapped:(id)sender {
    
    [self.manager addNewStudentWithName:self.nameTextField.text
                                 gender:self.genderTextField.text
                              residence:self.boroughTextField.text
                           andImageName:self.imageTextField.text];

}
#pragma mark - Navigation

@end
