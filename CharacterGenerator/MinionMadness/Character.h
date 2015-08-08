//
//  Character.h
//  MinionMadness
//
//  Created by Jovanny Espinal on 8/5/15.
//  Copyright (c) 2015 Jovanny Espinal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Character : NSObject

@property (nonatomic) NSString *hair;
@property (nonatomic) NSString *eyes;
@property (nonatomic) NSString *body;
@property (nonatomic) int height;
@property (nonatomic) NSString *name;
@property (nonatomic) UIImage *minionImage;

-(void)generateImage;

@end
