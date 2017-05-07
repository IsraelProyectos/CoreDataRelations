//
//  FiscalData.m
//  CoreDataRelations
//
//  Created by isra on 16/6/16.
//  Copyright © 2016 Israel. All rights reserved.
//

#import "FiscalData.h"


@implementation FiscalData

+ (FiscalData*)createFiscalDataWithDict:(NSDictionary*)dict {
    NSString * nif = [dict objectForKey:@"nif"];
    FiscalData *fiscalData = [FiscalData find:@{@"nif": nif}];
    
    if (!fiscalData) {
        fiscalData = [FiscalData create];
    }
	
	//hola
    
    NSString *email = [dict objectForKey:@"email"];
    
    
    if (nif) {
        [fiscalData setNif:nif];
    }
    
    if (email) {
        [fiscalData setEmail:email];
    }
    
    [fiscalData save];
    
    
    return fiscalData;
    
    
}

@end

