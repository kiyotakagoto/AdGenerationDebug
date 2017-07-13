//
//  ADGSettings.h
//  ADG
//
//  Created by yuki.kuroda on 2017/02/13.
//  Copyright © 2017年 adgeneration. All rights reserved.
//

@interface ADGSettings : NSObject

/**
 * Get the setting whether this SDK automatically get Geolocation.
 * @return YES: enable / NO: disable
 */
+ (BOOL)isGeolocationEnabled;

/**
 * Determines whether this SDK automatically get Geolocation.
 * @param enable YES: enable / NO: disable
 */
+ (void)setGeolocationEnabled:(BOOL)enable;

@end
