//
//  SignUpViewController.m
//  CharacterGenerator
//
//  Created by Elber Carneiro on 8/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "SignUpViewController.h"
#import "C4QStudent.h"
#import "C4QStudentArrayBuilder.h"
#import "QuestionnaireTableViewController.h"

@interface SignUpViewController ()

@property (nonatomic) NSMutableArray *C4QStudentArray;
@property (nonatomic) NSArray *C4QMentorArray;
@property (nonatomic) C4QStudentArrayBuilder *SAB;
@property (nonatomic) NSString *studentName;
@property (nonatomic) NSString *studentGender;
@property (nonatomic) NSString *studentBorough;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *genderTextField;
@property (weak, nonatomic) IBOutlet UITextField *boroughTextField;

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.SAB = [[C4QStudentArrayBuilder alloc] init];
    [self.SAB initializeMentorArray];
    self.C4QMentorArray = self.SAB.C4QMentorArray;
    
    [self.SAB initializeStudentArray];
    self.C4QStudentArray = self.SAB.C4QStudentArray;
}

- (IBAction)enterTapped:(id)sender {
    self.studentName = self.nameTextField.text;
    self.studentGender = self.genderTextField.text;
    self.studentBorough = self.boroughTextField.text;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    QuestionnaireTableViewController *QVC = segue.destinationViewController;
    
}


@end
