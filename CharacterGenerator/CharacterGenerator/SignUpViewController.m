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
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *genderTextField;
@property (weak, nonatomic) IBOutlet UITextField *boroughTextField;

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    C4QStudentArrayBuilder *SAB = [[C4QStudentArrayBuilder alloc] init];
    [SAB initializeMentorArray];
    self.C4QMentorArray = SAB.C4QMentorArray;
    
    [SAB initializeStudentArray];
    self.C4QStudentArray = SAB.C4QStudentArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
