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
@property (nonatomic) NSDictionary *secondaryWeapons;
@property (nonatomic) NSArray *specialGrenades;
@property (nonatomic) NSArray *perks;
@property (nonatomic) NSDictionary *team;

-(void)setup;
-(NSArray*)allPrimaryWeapons;
-(NSArray*)primaryWeaponsForType:(NSString*)type;



@end
