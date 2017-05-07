//
//  FiscalData+CoreDataProperties.h
//  CoreDataRelations
//
//  Created by isra on 16/6/16.
//  Copyright © 2016 Israel. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "FiscalData.h"

NS_ASSUME_NONNULL_BEGIN

@interface FiscalData (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *email;
@property (nullable, nonatomic, retain) NSString *nif;

@end

NS_ASSUME_NONNULL_END
