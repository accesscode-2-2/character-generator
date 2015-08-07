//
//  COD4database.m
//  CharacterGenerator
//
//  Created by Z on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "COD4database.h"

@implementation COD4database

-(void)setup{
    [self setupPrimaryWeapons];
    [self setupSecondaryWeapons];
    [self setupSpecialGrenades];
    [self setupPerks];
    [self setupTeam];
}

-(void)setupPrimaryWeapons{
    
    NSArray *assaultRifles = @[@"M16A4",
                               @"M4A1",
                               @"AK-47",
                               @"G3",
                               @"G36C",
                               @"M14",
                               @"MP44"
                               ];
    
    NSArray *submachineGuns = @[@"MP5",
                                @"Skorpion",
                                @"Mini-Uzi",
                                @"AK-74u",
                                @"P90",
                                @"MP44"
                                ];
    
    NSArray *lightMachineGuns = @[@"M249 SAW",
                                  @"RPD",
                                  @"M60E4"];
    
    NSArray *shotguns = @[@"W1200",
                          @"M1014"];
    
    NSArray *sniperRifles = @[@"M40A3",
                              @"M21",
                              @"Dragunov",
                              @"R700",
                              @"Barrett .50 Cal"
                              ];
    
    NSDictionary *primaryWeapons = @{
                                     @"Assault Rifle" : assaultRifles,
                                     @"Submachine Gun" : submachineGuns,
                                     @"Light Machine Gun" : lightMachineGuns,
                                     @"Shotgun" : shotguns,
                                     @"Sniper Rifle" : sniperRifles
                                     };
    
    self.primaryWeapons = primaryWeapons;
}

-(void)setupSecondaryWeapons{
    
    NSArray *handguns = @[@"M9",
                          @"USP .45",
                          @"M1911 .45",
                          @"Desert Eagle"
                          ];
    
    NSArray *rocketLaunchers = @[@"RPG-7",
                                 @"FIM-92 Stinger",
                                 @"FGM-148 Javelin",
                                 @"AT4"
                                 ];
    
    NSDictionary *secondaryWeapons = @{
                                       @"Handgun" : handguns,
                                       @"Rocket Launcher" : rocketLaunchers
                                       };
    
    self.secondaryWeapons = secondaryWeapons;
}

-(void)setupSpecialGrenades{
    NSArray *specialGrenades = @[@"Flashbang",
                                 @"Stun",
                                 @"Smoke"
                                ];
    
    self.specialGrenades = specialGrenades;
}

-(void)setupPerks{
    NSArray *perks = @[
                        @[@"C4 x2", @"RPG-7 x2", @"Special Grenades x3", @"Bomb Squad", @"Claymore x2", @"Bandolier", @"Frag x3"],
                            
                        @[@"Juggernaut", @"Sleight of Hand", @"Sonic Boom", @"Stopping Power", @"Double Tap", @"UAV Jammer", @"Overkill"],
                            
                        @[@"Deep Impact", @"Extreme Conditioning", @"Steady Aim", @"Last Stand", @"Martyrdom", @"Iron Lungs", @"Eavesdrop", @"Dead Silence"]
                            ];
    self.perks = perks;
}

-(void)setupTeam{
    
    NSDictionary *team = @{
                           @"United States Marine Corps" : @"United States",
                           @"Opposing Forces" : @"Kuwait, Saudi Arabia, Iraq, Iran",
                           @"Special Air Service" : @"United Kingdom",
                           @"Special Purpose Forces" : @"Russia"
                           };
    
    self.team = team;
    
}

-(NSArray*)allPrimaryWeapons{
    NSMutableArray *weps = [[NSMutableArray alloc] init];
    
    [self setup];
    for (NSString *weaponType in self.primaryWeapons) {
        NSArray *allWepsForKey = [self.primaryWeapons objectForKey:weaponType];
        for (int i = 0; i<allWepsForKey.count; i++) {
            [weps addObject:[allWepsForKey objectAtIndex:i]];
        }
    }
    NSArray *wepsImmutable = [NSArray arrayWithArray:weps];
    return wepsImmutable;
}

-(NSArray*)primaryWeaponsForType:(NSString*)type{
    return (NSArray *)[self.primaryWeapons objectForKey:type];
}

@end
