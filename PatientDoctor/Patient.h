//
//  Patient.h
//  PatientDoctor
//
//  Created by Matthew Mauro on 2016-11-03.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject

@property NSString *name;
@property (nonatomic) int age;
@property BOOL healthCard;
@property NSString *symptoms;

-(instancetype)init;

-(void)getSick;
-(void)visitDoctor:(Doctor *)d;
-(BOOL)requestMedication:(Doctor *)d for:(NSString *)symptoms;

@end
