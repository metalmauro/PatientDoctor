//
//  Doctor.m
//  PatientDoctor
//
//  Created by Matthew Mauro on 2016-11-03.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Medication.h"

@implementation Doctor

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"Dr.Haw";
        _specialization = @"General Practicioner";
        _patients = [NSMutableSet new];
        _perscriptionList = [NSMutableArray new];
    }
    return self;
}

-(Medication *)perscribe:(Patient *)p
{
    NSString *s;
    if([p.symptoms isEqualToString:@"throwing up"])
    {
        s = p.symptoms;
    }if([p.symptoms isEqualToString:@"sore throat"])
    {
        s = p.symptoms;
    }if([p.symptoms isEqualToString:@"broken bone"])
    {
        s = p.symptoms;
    }if([p.symptoms isEqualToString:@"has a rash"])
    {
        s = p.symptoms;
    }if([p.symptoms isEqualToString:@"don't feel well"])
    {
        return nil;
        NSLog(@"You're not sick enough for a perscription. Go have a nap");
    }
    Medication *new = [[Medication alloc]initForPerscription:s];
    [self.perscriptionList addObject:new];
    return new;
    
}

@end
