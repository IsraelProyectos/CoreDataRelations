//
//  User+CoreDataProperties.h
//  CoreDataRelations
//
//  Created by isra on 16/6/16.
//  Copyright © 2016 Israel. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "User.h"

NS_ASSUME_NONNULL_BEGIN

@interface User (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *surname;
@property (nullable, nonatomic, retain) NSNumber *userId;
@property (nullable, nonatomic, retain) FiscalData *fiscalData;

@end

NS_ASSUME_NONNULL_END
