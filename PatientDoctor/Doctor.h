//
//  Doctor.h
//  PatientDoctor
//
//  Created by Matthew Mauro on 2016-11-03.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Medication, Patient;


@interface Doctor : NSObject

@property NSString *name;
@property NSString *specialization;
@property NSMutableSet *patients;
@property NSMutableArray *perscriptionList;

-(Medication *)perscribe:(Patient *)p;

@end
