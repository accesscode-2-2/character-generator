//
//  Bender.h
//  CharacterGenerator
//
//  Created by Christian Maldonado on 8/4/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CharacterTableViewController.h"


@interface Bender : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) UIImage *location;
@property (nonatomic) NSString *color;
@property (nonatomic) NSString *texture;
@property (nonatomic) UIImage *animal;
@property (nonatomic) NSDictionary *colorsToNumbers;
@property (nonatomic) NSDictionary *texturesToNumbers;

+ (NSArray *)locations;
+ (NSArray *)textures;
+ (NSArray *)colors;
-(void)colorsAndTexturesToNumbers;
-(void)animalForColor:(NSString *)color AndTexture:(NSString *)texture;
- (UIImage *)imageForName:(NSString *)name ;

@end
