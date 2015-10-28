//
//  Datasource.m
//  DependencInjection
//
//  Created by Dan Ursu on 20/10/15.
//  Copyright © 2015 Dan Ursu. All rights reserved.
//

#import "Datasource.h"

@implementation FileStorage

- (NSArray *)readDataFromFile {
    NSArray *fileContents = [NSArray arrayWithContentsOfFile:@"myfile"];
    if (fileContents) {
        return fileContents;
    } else {
        return @[@"First Item", @"Second Item", @"Third Item", @"Fourth Item"];
    }
}

- (void)writeArrayToFile:(NSArray *)arrayToSave {
    [arrayToSave writeToFile:@"myfile" atomically:YES];
}

@end
