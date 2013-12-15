//
//  BLRiotChampion.h
//  riot-objc
//
//  Created by Ash K on 12/14/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

@interface BLRiotChampion : NSObject

@property (nonatomic, strong) NSNumber *_id;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *freeToPlay;

@property (nonatomic, strong) NSNumber *active;
@property (nonatomic, strong) NSNumber *rankedPlayEnabled;
@property (nonatomic, strong) NSNumber *botEnabled;
@property (nonatomic, strong) NSNumber *botMmEnabled;

@property (nonatomic, strong) NSNumber *attackRank;
@property (nonatomic, strong) NSNumber *defenseRank;
@property (nonatomic, strong) NSNumber *difficultyRank;
@property (nonatomic, strong) NSNumber *magicRank;

- (id)initWithName:(NSString *)name;

@end
