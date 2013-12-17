//
//  BLRiotGameAPI.m
//  riot-objc
//
//  Created by Ash K on 12/16/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRiotGameAPI.h"

@implementation BLRiotGameAPI

- (BLRecentGamesDto *)requestGamesWithSummonerId:(NSNumber *)summonerId
                                           Error:(NSError *__autoreleasing *)error {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:API_GAME,
                                       self.region, summonerId.longValue]];
    
    NSObject *obj = [self requestJsonWithUrl:url Error:error];
    if (*error) return nil;
    
    NSMutableArray *result = [NSMutableArray array];
    if ([obj isKindOfClass:[NSDictionary class]]) {
        NSArray *games = [(NSDictionary *)obj valueForKey:@"games"];
        for (NSDictionary *game in games) {
            [result addObject:[BLGameDto newWithKVDictionary:game]];
        }
    }
    return [BLRecentGamesDto newWithKVDictionary:@{@"games" : [NSArray arrayWithArray:result]}];
}

@end
