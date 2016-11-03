//
//  Medication.m
//  PatientDoctor
//
//  Created by Matthew Mauro on 2016-11-03.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import "Medication.h"
#import "Patient.h"

@implementation Medication

- (instancetype)initForPerscription:(NSString *)str
{
    self = [super init];
    if (self) {
        _pharma = str;
    }
    return self;
}

-(void)heal:(Patient *)p
{
    if([self.pharma isEqualToString:p.symptoms])
    {
        NSLog(@"Patient was healed of their %@", p.symptoms);
        p.symptoms = @"none";
    }
}

@end
