//
//  Student.m
//  Student
//
//  Created by neuedu on 15/8/5.
//  Copyright (c) 2015年 neuedu. All rights reserved.
//

#import "Student.h"

@implementation Student
-(instancetype)initWithFirstName:(NSString *)first andSecondName:(NSString *)second
{
    if (self = [super init]) {
        _firstName = first;
        _secondName = second;
    }
    return self;
}
+(instancetype) studentWithFirstName:(NSString*)first andSecondName:(NSString*)second;
{
    return [[[self class]alloc]initWithFirstName:first andSecondName:second];
}
-(NSString *)description
{
    return [NSString stringWithFormat:@"stu firstName is %@ and secondName is %@",_firstName,_secondName];
}

@end
