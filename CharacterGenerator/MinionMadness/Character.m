//
//  Character.m
//  MinionMadness
//
//  Created by Jovanny Espinal on 8/5/15.
//  Copyright (c) 2015 Jovanny Espinal. All rights reserved.
//

#import "Character.h"

@implementation Character


-(void)generateImage{
    if ([self.eyes isEqualToString:@"One"] && [self.hair isEqualToString:@"Flat, Center-Parted"]){
        self.minionImage = [UIImage imageNamed:@"Stuart"];
        
    }
    
    if ([self.eyes isEqualToString:@"One"] && [self.hair isEqualToString:@"Spiky"]){
        self.minionImage = [UIImage imageNamed:@"Stuart"];
        
    }
    
    if ([self.eyes isEqualToString:@"One"] && [self.hair isEqualToString:@"Standing Straight Up"]){
                self.minionImage = [UIImage imageNamed:@"Phil"];
    }
    
    if ([self.eyes isEqualToString:@"One"] && [self.hair isEqualToString:@"A Tiny Clump of Hair"]){
                self.minionImage = [UIImage imageNamed:@"Phil"];
    }
    
    if ([self.eyes isEqualToString:@"Two"] && [self.hair isEqualToString:@"Flat, Center-Parted"]){
                self.minionImage = [UIImage imageNamed:@"Dave"];
    }
    
    if ([self.eyes isEqualToString:@"Two"] && [self.hair isEqualToString:@"Spiky"]){
                self.minionImage = [UIImage imageNamed:@"Jerry"];
    }
    
    if ([self.eyes isEqualToString:@"Two"] && [self.hair isEqualToString:@"A Tiny Clump of Hair"]){
                self.minionImage = [UIImage imageNamed:@"Tim"];
    }
    
    if ([self.eyes isEqualToString:@"Two"] && [self.hair isEqualToString:@"Standing Straight Up"]){
                self.minionImage = [UIImage imageNamed:@"Jorge"];
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
@end