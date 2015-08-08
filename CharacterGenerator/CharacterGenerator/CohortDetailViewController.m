//
//  CohortDetailViewController.m
//  CharacterGenerator
//
//  Created by Elber Carneiro on 8/8/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "CohortDetailViewController.h"
#import "C4QStudentManager.h"

@interface CohortDetailViewController ()
@property (nonatomic) C4QStudentManager *manager;
@property (weak, nonatomic) IBOutlet UILabel *studentNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *studentImageView;
@end

@implementation CohortDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.manager = [C4QStudentManager sharedC4QStudentManager];
    
    NSLog(@"detail index: %lu", self.studentIndex);
    self.studentNameLabel.text = [self.manager.C4QStudentArray[self.studentIndex] name];
    
}

@end
