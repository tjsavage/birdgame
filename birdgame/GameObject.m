//
//  GameObject.m
//  birdgame
//
//  Created by Will Perl on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GameObject.h"

@implementation GameObject
@synthesize delta, sprite;

- (void) setOrigin:(CGPoint)newO
{
	sprite.position = newO;
}

- (CGPoint) origin
{
	return sprite.position;
}

- (void) setCenter:(CGPoint)c
{
	sprite.position = CGPointMake(c.x - sprite.contentSize.width/2, c.y - sprite.contentSize.height/2);
}

- (CGPoint) center
{
	return CGPointMake(sprite.position.x + sprite.contentSize.width/2, sprite.position.y + sprite.contentSize.height/2);
}

- (void) setRect:(CGRect)newRect
{
	self.origin = newRect.origin;
	sprite.contentSize = newRect.size;
}

- (CGRect) rect
{
	CGPoint origin = self.origin;
	return CGRectMake(origin.x, origin.y, sprite.contentSize.width, sprite.contentSize.height);
}

- (CGRect) collisionRect
{
	return self.rect;
}

- (BOOL) collidesWithPoint:(CGPoint)p
{
	return CGRectContainsPoint(self.collisionRect, p);
}

- (BOOL) collidesWithObject:(GameObject *)object
{
	return CGRectIntersectsRect(self.collisionRect, object.collisionRect);
}

- (void) update
{
	sprite.position = CGPointMake(sprite.position.x + delta.x, sprite.position.y + delta.y);
}

- (void) dealloc
{
	self.sprite = nil;
	[super dealloc];
}

@end
