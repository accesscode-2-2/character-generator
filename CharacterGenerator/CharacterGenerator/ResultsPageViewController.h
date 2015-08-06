//
//  ResultsPageViewController.h
//  CharacterGenerator
//
//  Created by Jamaal Sedayao on 8/3/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "weekendPlans.h"
#import "CreatePageTableViewController.h"

@interface ResultsPageViewController : UIViewController

@property (nonatomic) NSString *planOne;
@property (nonatomic) NSString *planTwo;
@property (nonatomic) NSString *planThree;
@property (nonatomic) NSString *planFour;

@property (weak, nonatomic) IBOutlet UILabel *labelPlans;
@property (weak, nonatomic) IBOutlet UILabel *labelCeleb;
@property (weak, nonatomic) IBOutlet UILabel *labelFood;
<<<<<<< HEAD
@property (weak, nonatomic) IBOutlet UILabel *labelAlcohol;
=======
@property (nonatomic) weekendPlans *model;//not sure yet if it's needed here, may be deleted later but not now :)
@property (nonatomic) NSMutableArray *titles;//not sure yet if it's needed here, may be deleted later but not now :)
>>>>>>> hooked titles from createPageVC to the MainTableVC. The title for the created weekend plan is now able to store the data for itself and display itself in the MainTableVC (launch VC). So happy :)

//all this below is probably not needed, but I'll leave it here for now - Ayuna
//@property (weak, nonatomic) IBOutlet UIButton *angryEmojiButton;
//@property (weak, nonatomic) IBOutlet UIButton *crazyEmojiButton;
//@property (weak, nonatomic) IBOutlet UIButton *kissEmojiButton;
//@property (weak, nonatomic) IBOutlet UIButton *poopEmojiButton;
//@property (weak, nonatomic) IBOutlet UIButton *tearsEmojiButton;
//@property (weak, nonatomic) IBOutlet UIButton *fireEmojiButton;
//

@property (weak, nonatomic) IBOutlet UIButton *HomeButton;

@end
