//
//  UserViewController.m
//  CoreDataRelations
//
//  Created by isra on 20/6/16.
//  Copyright © 2016 Israel. All rights reserved.
//

#import "UserViewController.h"

@interface UserViewController ()
@property (strong, nonatomic) User *user;
@property (weak, nonatomic) IBOutlet UILabel *lblNombre;
@property (weak, nonatomic) IBOutlet UILabel *lblTextNombre;
@property (weak, nonatomic) IBOutlet UILabel *lblSurname;
@property (weak, nonatomic) IBOutlet UILabel *lblTextSurname;
@property (weak, nonatomic) IBOutlet UILabel *lblNIF;
@property (weak, nonatomic) IBOutlet UILabel *lblTextNIF;
@property (weak, nonatomic) IBOutlet UILabel *lblEmail;
@property (weak, nonatomic) IBOutlet UILabel *lblTextEmail;
@end

@implementation UserViewController

- (instancetype)initWithUser:(User*)user {
    self = [super init];
    
    if (self) {
        self.user = user;
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.lblTextNombre setText:self.user.name];
    [self.lblTextSurname setText:self.user.surname];
    [self.lblTextNIF setText:self.user.fiscalData.nif];
    [self.lblTextEmail setText:self.user.fiscalData.email];
}

@end
