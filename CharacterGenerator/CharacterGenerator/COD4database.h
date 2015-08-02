//
//  COD4database.h
//  CharacterGenerator
//
//  Created by Z on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface COD4database : NSObject

@property (nonatomic) NSDictionary *primaryWeapons;
@property (nonatomic) NSArray *secondaryWeapons;
@property (nonatomic) NSArray *specialGrenades;
@property (nonatomic) NSDictionary *perks;


@end
