//
//  ViewController.m
//  DependencInjection
//
//  Created by Dan Ursu on 20/10/15.
//  Copyright © 2015 Dan Ursu. All rights reserved.
//

#import "ViewController.h"
#import "Datasource.h"
@interface ViewController () <UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *array;
@property (strong, nonatomic) FileStorage *fileStorage;
@end

@implementation ViewController

- (instancetype)initWithFileStorage:(FileStorage *)storage {
    self = [super init];
    if (self) {
        self.fileStorage = storage;
    }
    
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.array = [self.fileStorage readDataFromFile];
}


- (IBAction)reverseOrderAndSaveToFile:(UIButton *)sender {
    self.array =  [[self.array reverseObjectEnumerator] allObjects];
    [self.fileStorage writeArrayToFile:self.array];
    [self.tableView reloadData];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.array.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellIdentifier"];
    cell.textLabel.text = self.array[indexPath.row];
    
    return cell;
}

@end