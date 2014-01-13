//
//  BLRawStatsDto.h
//  riot-objc
//
//  Created by Ash K on 12/16/13.
//  Modified by Ash K on 01/13/14.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BLKeyValueObject.h"

@interface BLRawStatsDto : BLKeyValueObject

@property (nonatomic, strong) NSNumber *assists;
@property (nonatomic, strong) NSNumber *barracksKilled;
@property (nonatomic, strong) NSNumber *championsKilled;
@property (nonatomic, strong) NSNumber *combatPlayerScore;
@property (nonatomic, strong) NSNumber *consumablesPurchased;
@property (nonatomic, strong) NSNumber *damageDealtPlayer;
@property (nonatomic, strong) NSNumber *doubleKills;
@property (nonatomic, strong) NSNumber *firstBlood;
@property (nonatomic, strong) NSNumber *gold;
@property (nonatomic, strong) NSNumber *goldEarned;
@property (nonatomic, strong) NSNumber *goldSpent;
@property (nonatomic, strong) NSNumber *item0;
@property (nonatomic, strong) NSNumber *item1;
@property (nonatomic, strong) NSNumber *item2;
@property (nonatomic, strong) NSNumber *item3;
@property (nonatomic, strong) NSNumber *item4;
@property (nonatomic, strong) NSNumber *item5;
@property (nonatomic, strong) NSNumber *item6;
@property (nonatomic, strong) NSNumber *itemsPurchased;
@property (nonatomic, strong) NSNumber *killingSprees;
@property (nonatomic, strong) NSNumber *largestCriticalStrike;
@property (nonatomic, strong) NSNumber *largestKillingSpree;
@property (nonatomic, strong) NSNumber *largestMultiKill;
@property (nonatomic, strong) NSNumber *legendaryItemsCreated; // Number of tier 3 items built.
@property (nonatomic, strong) NSNumber *level;
@property (nonatomic, strong) NSNumber *magicDamageDealtPlayer;
@property (nonatomic, strong) NSNumber *magicDamageDealtToChampions;
@property (nonatomic, strong) NSNumber *magicDamageTaken;
@property (nonatomic, strong) NSNumber *minionsDenied;
@property (nonatomic, strong) NSNumber *minionsKilled;
@property (nonatomic, strong) NSNumber *neutralMinionsKilled;
@property (nonatomic, strong) NSNumber *neutralMinionsKilledEnemyJungle;
@property (nonatomic, strong) NSNumber *neutralMinionsKilledYourJungle;
@property (nonatomic, strong) NSNumber *nexusKilled; // Flag specifying if the summoner got the killing blow on the nexus.
@property (nonatomic, strong) NSNumber *nodeCapture;
@property (nonatomic, strong) NSNumber *nodeCaptureAssist;
@property (nonatomic, strong) NSNumber *nodeNeutralize;
@property (nonatomic, strong) NSNumber *nodeNeutralizeAssist;
@property (nonatomic, strong) NSNumber *numDeaths;
@property (nonatomic, strong) NSNumber *numItemsBought;
@property (nonatomic, strong) NSNumber *objectivePlayerScore;
@property (nonatomic, strong) NSNumber *pentaKills;
@property (nonatomic, strong) NSNumber *physicalDamageDealtPlayer;
@property (nonatomic, strong) NSNumber *physicalDamageDealtToChampions;
@property (nonatomic, strong) NSNumber *physicalDamageTaken;
@property (nonatomic, strong) NSNumber *quadraKills;
@property (nonatomic, strong) NSNumber *sightWardsBought;
@property (nonatomic, strong) NSNumber *spell1Cast; // Number of times first champion spell was cast.
@property (nonatomic, strong) NSNumber *spell2Cast; // Number of times second champion spell was cast.
@property (nonatomic, strong) NSNumber *spell3Cast; // Number of times third champion spell was cast.
@property (nonatomic, strong) NSNumber *spell4Cast; // Number of times fourth champion spell was cast.
@property (nonatomic, strong) NSNumber *summonSpell1Cast;
@property (nonatomic, strong) NSNumber *summonSpell2Cast;
@property (nonatomic, strong) NSNumber *superMonsterKilled;
@property (nonatomic, strong) NSNumber *team;
@property (nonatomic, strong) NSNumber *teamObjective;
@property (nonatomic, strong) NSNumber *timePlayed;
@property (nonatomic, strong) NSNumber *totalDamageDealt;
@property (nonatomic, strong) NSNumber *totalDamageDealtToChampions;
@property (nonatomic, strong) NSNumber *totalDamageTaken;
@property (nonatomic, strong) NSNumber *totalHeal;
@property (nonatomic, strong) NSNumber *totalPlayerScore;
@property (nonatomic, strong) NSNumber *totalScoreRank;
@property (nonatomic, strong) NSNumber *totalTimeCrowdControlDealt;
@property (nonatomic, strong) NSNumber *totalUnitsHealed;
@property (nonatomic, strong) NSNumber *tripleKills;
@property (nonatomic, strong) NSNumber *trueDamageDealtPlayer;
@property (nonatomic, strong) NSNumber *trueDamageDealtToChampions;
@property (nonatomic, strong) NSNumber *trueDamageTaken;
@property (nonatomic, strong) NSNumber *turretsKilled;
@property (nonatomic, strong) NSNumber *unrealKills;
@property (nonatomic, strong) NSNumber *victoryPointTotal;
@property (nonatomic, strong) NSNumber *visionWardsBought;
@property (nonatomic, strong) NSNumber *wardKilled;
@property (nonatomic, strong) NSNumber *wardPlaced;
@property (nonatomic, strong) NSNumber *win; // Flag specifying whether or not this game was won.

@end
