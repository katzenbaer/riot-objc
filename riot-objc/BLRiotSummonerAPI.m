//
//  BLRiotSummonerAPI.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRiotSummonerAPI.h"

@implementation BLRiotSummonerAPI

- (BLMasteryPagesDto *)requestSummonerMasteriesWithSummonerId:(NSNumber *)summonerId Error:(NSError *__autoreleasing *)error {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:API_SUMMONER_MASTERY, self.region, summonerId.longValue]];
    
    NSObject *obj = [self requestJsonWithUrl:url Error:error];
    
    if (*error) return nil;
    
    if ([obj isKindOfClass:[NSDictionary class]])
        return [BLMasteryPagesDto newWithKVDictionary:(NSDictionary *)obj];
    else
        return nil;
}

- (BLRunePagesDto *)requestSummonerRunesWithSummonerId:(NSNumber *)summonerId Error:(NSError *__autoreleasing *)error {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:API_SUMMONER_RUNES, self.region, summonerId.longValue]];
    
    NSObject *obj = [self requestJsonWithUrl:url Error:error];
    
    if (*error) return nil;
    
    if ([obj isKindOfClass:[NSDictionary class]])
        return [BLRunePagesDto newWithKVDictionary:(NSDictionary *)obj];
    else
        return nil;
}

- (BLSummonerDto *)requestSummonerWithSummonerName:(NSString *)summonerName Error:(NSError *__autoreleasing *)error {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:API_SUMMONER_BYNAME, self.region, [summonerName stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]]];
    
    NSObject *obj = [self requestJsonWithUrl:url Error:error];
    
    if (*error) return nil;
    
    if ([obj isKindOfClass:[NSDictionary class]])
        return [BLSummonerDto newWithKVDictionary:(NSDictionary *)obj];
    else
        return nil;
}

- (BLSummonerDto *)requestSummonerWithSummonerId:(NSNumber *)summonerId Error:(NSError *__autoreleasing *)error {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:API_SUMMONER, self.region, summonerId.longValue]];
    
    NSObject *obj = [self requestJsonWithUrl:url Error:error];
    
    if (*error) return nil;
    
    if ([obj isKindOfClass:[NSDictionary class]])
        return [BLSummonerDto newWithKVDictionary:(NSDictionary *)obj];
    else
        return nil;
}

- (BLSummonerNameListDto *)requestSummonerNamesWithSummonerIds:(NSArray *)summonerIds Error:(NSError *__autoreleasing *)error {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:API_SUMMONERS, self.region, [summonerIds componentsJoinedByString:@","]]];
    
    NSObject *obj = [self requestJsonWithUrl:url Error:error];
    
    if (*error) return nil;
    
    if ([obj isKindOfClass:[NSDictionary class]])
        return [BLSummonerNameListDto newWithKVDictionary:(NSDictionary *)obj];
    else
        return nil;
}

@end
