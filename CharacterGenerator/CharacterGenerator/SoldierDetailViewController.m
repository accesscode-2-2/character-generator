//
//  SoldierDetailViewController.m
//  CharacterGenerator
//
//  Created by Z on 8/6/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "SoldierDetailViewController.h"

@interface SoldierDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *teamLabel;
@property (weak, nonatomic) IBOutlet UILabel *primaryWeaponLabel;
@property (weak, nonatomic) IBOutlet UILabel *secondaryWeaponLabel;
@property (weak, nonatomic) IBOutlet UILabel *specialGrenadeLabel;
@property (weak, nonatomic) IBOutlet UILabel *perk1Label;
@property (weak, nonatomic) IBOutlet UILabel *perk2Label;
@property (weak, nonatomic) IBOutlet UILabel *perk3Label;

@property (weak, nonatomic) IBOutlet UIImageView *teamImageView;
@property (weak, nonatomic) IBOutlet UIImageView *primaryWeaponImageView;
@property (weak, nonatomic) IBOutlet UIImageView *secondaryWeaponImageView;
@property (weak, nonatomic) IBOutlet UIImageView *specialGrenadeImageView;
@property (weak, nonatomic) IBOutlet UIImageView *perk1ImageView;
@property (weak, nonatomic) IBOutlet UIImageView *perk2ImageView;
@property (weak, nonatomic) IBOutlet UIImageView *perk3ImageView;

@end

@implementation SoldierDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.nameLabel.text = self.soldier.name;
    self.teamLabel.text = self.soldier.team;
    self.primaryWeaponLabel.text = self.soldier.primaryWeapon;
    self.secondaryWeaponLabel.text = self.soldier.secondaryWeapon;
    self.specialGrenadeLabel.text = self.soldier.specialGrenade;
    self.perk1Label.text = self.soldier.perks[0];
    self.perk2Label.text = self.soldier.perks[1];
    self.perk3Label.text = self.soldier.perks[2];
    
    self.teamImageView.image = [UIImage imageNamed:self.soldier.team];
    self.primaryWeaponImageView.image = [UIImage imageNamed:self.soldier.primaryWeapon];
    self.secondaryWeaponImageView.image = [UIImage imageNamed:self.soldier.secondaryWeapon];
    self.specialGrenadeImageView.image = [UIImage imageNamed:self.soldier.specialGrenade];
    self.perk1ImageView.image = [UIImage imageNamed:self.soldier.perks[0]];
    self.perk2ImageView.image = [UIImage imageNamed:self.soldier.perks[1]];
    self.perk3ImageView.image = [UIImage imageNamed:self.soldier.perks[2]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
