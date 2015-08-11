//
//  QuestionDetail.h
//  modal
//
//  Created by Fatima Zenine Villanueva on 8/2/15.
//  Copyright (c) 2015 apps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuestionDetail : UITableViewController
@property (strong, nonatomic) IBOutlet UITextField *nameInput;
@property(strong, nonatomic) NSString *name;
@property (nonatomic) NSMutableArray *athleteArray;
@property (nonatomic) NSMutableDictionary *athletes;


@end

