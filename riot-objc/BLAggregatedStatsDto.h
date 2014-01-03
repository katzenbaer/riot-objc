//
//  BLAggregatedStatsDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

@interface BLAggregatedStatsDto : BLKeyValueObject

@property (nonatomic, strong) NSNumber *averageAssists;              // Dominion only.
@property (nonatomic, strong) NSNumber *averageChampionsKilled;      // Dominion only.
@property (nonatomic, strong) NSNumber *averageCombatPlayerScore;    // Dominion only.
@property (nonatomic, strong) NSNumber *averageNodeCapture;          // Dominion only.
@property (nonatomic, strong) NSNumber *averageNodeCaptureAssist;    // Dominion only.
@property (nonatomic, strong) NSNumber *averageNodeNeutralize;       // Dominion only.
@property (nonatomic, strong) NSNumber *averageNodeNeutralizeAssist; // Dominion only.
@property (nonatomic, strong) NSNumber *averageNumDeaths;            // Dominion only.
@property (nonatomic, strong) NSNumber *averageObjectivePlayerScore;	// Dominion only.
@property (nonatomic, strong) NSNumber *averageTeamObjective;        // Dominion only.
@property (nonatomic, strong) NSNumber *averageTotalPlayerScore;     // Dominion only.
@property (nonatomic, strong) NSNumber *botGamesPlayed;
@property (nonatomic, strong) NSNumber *killingSpree;
@property (nonatomic, strong) NSNumber *maxAssists;                  // Dominion only.
@property (nonatomic, strong) NSNumber *maxChampionsKilled;
@property (nonatomic, strong) NSNumber *maxCombatPlayerScore;        // Dominion only.
@property (nonatomic, strong) NSNumber *maxLargestCriticalStrike;
@property (nonatomic, strong) NSNumber *maxLargestKillingSpree;
@property (nonatomic, strong) NSNumber *maxNodeCapture;              // Dominion only.
@property (nonatomic, strong) NSNumber *maxNodeCaptureAssist;        // Dominion only.
@property (nonatomic, strong) NSNumber *maxNodeNeutralize;           // Dominion only.
@property (nonatomic, strong) NSNumber *maxNodeNeutralizeAssist;     // Dominion only.
@property (nonatomic, strong) NSNumber *maxObjectivePlayerScore;     // Dominion only.
@property (nonatomic, strong) NSNumber *maxTeamObjective;            // Dominion only.
@property (nonatomic, strong) NSNumber *maxTimePlayed;
@property (nonatomic, strong) NSNumber *maxTimeSpentLiving;
@property (nonatomic, strong) NSNumber *maxTotalPlayerScore;         // Dominion only.
@property (nonatomic, strong) NSNumber *mostChampionKillsPerSession;
@property (nonatomic, strong) NSNumber *mostSpellsCast;
@property (nonatomic, strong) NSNumber *normalGamesPlayed;
@property (nonatomic, strong) NSNumber *rankedPremadeGamesPlayed;
@property (nonatomic, strong) NSNumber *rankedSoloGamesPlayed;
@property (nonatomic, strong) NSNumber *totalAssists;
@property (nonatomic, strong) NSNumber *totalChampionKills;
@property (nonatomic, strong) NSNumber *totalDamageDealt;
@property (nonatomic, strong) NSNumber *totalDamageTaken;
@property (nonatomic, strong) NSNumber *totalDoubleKills;
@property (nonatomic, strong) NSNumber *totalFirstBlood;
@property (nonatomic, strong) NSNumber *totalGoldEarned;
@property (nonatomic, strong) NSNumber *totalHeal;
@property (nonatomic, strong) NSNumber *totalMagicDamageDealt;
@property (nonatomic, strong) NSNumber *totalMinionKills;
@property (nonatomic, strong) NSNumber *totalNeutralMinionsKilled;
@property (nonatomic, strong) NSNumber *totalNodeCapture;            // Dominion only.
@property (nonatomic, strong) NSNumber *totalNodeNeutralize;         // Dominion only.
@property (nonatomic, strong) NSNumber *totalPentaKills;
@property (nonatomic, strong) NSNumber *totalPhysicalDamageDealt;
@property (nonatomic, strong) NSNumber *totalQuadraKills;
@property (nonatomic, strong) NSNumber *totalSessionsLost;
@property (nonatomic, strong) NSNumber *totalSessionsPlayed;
@property (nonatomic, strong) NSNumber *totalSessionsWon;
@property (nonatomic, strong) NSNumber *totalTripleKills;
@property (nonatomic, strong) NSNumber *totalTurretsKilled;
@property (nonatomic, strong) NSNumber *totalUnrealKills;

@end
