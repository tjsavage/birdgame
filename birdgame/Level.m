//
//  Level.m
//  birdgame
//
//  Created by Will Perl on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Level.h"
#import "JSON.h"
#import "CCSprite.h"
#import "GameObject.h"

@implementation Level
@synthesize levelName, levelDesc, tileSprite;

- (id) initWithString:(NSString *)levelJSON;
{
	self = [super init];
	if(self)
	{
		int curObjID = 1;
		
		NSDictionary *asdf = [levelJSON JSONValue];
		NSDictionary *level = [asdf valueForKey:@"level"];
		
		self.levelName = [NSString stringWithString:[level objectForKey:@"name"]];
		self.levelDesc = [NSString stringWithString:[level objectForKey:@"description"]];
		
		self.tileSprite = [CCSprite spriteWithFile:[level objectForKey:@"background_tile"]];
		
		NSArray *objectDicts = [level objectForKey:@"objects"];
		for(NSDictionary *objectDict in objectDicts)
		{
			NSString *objName = [objectDict objectForKey:@"name"];
			NSArray *paths = [objectDict objectForKey:@"paths"];
			NSArray *startTimes = [objectDict objectForKey:@"starting_times"];
			
			NSMutableArray *path = [NSMutableArray array];
			int startTime;
			
			
		
		}
	}
	return self;
}

- (GameObject *)getNextObject;
{
	return nil;
}

- (NSString *)levelString
{
	return @"";
}

- (void) dealloc
{
	self.levelName = nil;
	self.levelDesc = nil;
	self.tileSprite = nil;
	[objects release];
	[super dealloc];
}

@end
