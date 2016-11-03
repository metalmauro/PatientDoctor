//
//  Medication.h
//  PatientDoctor
//
//  Created by Matthew Mauro on 2016-11-03.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;

@interface Medication : NSObject

@property NSString *pharma;

- (instancetype)initForPerscription:(NSString *)str;

-(void)heal:(Patient *)p;

@end
