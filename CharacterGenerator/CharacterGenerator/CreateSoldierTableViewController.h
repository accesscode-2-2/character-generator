//
//  CreateSoldierTableViewController.h
//  CharacterGenerator
//
//  Created by Z on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SoldierListTableViewController.h"
#import "Soldier.h"
#import "Manager.h"

@interface CreateSoldierTableViewController : UITableViewController<UIPickerViewDataSource, UIPickerViewDelegate>


@property (weak, nonatomic) IBOutlet UIPickerView *teamPicker;
@property (weak, nonatomic) IBOutlet UIImageView *teamImageView;

@property (weak, nonatomic) IBOutlet UIPickerView *primaryWeaponTypePicker;
@property (weak, nonatomic) IBOutlet UIPickerView *primaryWeaponPicker;
@property (weak, nonatomic) IBOutlet UIImageView *primaryWeaponImageView;

@property (weak, nonatomic) IBOutlet UIPickerView *secondaryWeaponTypePicker;
@property (weak, nonatomic) IBOutlet UIPickerView *secondaryWeaponPicker;
@property (weak, nonatomic) IBOutlet UIImageView *secondaryWeaponImageView;

@property (weak, nonatomic) IBOutlet UISegmentedControl *specialGrenadeSegmentedControl;
@property (weak, nonatomic) IBOutlet UIImageView *specialGrenadeImageView;



@end
