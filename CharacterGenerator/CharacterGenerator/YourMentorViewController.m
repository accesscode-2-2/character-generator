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

@end

@implementation YourMentorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.manager = [C4QStudentManager sharedC4QStudentManager];
    [self.navigationItem setHidesBackButton:YES animated:YES];
    
    self.mentorNameLabel.text = [self.manager detailMentorName];
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)restart:(UIButton *)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
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
