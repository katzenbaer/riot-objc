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
#import "BLRiotTeamAPI.h"

#import "NSNumber+BoolString.h"

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
        NSLog(@"=================");
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
        NSLog(@"==============");
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
        NSLog(@"===============");
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
    
#pragma mark - BLRiotTeamAPI
    {
        NSError *error = nil;
        BLRiotTeamAPI *api = [[BLRiotTeamAPI alloc] initWithRegion:@"na"];
        NSArray *teams = [api requestTeamsWithSummonerId:@28540955 Error:&error];
        
        NSLog(@"BLRiotTeamAPI");
        NSLog(@"=============");
        if (error) {
            NSLog(@"Error: %@", error);
        } else {
            for (BLTeamDto *team in teams) {
                NSLog(@"## %@", team.name);
                
                NSArray *props = @[@"createDate", @"lastGameDate", @"lastJoinDate", @"lastJoinedRankedTeamQueueDate", @"modifyDate", @"secondLastJoinDate", @"status", @"tag", @"thirdLastJoinDate", @"timestamp"];
                
                for (NSString *p in props) {
                    NSLog(@"%@: %@  ", p, [team valueForKey:p]);
                }
                
                // matchHistory
                NSUInteger count = 0;
                for (BLMatchHistorySummaryDto *match in team.matchHistory) {
                    count++;
                    NSLog(@"### Match %d vs. %@ (%@)\n \
%d **Kills**, %d **Deaths**, %d **Assists**  \n \
**Game ID**: %ld  \n \
**Game Mode**: %@  \n \
**Map ID**: %d  \n \
**Invalid?**: %@  \n \
**Opposing Team Kills**: %d  ",
                          count, match.opposingTeamName, (match.win.boolValue) ? @"WIN" : @"LOSS",
                          match.kills.integerValue, match.deaths.integerValue, match.assists.integerValue,
                          match.gameId.longValue, match.gameMode, match.mapId.integerValue, match.invalid.boolString,
                          match.opposingTeamKills.integerValue
                          );
                }
                
                // messageOfDay
                NSLog(@"### Message of Day (%d: %ld)\n%@  ", team.messageOfDay.version.integerValue, team.messageOfDay.createDate.longValue, team.messageOfDay.message);
                
                // roster
                NSString *memberString;
                
                NSMutableArray *members = [NSMutableArray array];
                
                [team.roster.memberList enumerateObjectsUsingBlock:^(BLTeamMemberInfoDto *obj, NSUInteger idx, BOOL *stop) {
                    [members addObject:[NSString stringWithFormat:@"#### Player %d\n**Invite Date:** %ld  \n**Join Date:** %ld  \n**Status:** %@  ", idx, obj.inviteDate.longValue, obj.joinDate.longValue, obj.status]];
                }];
                memberString = [members componentsJoinedByString:@"\n"];
                
                NSLog(@"### Roster:\n**Owner**: %ld  \n**Players:**  \n%@", team.roster.ownerId.longValue, memberString);
                
                // teamId
                NSLog(@"### Team ID: %@", team.teamId.fullId);
                
                // teamStatSummary
                NSLog(@"### Team Stat Summary:");
                for (BLTeamStatDetailDto *detail in team.teamStatSummary.teamStatDetails) {
                    NSLog(@"#### Team Stat Detail\n \
**Average Games Played:** %d  \n \
**Wins:** %d  \n \
**Losses:** %d  \n \
**Rating:** %d  \n \
**Max Rating:** %d  \n \
**Seed Rating:** %d  \n \
**Team Stat Type:** %@  \n", detail.averageGamesPlayed.integerValue, detail.wins.integerValue, detail.losses.integerValue, detail.rating.integerValue, detail.maxRating.integerValue, detail.seedRating.integerValue, detail.teamStatType);
                }
            }
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
