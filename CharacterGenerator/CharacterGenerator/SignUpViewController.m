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

@interface SignUpViewController ()

@property (nonatomic) NSMutableArray *C4QStudentArray;
@property (nonatomic) NSArray *C4QMentorArray;
@property (nonatomic) C4QStudentArrayBuilder *SAB;
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
    C4QStudent *student = [[C4QStudent alloc] init];
    //student.name =
    [self.C4QStudentArray addObject:student];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
