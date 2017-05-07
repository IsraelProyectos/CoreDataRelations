//
//  TableViewController.m
//  CoreDataRelations
//
//  Created by isra on 17/6/16.
//  Copyright © 2016 Israel. All rights reserved.
//

#import "TableViewController.h"
#import "User.h"
#import "UserViewController.h"

@interface TableViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;


@property (strong, nonatomic) NSArray *users;
@end

@implementation TableViewController

#pragma mark - UIViewController lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView setDataSource:self];
    [self.tableView setDelegate:self];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    self.users = [User all];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.users.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    User *user = [self.users objectAtIndex:indexPath.row];
    
    NSString *name = [NSString stringWithFormat: @"%@", user.name];
    [cell.textLabel setText:name];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    User *user = [self.users objectAtIndex:indexPath.row];
    UserViewController *userController = [[UserViewController alloc] initWithUser:user];
    [self presentViewController:userController animated:YES completion:nil];
}

@end
