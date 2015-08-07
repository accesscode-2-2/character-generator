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

@property (nonatomic) NSMutableArray *C4QStudentArray; // can pull from a singleton manager?
@property (nonatomic) NSArray *C4QMentorArray; // singleton manager
@property (nonatomic) C4QStudentArrayBuilder *SAB; // delegate handled by manager
@property (nonatomic) NSString *studentName; // might not be necessary with singleton
@property (nonatomic) NSString *studentGender; // might not be necessary with singleton
@property (nonatomic) NSString *studentBorough; // might not be necessary with singleton
@property (nonatomic) NSString *studentImage; // might not be necessary with singleton
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *genderTextField;
@property (weak, nonatomic) IBOutlet UITextField *boroughTextField;

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // handle through manager delegate
    self.SAB = [[C4QStudentArrayBuilder alloc] init];
    [self.SAB initializeMentorArray];
    
    // not needed if use singleton?
    self.C4QMentorArray = self.SAB.C4QMentorArray;
//    for (int i = 0; i < 32; i++) {
//        NSLog(@"Quirk %d: %@", i, [self.SAB.C4QMentorArray[i] quirk]);
//    }
    
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
    QVC.studentName = self.studentName;
    QVC.studentGender = self.studentGender;
    QVC.studentBorough = self.studentBorough;
    QVC.studentImage = self.studentImage;
    QVC.C4QMentorArray = self.C4QMentorArray;
    
}


@end
