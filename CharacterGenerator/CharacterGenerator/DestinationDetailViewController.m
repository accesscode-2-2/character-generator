//
//  DestinationDetailViewController.m
//  CharacterGenerator
//
//  Created by Justine Gartner on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "DestinationDetailViewController.h"

@interface DestinationDetailViewController ()

@property (nonatomic) DestinationDetailViewController

@end

@implementation DestinationDetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Your Final Destination";
    self.navigationItem.title = @"Destinations";
}

- (void) initializeData {
    [self initializeDetailDictionary];
}

// open this to see the destination blurbs
- (void) initializeDetailDictionary {
    
    NSArray *aspen = @[
                       @"Founded as a mining camp during the Colorado Silver Boom and later named Aspen because of the abundance of aspen treesin the area, the city boomed during the 1880s, its first decade of existence. In the late 20th century, the city became a popular retreat for celebrities."
                       ];
    
    NSArray *bali = @[
                      @"An Indonesian island known for its forested volcanic mountains, iconic rice paddies, beaches and coral reefs. The island is home to religious sites such as cliffside Uluwatu Temple.The island is also known for its yoga and meditation retreats."
                      ];
    
    NSArray *foxGlacier = @[
                            @"The Fox Glacier is a 13 km long glacier located in Westland Tai Poutini National Park on the West Coast of New Zealand's South Island. It was named in 1872 after a visit by the then Prime Minister of New Zealand, Sir William Fox."
                            ];
    
    NSArray *hokkaido = @[
                          @"The northernmost of Japan’s main islands, is known for volcanoes, natural hot springs and ski resorts. Rusutsu, Furano and Niseko are popular ski destinations, with Niseko also offering fishing, biking and rafting in the summer."
                          ];
    
    NSArray *monaco = @[
                        @"An independent microstate on France’s Mediterranean coastline known for its glitzy casinos,yacht-lined harbor and prestigious Grand Prix motor race, which runs through Monaco’s streets once a year. Monte Carlo, its major district, has an elegant belle epoque casino complex, ornate opera house and luxe hotels, boutiques, nightclubs and French and Italian restaurants."
                        ];
    
    
    self.destinationDetails = @{
                                @"Aspen" : aspen,
                                @"Bali" : bali,
                                @"Fox Glacier" : foxGlacier,
                                @"Hokkaido" : hokkaido,
                                @"Monaco" : monaco
                                };
    
    
    
}

@end
