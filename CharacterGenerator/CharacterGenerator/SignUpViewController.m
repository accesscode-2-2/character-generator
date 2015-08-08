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
@property (weak, nonatomic) IBOutlet UIButton *enterButtonActive;
@property (weak, nonatomic) IBOutlet UIImageView *c4qLogo;
@property (nonatomic) C4QStudentManager *manager;

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.manager = [C4QStudentManager sharedC4QStudentManager];
   
    if (self.nameTextField.text.length == 0) {
        [self.enterButtonActive setEnabled:NO];
    }
    self.c4qLogo.layer.cornerRadius = 10.0;
    self.c4qLogo.layer.masksToBounds = YES;
    self.c4qLogo.layer.borderWidth = 1.0;
    self.c4qLogo.layer.borderColor =  [[UIColor colorWithRed:122/255.0
                                                       green:123/255.0
                                                        blue:124/255.0
                                                       alpha:1.0] CGColor];
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
    } else if (self.nameTextField.text.length != 0) {
        [self.enterButtonActive setEnabled:YES];
    }
}

- (IBAction)enterTapped:(id)sender {
    
    [self.manager addNewStudentWithName:self.nameTextField.text
                                 gender:self.genderTextField.text
                              residence:self.boroughTextField.text
                           andImageName:self.imageTextField.text];
}

@end
