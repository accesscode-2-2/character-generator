//
//  newCharacterTableViewController.h
//  CharacterGenerator
//
//  Created by Henna on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "characterModel.h"
#import "Character.h"

@interface newCharacterTableViewController : UITableViewController <UIPickerViewDelegate, UIPickerViewDataSource>


// Data Picker 
@property (weak, nonatomic) IBOutlet UIPickerView *yesOrNoPicker;
- (IBAction)buttonPressed:(id)sender;

@end
