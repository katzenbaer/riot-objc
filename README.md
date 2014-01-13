riot-objc
=========
Objective-C wrapper for the Riot Games API beta that abstracts both endpoint requests and responses.  

**Compatibility:**  
 * champion-v1.1 [NA, EUW, EUNE]
 * game-v1.3 [NA, EUNE, EUW]
 * league-v2.2 [NA, EUNE, BR, TR, EUW]
 * stats-v1.2 [EUW, NA, EUNE]
 * summoner-v1.2 [EUNE, EUW, NA]
 * team-v2.2 [TR, NA, EUNE, EUW, BR]

Getting Started
---------------
The first thing that you'll want to do is open `BLRiotAPI.h` and locate, near the top, `#define API_KEY`.  
Replace `YOUR-KEY-HERE` with your developer key, obtainable for free from Riot.  

Usage
-----
Live code examples can be seen in `BLRiotObjCViewController.m`.

### Endpoint Classes
All requests in riot-objc are made through `BLRiot[Endpoint]API` classes. Possible values for `[Endpoint]` permit the following classes:

 * BLRiotChampionAPI
 * BLRiotGameAPI
 * BLRiotLeagueAPI
 * BLRiotStatsAPI
 * BLRiotSummonerAPI
 * BLRiotTeamAPI

#### Instantiating
It's easy to create a new instance of the endpoint classes. Just make calls of the form,
```objc
#import "BLRiotChampionAPI.h"
...

BLRiotChampionAPI *api = [[BLRiotChampionAPI alloc] initWithRegion:@"na"];
```

#### Requests
Once you have an instance of the endpoint class, simply call the method on the instance,
```objc
#import "BLRiotChampionAPI.h"
...

NSError *error;
BLChampionListDto *champions = [api requestChampionsFreeToPlay:true Error:&error];
```

#### Error Handling
Make sure to check for errors, which can be of the codes: `AUTHENTICATION_ERROR`, `RESPONSE_ERROR`, or `PARSE_ERROR` (these are predefined constants inherited by every endpoint class from `BLRiotAPI.h`), and handle them gracefully,
```objc
#import "BLRiotChampionAPI.h" // Inherited from BLRiotAPI
...

NSError *error;
...
if (error) {
  if ([error.domain isEqualToString:AUTHENTICATION_ERROR]) {
    NSLog(@"Oops! I forgot to add my API key into BLRiotAPI.h!");
  }
}
```

### Business Logic/Data Models
All responses from the endpoint are stored in business logic models or in containers (usually `NSArray`) of these models. The models are prefixed with `BL` and end with `Dto`. Here are some examples of these classes,

 * BLChampionListDto
 * BLChampionDto
 * BLChampionStatsDto
 * BLChampionStatDto
 * *and many more!*

#### Instantiating
You shouldn't need to ever explictly instantiate these classes by yourself. Rather, requesting using the endpoint class methods will `alloc`, `init`, and `return` instances of these classes or containers with these classes, such as `NSArray`.

```objc
#import "BLRiotChampionAPI.h"
...

NSError *error;
BLChampionListDto *champions = [api requestChampionsFreeToPlay:true Error:&error];
```

#### Properties
All properties of the models are defined as `nonatomic` and `strong`, so with Automatic Reference Counting, you don't have to worry about retaining, releasing, or the garbage collection of these model's properties. Like every Objective-C class, you can access the properties of these models through either dot-syntax or by explictly calling the getter method,

```objc
#import "BLChampionDto.h"
...

/**
 * Note: Since 'id' is a reserved keyword in Objective-C,
 * we prefix all properties with the name 'id' with an underscore.
 */
[idLabel setText:champion._id.stringValue];
[nameLabel setText:[champion name]];
```

#### Nil
If the request to an endpoint through an endpoint class, like `BLRiotChampionAPI`, results in an error (see Error Handling above), then a `nil` object reference will be returned instead of the usual pointer. This is why it's important to gracefully handle errored requests through endpoint classes.

```objc
#import "BLRiotChampionAPI.h"
#import "BLChampionListDto.h" // not needed, implicitly imported by BLRiotChampionAPI
#import "BLChampionDto.h" // not needed, implicitly imported by BLChampionListDto
...

NSError *error;
BLChampionListDto *champions = [api requestChampionsFreeToPlay:true Error:&error]; // Scenario: Returns nil

// !! WRONG: Uh oh, we don't check for an error....

NSLog(@"Champions:");
for (BLChampionDto *champion in champions.champions) { // !! WRONG: champions is nil, so champions.champions is nil!
  NSLog(@"\t%@", champion.name);
}
```

```objc
#import "BLRiotChampionAPI.h"
...

NSError *error;
BLChampionListDto *champions = [api requestChampionsFreeToPlay:true Error:&error]; // Scenario: Returns nil

if (error) {
  NSLog(@"Error: %@", error);
  // Maybe subtly alert the user too?
} else {
  NSLog(@"Champions:");
  for (BLChampionDto *champion in champions.champions) { // RIGHT: Since error is nil, we know this will be OK.
    NSLog(@"\t%@", champion.name);
  }
}
```

Credits and attributions
----------------------
Riot Games for the API  
im420blaziken : Original Creator (if you fork)  
API wrappers in other languages: https://developer.riotgames.com/discussion/riot-games-api/show/iXR9Vl2A  

### Contributing
If you want to help contribute, just open an Issue to let me know what you're working on. When you're done, simply submit a pull request.

README Changelog
----------------
 * 01/13/2014 - Updated to reflect the current API version supported in the dev branch.
 * 12/17/2013 - Added a detailed API wrapper explanation in the **Usage** section.
 * 12/17/2013 - Removed content regarding riot-objc being incomplete, since it's fully capable now.
 * 12/15/2013 - Added information re: how to add your developer key in the code.
 * 12/14/2013 - Initial README with basic information (need to expand) and a progress section.

License
-------
This software is licensed under GNU General Public License v3.

Copyright (C) 2013 Ash K (im420blaziken [at] gmail) / Terrence J. Katzenbaer (tkatzenbaer [at] lytenight com)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see http://www.gnu.org/licenses/.
