//
//  User.m
//  CoreDataRelations
//
//  Created by isra on 16/6/16.
//  Copyright © 2016 Israel. All rights reserved.
//

#import "User.h"
#import "FiscalData.h"
#import "User+CoreDataProperties.h"

@implementation User

+ (User*)createUserWithDict:(NSDictionary*)dict fiscalData:(FiscalData*)fiscalData {
    NSNumber *userId = [dict objectForKey:@"userId"];
    User *user; //= [User find:@{@"userId": userId}];
    
    if (!user) {
        user = [User create];
    }
    
    NSString *name = [dict objectForKey:@"name"];
    NSString *surname = [dict objectForKey:@"surname"];
    
    
    if (userId) {
        [user setUserId:userId];
    }
    
    if (name) {
        [user setName:name];
    }
    
    if (surname) {
        [user setSurname:surname];
    }
    
    if (fiscalData) {
        [user setFiscalData:fiscalData];
    }
 
    [user save];
    
    return user;
}

+ (void)deleteUser:(User*)user {
    [user delete];
    [user save];
}


@end
