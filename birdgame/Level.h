//
//  Level.h
//  birdgame
//
//  Created by Will Perl on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CCSprite;
@class GameObject;

@interface Level : NSObject
{	
	NSString *levelName;
	NSString *levelDesc;
	CCSprite *tileSprite;
	NSArray *objects;
}

@property (nonatomic, retain) NSString *levelName, *levelDesc;
@property (nonatomic, retain) CCSprite *tileSprite;

- (id) initWithString:(NSString *)levelJSON;

- (GameObject *)getNextObject;

- (NSString *)levelString;

@end
