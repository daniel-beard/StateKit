//
//  NSMutableArray+Queue.m
//  Pods
//
//  Copyright (c) 2014, Groupon, Inc.
//  Created by Shaheen Ghiassy on 01/19/2015.
//  All rights reserved.
//

#import "NSMutableArray+Queue.h"

@implementation NSMutableArray (Queue)

// Queues are first-in-first-out, so we remove objects from the head
- (id)sk_dequeue {
    // if ([self count] == 0) return nil; // to avoid raising exception (Quinn)
    id headObject = [self objectAtIndex:0];

    if (headObject != nil) {
        [self removeObjectAtIndex:0];
    }

    return headObject;
}

// Add to the tail of the queue (no one likes it when people cut in line!)
- (void)sk_enqueue:(id)anObject {
    [self addObject:anObject];
    //this method automatically adds to the end of the array
}

@end
