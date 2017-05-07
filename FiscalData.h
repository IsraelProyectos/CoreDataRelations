//
//  FiscalData.h
//  CoreDataRelations
//
//  Created by isra on 16/6/16.
//  Copyright © 2016 Israel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <ObjectiveRecord.h>
#import "User.h"

NS_ASSUME_NONNULL_BEGIN

@interface FiscalData : NSManagedObject
+ (FiscalData*)createFiscalDataWithDict:(NSDictionary*)dict;
@end

NS_ASSUME_NONNULL_END

#import "FiscalData+CoreDataProperties.h"
