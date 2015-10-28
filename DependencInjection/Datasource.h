//
//  Datasource.h
//  DependencInjection
//
//  Created by Dan Ursu on 20/10/15.
//  Copyright © 2015 Dan Ursu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileStorage : NSObject
- (NSArray *)readDataFromFile;
- (void)writeArrayToFile:(NSArray *)arrayToSave;
@end
