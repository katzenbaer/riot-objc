//
//  BLRiotTeamAPI.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRiotTeamAPI.h"

@implementation BLRiotTeamAPI

- (NSArray *)requestTeamsWithSummonerId:(NSNumber *)summonerId
                                  Error:(NSError *__autoreleasing *)error
{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:API_TEAM,
                                       self.region, summonerId.longValue]];
    
    NSObject *obj = [self requestJsonWithUrl:url Error:error];
    if (*error) return nil;
    
    NSMutableArray *result = [NSMutableArray array];
    if ([obj isKindOfClass:[NSArray class]]) {
        for (NSDictionary *_team in (NSArray *)obj) {
            [result addObject:[BLTeamDto newWithKVDictionary:_team]];
        }
    }
    return [NSArray arrayWithArray:result];
}

@end
