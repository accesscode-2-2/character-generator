//
//  MinionDetailViewController.m
//  MinionMadness
//
//  Created by Jovanny Espinal on 8/5/15.
//  Copyright (c) 2015 Jovanny Espinal. All rights reserved.
//

#import "MinionDetailViewController.h"
#import <UIKit/UIKit.h>

@interface MinionDetailViewController()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *eyesLabel;
@property (weak, nonatomic) IBOutlet UILabel *hairLabel;
@property (weak, nonatomic) IBOutlet UILabel *bodyTypeLabel;
@property (weak, nonatomic) IBOutlet UILabel *heightLabel;



@end

@implementation MinionDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameLabel.text = self.minionName;
    self.imageView.image = self.minionImage;
    
    self.eyesLabel.text = self.numberOfEyes;
    self.hairLabel.text = self.hairType;
    self.bodyTypeLabel.text = self.bodyType;
    self.heightLabel.text = [NSString stringWithFormat:@"%d", self.height];
    
    self.navigationItem.title = @"Minion";
}

@end
