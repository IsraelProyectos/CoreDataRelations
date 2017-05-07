//
//  MainViewController.m
//  CoreDataRelations
//
//  Created by isra on 16/6/16.
//  Copyright © 2016 Israel. All rights reserved.
//

#import "MainViewController.h"
#import "User.h"
#import "FiscalData.h"
#import "TableViewController.h"
#import "ProvaViewController.h"


@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblSurname;
@property (weak, nonatomic) IBOutlet UILabel *lblNif;
@property (weak, nonatomic) IBOutlet UILabel *lblEmail;

@property (weak, nonatomic) IBOutlet UITextField *txfName;
@property (weak, nonatomic) IBOutlet UITextField *txfSurname;
@property (weak, nonatomic) IBOutlet UITextField *txfNif;
@property (weak, nonatomic) IBOutlet UITextField *txfEmail;



@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnSend:(id)sender {
    NSMutableDictionary *userDictionary = [[NSMutableDictionary alloc]initWithCapacity:2];
    [userDictionary setObject:self.txfName.text forKey:@"name"];
    [userDictionary setObject:self.txfSurname.text forKey:@"surname"];
    
    NSMutableDictionary *fiscalDataDict = [[NSMutableDictionary alloc]initWithCapacity:2];
    [fiscalDataDict setObject:self.txfNif.text forKey:@"nif"];
    [fiscalDataDict setObject:self.txfEmail.text forKey:@"email"];
    
    
    FiscalData *fd = [FiscalData createFiscalDataWithDict:fiscalDataDict];
    [User createUserWithDict:userDictionary fiscalData:fd];
    
}

- (IBAction)btnGoToTableView:(id)sender {
    TableViewController *tableView = [[TableViewController alloc] init];
    [self presentViewController:tableView animated:YES completion:nil];
}

@end
