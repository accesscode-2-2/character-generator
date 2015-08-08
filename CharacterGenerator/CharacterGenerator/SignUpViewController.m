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
        //   self.warningFillOutNameField.hidden = NO;
        
        [self.enterButtonActive setEnabled:NO];
        
    }
    
//
//    else
//        [self.enterButtonActive setEnabled:YES];
//    

}

//- (void)textFieldDidBeginEditing:(UITextField *)textField{
//    [self.enterButtonActive setEnabled:YES];
//  //   [self.tableView reloadData];
//
//    
//}
-(void)awakeFromNib {

    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(textedit)
                                                 name:UITextFieldTextDidChangeNotification
                                               object:self.nameTextField];
}

-(void) textedit {
  //  if (self.nameTextField.text.length == 0) {
    [self.enterButtonActive setEnabled:YES];
//    }
//    
//        [self.enterButtonActive setEnabled:YES];

    
    
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
