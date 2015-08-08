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

@property (weak, nonatomic) IBOutlet UIImageView *blownUpImageView;

@property (weak, nonatomic) IBOutlet UILabel *color;
@property (weak, nonatomic) IBOutlet UILabel *texture;
@property (weak, nonatomic) IBOutlet UIImageView *animalImageView;
@property (weak, nonatomic) IBOutlet UIImageView *locationImageView;

@end

@implementation BenderDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nameLabel.text = self.bender.name;
    self.locationImageView.image = self.bender.location;
    self.color.text = self.bender.color;
    self.texture.text = self.bender.texture;
    self.blownUpImageView.image =self.bender.location;
    self.animalImageView.image = self.bender.animal;
    
  //  self.blownUpImageView.image = [UIImage imageNamed:[self.bender imageForName:self.bender.location]];
    
    UIVisualEffect *blurEffect;
    blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    
    UIVisualEffectView *visualEffectView;
    visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    
//    NSLog(@"frame: %@", NSStringFromCGRect(visualEffectView.frame));
    visualEffectView.frame = self.view.frame;
    [self.blownUpImageView addSubview:visualEffectView];

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
