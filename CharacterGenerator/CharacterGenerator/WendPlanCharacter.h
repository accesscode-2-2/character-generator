//
//  wendPlanCharacter.h
//  CharacterGenerator
//
//  Created by Ayuna Vogel on 8/7/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface WendPlanCharacter : NSObject

@property (nonatomic) NSString *planString;
@property (nonatomic) NSString *celebString;
@property (nonatomic) NSString *foodString;
@property (nonatomic) NSString *alcoholString;
@property (nonatomic) NSInteger number;
@property (nonatomic) NSString *titleString;
@property (nonatomic, strong) UIImage *plansImage;

@end
