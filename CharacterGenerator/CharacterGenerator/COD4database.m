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
                                @"AK-74U",
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
                                     @"Assault Rifles" : assaultRifles,
                                     @"Submachine Guns" : submachineGuns,
                                     @"Light Machine Guns" : lightMachineGuns,
                                     @"Shotguns" : shotguns,
                                     @"Sniper Rifles" : sniperRifles
                                     };
    
    self.primaryWeapons = primaryWeapons;
}

-(void)setupSecondaryWeapons{
    
    NSArray *secondaryWeapons = @[@"M9",
                                  @"USP .45",
                                  @"M1911 .45",
                                  @"Desert Eagle"
                                  ];
    
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
    NSDictionary *perks = @{
                            @"TIER1" : @[@"C4 x2", @"RPG-7 x2", @"Special Grenades x3", @"Bomb Squad", @"Claymore x2", @"Bandolier", @"Frag x3"],
                            
                            @"TIER2" : @[@"Juggernaut", @"Sleight of Hand", @"Sonic Boom", @"Stopping Power", @"Double Tap", @"UAV Jammer", @"Overkill"],
                            
                            @"TIER3" : @[@"Deep Impact", @"Extreme Conditioning", @"Steady Aim", @"Last Stand", @"Martyrdom", @"Iron Lungs", @"Eavesdrop", @"Dead Silence"]
                            };
    self.perks = perks;
}


@end
