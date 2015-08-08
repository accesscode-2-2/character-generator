//
//  DestinationDetailViewController.h
//  CharacterGenerator
//
//  Created by Justine Gartner on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DestinationDetailViewController : UIViewController

@property (nonatomic) NSDictionary *destinationDetails;

- (void) initializeData;

@end
