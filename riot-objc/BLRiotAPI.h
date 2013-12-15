//
//  BLRiotAPI.h
//  riot-objc
//
//  Created by Ash K on 12/14/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import <Foundation/Foundation.h>

#define API_ENDPOINT            @"https://prod.api.pvp.net"
#define API_KEY                 @"?api_key=" @"YOUR-KEY-HERE"

// champion-v1.1 [NA, EUW, EUNE]
#define API_CHAMPION            API_ENDPOINT @"/api/lol/%@/v1.1/champion"
// game-v1.1 [EUW, EUNE, NA]
#define API_GAME                API_ENDPOINT @"/api/lol/%@/v1.1/game/by-summoner/%d/recent"
// league-v2.1 [EUNE, TR, NA, EUW, BR]
#define API_LEAGUE              API_ENDPOINT @"/api/%@/v2.1/league/by-summoner/%d"
// stats-v1.1 [EUW, NA, EUNE]
#define API_STATS               API_ENDPOINT @"/api/lol/%@/v1.1/stats/by-summoner/%d"
#define API_STATS_SUMMARY       API_STATS @"/summary"
#define API_STATS_RANKED        API_STATS @"/ranked"
// summoner-v1.1 [EUNE, NA, EUW]
#define API_SUMMONER            API_ENDPOINT @"/api/lol/%@/v1.1/summoner/%d"
#define API_SUMMONER_BYNAME     API_ENDPOINT @"/api/lol/%@/v1.1/summoner/by-name/%@"
#define API_SUMMONERS           API_ENDPOINT @"/api/lol/%@/v1.1/summoner/%s/name"
#define API_SUMMONER_MASTERY    API_SUMMONER @"/mastery"
#define API_SUMMONER_RUNES      API_SUMMONER @"/runes"
// team-v2.1 [EUNE, EUW, BR, TR, NA]
#define API_TEAM                API_ENDPOINT @"/api/%@/v2.1/team/by-summoner/%d"

@interface BLRiotAPI : NSObject <NSURLConnectionDelegate>

@property (nonatomic, strong) NSString *region;

- (id)initWithRegion:(NSString *)region;

- (NSURL *)endpointUrl;

- (NSData *)requestWithUrl:(NSURL *)url error:(NSError **)error;

@end
