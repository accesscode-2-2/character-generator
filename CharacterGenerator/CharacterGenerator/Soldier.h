//
//  Soldier.h
//  CharacterGenerator
//
//  Created by Z on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Soldier : NSObject

@property (nonatomic) NSString *name;

@property (nonatomic) NSString *primaryWeapon;
@property (nonatomic) NSString *secondaryWeapon;
@property (nonatomic) NSString *specialGrenade;
@property (nonatomic) NSString *team;

@property (nonatomic) NSArray *perks;

@end
