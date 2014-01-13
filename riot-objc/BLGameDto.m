//
//  BLGameDto.m
//  riot-objc
//
//  Created by Ash K on 12/16/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLGameDto.h"

@implementation BLGameDto

- (id)initWithKVDictionary:(NSDictionary *)dict {
    if (self = [super initWithKVDictionary:dict]) {
        NSMutableArray *fellowPlayers = [NSMutableArray array];
        for (NSDictionary *player in dict[@"fellowPlayers"]) {
            [fellowPlayers addObject:[BLPlayerDto newWithKVDictionary:player]];
        }
        
        self.fellowPlayers = [NSArray arrayWithArray:fellowPlayers];
        self.stats = [BLRawStatsDto newWithKVDictionary:dict[@"stats"]];
    }
    return self;
}

+ (NSString *)mapNameFromId:(NSNumber *)mapId {
    static NSArray *mapNames;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mapNames = @[@"Summoner's Rift",        // Summer Variant
                     @"Summoner's Rift",        // Autumn Variant
                     @"The Proving Grounds",    // Tutorial Map
                     @"Twisted Treeline",       // Original Version
                     @"The Crystal Scar",       // Dominion Map
                     @"Twisted Treeline",       // Current Version
                     @"Howling Abyss"           // ARAM Map
                     ];
    });
    if (mapId && mapId >= 0 && mapId.integerValue < mapNames.count)
        return mapNames[mapId.integerValue];
    else
        return nil;
}

- (NSString *)mapName {
    return [[self class] mapNameFromId:self.mapId];
}

+ (NSArray *)gameModes {
    static NSArray *gameModes;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        gameModes = @[@"CLASSIC"            // All Summoner's Rift and Twisted Treeline games
                      @"ODIN"               // All Dominion/Crystal Scar games
                      @"ARAM"               // All ARAM/Howling Abyss games
                      @"TUTORIAL"           // All Tutorial games
                      ];
    });
    return gameModes;
}

+ (NSArray *)gameTypes {
    static NSArray *gameTypes;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        gameTypes = @[@"CUSTOM_GAME"        // All custom games
                      @"MATCHED_GAME"       // All queues against other summoners
                      @"CO_OP_VS_AI_GAME"   // All queues against bots
                      @"TUTORIAL_GAME"      // All tutorial games
                      ];
    });
    return gameTypes;
}

@end
