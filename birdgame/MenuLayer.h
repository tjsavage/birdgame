//
//  MenuLayer.h
//  birdgame
//
//  Created by Taylor Savage on 5/15/12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//


#import <GameKit/GameKit.h>

// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

// MenuLayer
@interface MenuLayer : CCLayer <GKAchievementViewControllerDelegate, GKLeaderboardViewControllerDelegate>
{
}

// returns a CCScene that contains the MenuLayer as the only child
+(CCScene *) scene;

@end
