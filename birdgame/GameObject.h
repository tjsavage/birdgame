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
	int objID;
	NSString *objName;
	CGPoint delta;
	NSArray *path; //List of point(s). 1 point = static, multiple = path, if last point = first point: loop it
	int pathIndex;
	int appearTime; //Frame number to spawn this object
	
	CCSprite *sprite;
}

@property int objID;
@property (nonatomic, retain) NSString *objName;

@property CGPoint delta;
@property (nonatomic, retain) CCSprite *sprite;

@property CGPoint origin;
@property CGPoint center;
@property CGRect rect;
@property (readonly) CGRect collisionRect;

@property (readonly) int appearTime;

- (id) initWithObjectID:(int)oID name:(NSString*)name appearTime:(int)time path:(NSArray*)points;

- (BOOL) collidesWithPoint:(CGPoint)p;
- (BOOL) collidesWithObject:(GameObject *)object;

- (void) update;

@end
