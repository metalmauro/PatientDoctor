//
//  Patient.m
//  PatientDoctor
//
//  Created by Matthew Mauro on 2016-11-03.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//
#import "stdlib.h"
#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"Matt";
        _age = 27;
        _healthCard = TRUE;
        _symptoms = @"none";
    }
    return self;
}

-(void)getSick
{
    if([self.symptoms isEqualToString:@"none"])
    {
        int x = arc4random_uniform(6);
        switch (x) {
            case 1:
                self.symptoms = @"throwing up";
                break;
            case 2:
                self.symptoms = @"sore throat";
                break;
            case 3:
                self.symptoms = @"broken bone";
                break;
            case 4:
                self.symptoms = @"has a rash";
                break;
            case 5:
                self.symptoms = @"don't feel well";
                break;
            default:
                break;
        }
    }
}

-(void)visitDoctor:(Doctor *)d
{
    if(self.healthCard == TRUE)
    {
        [d.patients addObject:self];
        NSLog(@"Welcome to the clinic \n");
    }else
    {
        NSLog(@"sorry, you need a valid Canadian Health Card \n");
    }
}

-(BOOL)requestMedication:(Doctor *)d for:(NSString *)symptoms
{
    if([self.symptoms isEqualToString:@"don't feel well"])
    {
        return FALSE;
    }
    return TRUE;
}

@end
