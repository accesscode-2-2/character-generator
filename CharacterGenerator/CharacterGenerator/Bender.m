//
//  Bender.m
//  CharacterGenerator
//
//  Created by Christian Maldonado on 8/4/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "Bender.h"
#import "BenderManager.h"
#import "CharacterTableViewController.h"

@implementation Bender

-(void)animalForColor:(NSString *)color AndTexture:(NSString *)texture{
    
    
    [self colorsAndTexturesToNumbers];
    
    NSString *c = [self.colorsToNumbers objectForKey:color];
    NSString *t = [self.texturesToNumbers objectForKey:texture];
    
    NSInteger colorValue = [c integerValue];
    NSInteger textureValue = [t integerValue];
    
    NSInteger value = colorValue * textureValue;
    //Scorpion
    if(value == 22 || value == 85){
        self.animal =  [UIImage imageNamed:@"scorpion"];
    }
    //Eagles
    if(value == 26 || value == 39 || value == 51 || value == 65){
         self.animal =  [UIImage imageNamed:@"eagle"];
    }
    //Great White
    if(value == 38||value == 57|| value == 55){
        self.animal =  [UIImage imageNamed:@"great_white"];
    }
    //Praying Mantis
    if(value ==34 || value ==33 || value == 95 || value==77){
        self.animal =  [UIImage imageNamed:@"praying_mantis-1"];
    }
}
-(void)colorsAndTexturesToNumbers{
    if(self.colorsToNumbers == nil){
    
    self.colorsToNumbers = @{
                             @"Red":@"2",
                             @"Green":@"3",
                             @"Blue":@"5",
                             @"Yellow":@"7"
                             };
    self.texturesToNumbers =@{
                              @"Scales":@"11",
                              @"Feathers":@"13",
                              @"Fur":@"17",
                              @"Skin":@"19"
                              };
    }
}



- (UIImage *)imageForName:(NSString *)name {
    NSDictionary *map = @{
      @"Earth Kingdom" : [UIImage imageNamed:@"earth_kingdom"],
      @"Eastern Air Temple" : [UIImage imageNamed:@"Eastern_Air_Temple"],
      @"Water Tribe":[UIImage imageNamed:@"water_tribe"],
      @"Fire Nation":[UIImage imageNamed:@"fire_Nation"]
      };
    
    return map[name];
}

+ (NSArray *)locations {
    return @[@"Water Tribe",@"Earth Kingdom", @"Fire Nation", @"Eastern Air Temple"];
}
+ (NSArray *)textures {
    return @[@"Skin",@"Scales",@"Fur",@"Feathers"];
}
+ (NSArray *)colors {
    return @[@"Red",@"Green",@"Blue",@"Yellow"];
}

@end
