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
@end

@implementation CohortDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.manager = [C4QStudentManager sharedC4QStudentManager];
    
    self.studentNameLabel.text = [self.manager.C4QStudentArray[self.studentIndex] name];
    NSString *imageName = [self.manager.C4QStudentArray[self.studentIndex] imageName];
    //NSLog(@"image url: %@", imageName);
    
    // Load image only if the user put in a url
    if (![imageName isEqualToString:@"horse"]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            NSURL *studentImageLink = [NSURL URLWithString:imageName];
            NSData *imageData = [NSData dataWithContentsOfURL:studentImageLink];
            self.studentImageView.image = [UIImage imageWithData:imageData];
            [self.view setNeedsDisplay];
        });
    }
    self.studentImageView.layer.cornerRadius = 10.0;
    self.studentImageView.layer.masksToBounds = YES;
    self.studentImageView.layer.borderWidth = 1.5;
    self.studentImageView.layer.borderColor =  [[UIColor colorWithRed:124/255.0 green:191/255.0 blue:60/255.0 alpha:1.0] CGColor];
    
}

@end
