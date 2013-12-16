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
    NSString *championString = [NSString stringWithFormat:API_CHAMPION,
                                self.region];
    
    NSError *_error, *httpError = nil;
    
    NSString *f2p_param = [@"freeToPlay=" stringByAppendingString:(freeToPlay) ? @"true" : @"false"];
    
    NSData *data = [self requestWithUrl:[NSURL URLWithString:championString] Params:@[f2p_param] error:&httpError];
    
    if (httpError) {
        //NSLog(@"HTTP Error: %@", httpError);
        *error = [NSError errorWithDomain:RESPONSE_ERROR code:httpError.code userInfo:httpError.userInfo];
        return nil;
    }
    
    NSObject *obj = [NSJSONSerialization JSONObjectWithData:data
                                                    options:NSJSONReadingAllowFragments
                                                      error:&_error];
    
    if (_error) {
        //NSLog(@"JSON Error: %@", _error);
        *error = [NSError errorWithDomain:PARSE_ERROR code:_error.code userInfo:_error.userInfo];
        return nil;
    }
    
    NSMutableArray *result = [NSMutableArray array];
    if ([obj isKindOfClass:[NSDictionary class]]) {
        NSArray *champions = [(NSDictionary *)obj valueForKey:@"champions"];
        for (NSDictionary *champion in champions) {
            BLChampionDto *c = [[BLChampionDto alloc]
                                initWithName:champion[@"name"]];
            NSArray *props = @[@"active", @"attackRank", @"botEnabled",
                               @"botMmEnabled", @"defenseRank",
                               @"difficultyRank", @"freeToPlay", @"magicRank",
                               @"rankedPlayEnabled"];
            c._id = champion[@"id"];
            
            for (NSString *prop in props) {
                [c setValue:champion[prop] forKey:prop];
            }
            
            [result addObject:c];
        }
    }
    return [[BLChampionListDto alloc] initWithChampions:result];
}

@end
