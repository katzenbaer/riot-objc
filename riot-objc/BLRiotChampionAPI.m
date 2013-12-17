//
//  BLRiotChampionAPI.m
//  riot-objc
//
//  Created by Ash K on 12/14/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRiotChampionAPI.h"

@implementation BLRiotChampionAPI

- (BLChampionListDto *)requestChampionsWithError:(NSError *__autoreleasing *)error {
    return [self requestChampionsFreeToPlay:NO Error:error];
}

- (BLChampionListDto *)requestChampionsFreeToPlay:(Boolean)freeToPlay Error:(NSError **)error {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:API_CHAMPION, self.region]];
    NSString *param = [@"freeToPlay=" stringByAppendingString:(freeToPlay) ? @"true" : @"false"];
    
    NSObject *obj = [self requestJsonWithUrl:url Params:param Error:error];
    
    if (*error) return nil;
    
    if ([obj isKindOfClass:[NSDictionary class]])
        return [[BLChampionListDto alloc] initWithKVDictionary:(NSDictionary *)obj];
    else
        return nil;
}

@end
