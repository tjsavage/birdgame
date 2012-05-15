//
//  GameObject.h
//  birdgame
//
//  Created by Will Perl on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCSprite.h"

@interface GameObject : NSObject
{
	CGPoint delta;
	
	CCSprite *sprite;
}

@property CGPoint delta;
@property (nonatomic, retain) CCSprite *sprite;

@property CGPoint origin;
@property CGPoint center;
@property CGRect rect;
@property (readonly) CGRect collisionRect;

- (BOOL) collidesWithPoint:(CGPoint)p;
- (BOOL) collidesWithObject:(GameObject *)object;

- (void) update;

@end
