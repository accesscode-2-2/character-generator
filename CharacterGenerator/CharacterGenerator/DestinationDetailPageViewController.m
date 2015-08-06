//
//  DestinationDetailPageViewController.m
//  CharacterGenerator
//
//  Created by Justine Gartner on 8/6/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "DestinationDetailPageViewController.h"

@interface DestinationDetailPageViewController ()

@property (weak, nonatomic) IBOutlet UILabel *destinationNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *destinationDetailsLabel;

@property (weak, nonatomic) IBOutlet UIImageView *backgroundDestinationImageView;

@end

@implementation DestinationDetailPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.destinationNameLabel.text = self.destinationName;
    
    self.destinationDetailsLabel.text = self.destinationDetails;
    
    self.backgroundDestinationImageView.image = [UIImage imageNamed:self.destinationName];
    
}



@end
