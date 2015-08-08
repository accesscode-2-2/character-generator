//
//  CohortDetailViewController.m
//  CharacterGenerator
//
//  Created by Elber Carneiro on 8/8/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CohortDetailViewController.h"
#import "C4QStudentManager.h"
#import "C4QStudent.h"

@interface CohortDetailViewController ()
@property (nonatomic) C4QStudentManager *manager;
@property (weak, nonatomic) IBOutlet UILabel *studentNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *studentImageView;
@property (weak, nonatomic) IBOutlet UILabel *studentBoroughLabel;
@property (weak, nonatomic) IBOutlet UILabel *studentGenderLabel;
@property (weak, nonatomic) IBOutlet UILabel *mentorNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *studentQuirkLabel;
@end

@implementation CohortDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.manager = [C4QStudentManager sharedC4QStudentManager];
    C4QStudent *student = self.manager.C4QStudentArray[self.studentIndex];
    C4QStudent *mentor = self.manager.C4QMentorArray[[student mentorIndex]];
    
    self.studentNameLabel.text = [student name];
    NSString *imageName = [student imageName];
    //NSLog(@"image url: %@", imageName);
    
    // Load image only if the user put in a url
    if (![imageName isEqualToString:@"horse"]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            NSURL *studentImageLink = [NSURL URLWithString:imageName];
            NSData *imageData = [NSData dataWithContentsOfURL:studentImageLink];
            self.studentImageView.image = [UIImage imageWithData:imageData];
            [self.view setNeedsDisplay];
        });
    } else {
        self.studentImageView.image = [UIImage imageNamed:imageName];
        [self.view setNeedsDisplay];
    }
    
    self.studentBoroughLabel.text = [student residence];
    self.studentGenderLabel.text = [student gender];
    self.mentorNameLabel.text = [mentor name];
    self.studentQuirkLabel.text = [mentor quirk];
}

@end
