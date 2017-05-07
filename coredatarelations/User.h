//
//  User.h
//  CoreDataRelations
//
//  Created by isra on 16/6/16.
//  Copyright © 2016 Israel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <ObjectiveRecord.h>
#import "FiscalData.h"

@class FiscalData;

NS_ASSUME_NONNULL_BEGIN

@interface User : NSManagedObject
+ (User*)createUserWithDict:(NSDictionary*)dict fiscalData:(FiscalData*)fiscalData;
@end

NS_ASSUME_NONNULL_END

#import "User+CoreDataProperties.h"
