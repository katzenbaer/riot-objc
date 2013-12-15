//
//  BLRiotObjCViewController.m
//  riot-objc
//
//  Created by Ash K on 12/14/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRiotObjCViewController.h"

#import "BLRiotChampionAPI.h"
#import "BLChampionListDto.h"

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
    
    NSError *error = nil;
    
    BLRiotChampionAPI *api = [[BLRiotChampionAPI alloc] initWithRegion:@"na"];
    BLChampionListDto *champions = [api requestChampionsWithError:&error];
    
    if (error) {
        NSLog(@"Error: %@", error);
    } else {
        NSLog(@"Champions");
        for (BLChampionDto *champion in champions.champions) {
            NSLog(@"\t%d: %@", champion._id.integerValue, champion.name);
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
