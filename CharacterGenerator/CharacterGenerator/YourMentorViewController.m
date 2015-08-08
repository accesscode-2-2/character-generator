//
//  YourMentorViewController.m
//  CharacterGenerator
//
//  Created by Elber Carneiro on 8/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "YourMentorViewController.h"
#import "C4QStudentManager.h"

@interface YourMentorViewController ()
@property (nonatomic) C4QStudentManager *manager;
@property (weak, nonatomic) IBOutlet UILabel *mentorNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *mentorImageView;
@property (weak, nonatomic) IBOutlet UILabel *mentorLocation;
@property (weak, nonatomic) IBOutlet UILabel *mentorGender;
@property (weak, nonatomic) IBOutlet UILabel *selectedRandomly;


@end

@implementation YourMentorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.manager = [C4QStudentManager sharedC4QStudentManager];
    self.selectedRandomly.hidden = YES;

    
    if (self.manager.nothingSelected == YES) {
        self.selectedRandomly.hidden = NO;
    
    }
    
    [self.navigationItem setHidesBackButton:YES animated:YES];
    
    self.mentorNameLabel.text = [self.manager detailMentorName];
    self.mentorLocation.text = [self.manager detailMentorResidence];
    self.mentorGender.text = [[self.manager detailMentorGender] capitalizedString];

    NSString *imageName = [self.manager.detailMentorName lowercaseString];
    
    self.mentorImageView.image = [UIImage imageNamed:imageName];
    self.mentorImageView.layer.cornerRadius = 10.0;
    self.mentorImageView.layer.masksToBounds = YES;
    self.mentorImageView.layer.borderWidth = 1.5;
    self.mentorImageView.layer.borderColor =  [[UIColor colorWithRed:124/255.0 green:191/255.0 blue:60/255.0 alpha:1.0] CGColor];
    
    
    
    self.navigationItem.title = [self.manager detailMentorName];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (IBAction)restart:(UIButton *)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}


@end
