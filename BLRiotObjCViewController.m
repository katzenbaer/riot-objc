//
//  BLRiotObjCViewController.m
//  riot-objc
//
//  Created by Ash K on 12/14/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRiotObjCViewController.h"

#import "BLRiotChampionAPI.h"
#import "BLRiotGameAPI.h"
#import "BLRiotLeagueAPI.h"

@interface BLRiotObjCViewController ()

@end

@implementation BLRiotObjCViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    [myLabel setText:@"Hello, there."];
    [myLabel sizeToFit];
    [self.view addSubview:myLabel];
    
#pragma mark - BLRiotChampionAPI
    {
        NSError *error = nil;
        BLRiotChampionAPI *api = [[BLRiotChampionAPI alloc] initWithRegion:@"na"];
        BLChampionListDto *championList = [api requestChampionsFreeToPlay:false Error:&error];
        
        NSLog(@"BLRiotChampionAPI");
        NSLog(@"=======");
        if (error) {
            NSLog(@"Error: %@", error);
        } else {
            NSLog(@"Champions (Count: %d)", championList.champions.count);
            for (BLChampionDto *champion in championList.champions) {
                NSLog(@"\t%d: %@", champion._id.integerValue, champion.name);
            }
        }
    }
    
#pragma mark - BLRiotGameAPI
    {
        NSError *error = nil;
        BLRiotGameAPI *api = [[BLRiotGameAPI alloc] initWithRegion:@"na"];
        BLRecentGamesDto *recentGames = [api requestGamesWithSummonerId:@42715129
                                                                  Error:&error];
        
        NSLog(@"BLRiotGamesAPI");
        NSLog(@"=======");
        if (error) {
            NSLog(@"Error: %@", error);
        } else {
            NSUInteger count = 0;
            NSLog(@"Recent Games (Count: %d)", recentGames.games.count);
            for (BLGameDto *game in recentGames.games) {
                count++;
                NSLog(@"Game #%d:", count);
                NSArray *props = @[@"championId", @"createDateStr", @"gameId", @"gameMode",
                                   @"gameType", @"subType", @"level", @"mapId", @"spell1",
                                   @"spell2", @"teamId"];
                for (NSString *p in props) {
                    NSLog(@"\t%@: %@", p, [game valueForKey:p]);
                }
                
                NSLog(@"\t#### Fellow Players");
                for (BLPlayerDto *p in game.fellowPlayers) {
                    NSLog(@"\tTeam %@: %@ was playing %@", p.teamId, p.summonerId, p.championId);
                }
                
                NSLog(@"\t#### Statistics");
                for (BLRawStatDto *s in game.statistics) {
                    NSLog(@"\t%@: %@", s.name, s.value);
                }
            }
        }
    }
    
#pragma mark - BLRiotLeagueAPI
    {
        NSError *error = nil;
        BLRiotLeagueAPI *api = [[BLRiotLeagueAPI alloc] initWithRegion:@"na"];
        NSDictionary *leagues = [api requestLeaguesWithSummonerId:@28540955
                                                            Error:&error];

        NSLog(@"BLRiotLeagueAPI");
        NSLog(@"=======");
        if (error) {
            NSLog(@"Error: %@", error);
        } else {
            [leagues enumerateKeysAndObjectsUsingBlock:^(NSString *key, BLLeagueDto *league, BOOL *stop) {
                NSLog(@"#### %@", key);
                
                NSArray *props = @[@"name", @"queue", @"tier", @"timestamp"];
                for (NSString *p in props) {
                    NSLog(@"%@: %@", p, [league valueForKey:p]);
                }
                
                NSLog(@"%d Players in %@", league.entries.count, league.name);
                
                for (BLLeagueItemDto *item in league.entries) {
                    NSLog(@"\t'%@' [%d LP] %d Wins", item.playerOrTeamName, item.leaguePoints.integerValue, item.wins.integerValue);
                    
                    if (item.miniSeries != nil) {
                        NSLog(@"\t\t##### MiniSeriesDto");
                        NSArray *props = @[@"progress", @"target", @"wins", @"losses", @"timeLeftToPlayMillis"];
                        for (NSString *p in props) {
                            NSLog(@"\t\t%@: %@", p, [item.miniSeries valueForKey:p]);
                        }
                    }
                }
            }];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
