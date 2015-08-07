//
//  BenderDetailViewController.m
//  CharacterGenerator
//
//  Created by Christian Maldonado on 8/4/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "BenderDetailViewController.h"

@interface BenderDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;

@end

@implementation BenderDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nameLabel.text = self.bender.name;
    self.locationLabel.text = self.bender.location;
    
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
