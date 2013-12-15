//
//  BLRiotChampionAPI.m
//  riot-objc
//
//  Created by Ash K on 12/14/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRiotChampionAPI.h"
#import "BLRiotChampion.h"

@implementation BLRiotChampionAPI

- (NSArray *)allChampions {
    NSString *championString = [NSString stringWithFormat:API_CHAMPION, self.region];
    
    NSData *data = [self requestWithUrl:[NSURL URLWithString:championString]];
    NSError *error = nil;
    NSObject *obj = [NSJSONSerialization JSONObjectWithData:data
                                                    options:NSJSONReadingAllowFragments
                                                      error:&error];
    
    if (error) {
        NSLog(@"Error: %@", error);
        return nil;
    }
    
    NSMutableArray *result = [NSMutableArray array];
    if ([obj isKindOfClass:[NSDictionary class]]) {
        NSArray *champions = [(NSDictionary *)obj valueForKey:@"champions"];
        for (NSDictionary *champion in champions) {
            BLRiotChampion *c = [[BLRiotChampion alloc] initWithName:champion[@"name"]];
            NSArray *props = @[@"active", @"attackRank", @"botEnabled", @"botMmEnabled", @"defenseRank", @"difficultyRank", @"freeToPlay", @"magicRank", @"rankedPlayEnabled"];
            c._id = champion[@"id"];
            
            for (NSString *prop in props) {
                [c setValue:champion[prop] forKey:prop];
            }
            
            [result addObject:c];
        }
    }
    return [NSArray arrayWithArray:result];
}

@end
