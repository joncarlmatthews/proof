//
//  Tag.m
//  proof
//
//  Created by Jon Carl Matthews on 22/02/2014.
//  Copyright (c) 2014 Jon Carl Matthews. All rights reserved.
//

#import "Tag.h"

@implementation Tag

-(id)init
{
    self = [super init];
    
    [self setJsonString:@"{ \"items\": [ { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 596976, \"name\": \"c#\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 579924, \"name\": \"java\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 551500, \"name\": \"javascript\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 529888, \"name\": \"php\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 462263, \"name\": \"android\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 434404, \"name\": \"jquery\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 271344, \"name\": \"python\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 267462, \"name\": \"c++\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 256910, \"name\": \"html\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 224959, \"name\": \"mysql\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 214593, \"name\": \"ios\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 208513, \"name\": \"asp.net\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 197801, \"name\": \"css\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 190858, \"name\": \"sql\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 189899, \"name\": \"iphone\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 178833, \"name\": \".net\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 171406, \"name\": \"objective-c\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 151827, \"name\": \"ruby-on-rails\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 128779, \"name\": \"c\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 96704, \"name\": \"ruby\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 90289, \"name\": \"sql-server\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 84294, \"name\": \"ajax\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 83636, \"name\": \"xml\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 81285, \"name\": \"regex\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 79671, \"name\": \"arrays\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 79629, \"name\": \"wpf\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 79205, \"name\": \"asp.net-mvc\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 70319, \"name\": \"database\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 70160, \"name\": \"linux\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 69502, \"name\": \"json\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 68417, \"name\": \"django\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 62545, \"name\": \"vb.net\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 61616, \"name\": \"windows\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 60745, \"name\": \"xcode\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 59960, \"name\": \"eclipse\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 53718, \"name\": \"string\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 53476, \"name\": \"facebook\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 50500, \"name\": \"html5\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 50013, \"name\": \"ruby-on-rails-3\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 49373, \"name\": \"multithreading\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 49144, \"name\": \"r\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 46386, \"name\": \"winforms\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 46076, \"name\": \"wordpress\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 45623, \"name\": \"image\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 41634, \"name\": \"forms\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 40327, \"name\": \"performance\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 40093, \"name\": \"osx\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 40067, \"name\": \"visual-studio-2010\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 39829, \"name\": \"spring\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 39498, \"name\": \"excel\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 39352, \"name\": \"node.js\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 38368, \"name\": \"algorithm\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 38287, \"name\": \"oracle\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 37947, \"name\": \"swing\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 37481, \"name\": \"git\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 37266, \"name\": \"linq\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 36817, \"name\": \"asp.net-mvc-3\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 35222, \"name\": \"apache\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 35152, \"name\": \"web-services\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 35073, \"name\": \"wcf\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 34927, \"name\": \"perl\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 33859, \"name\": \"entity-framework\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 33671, \"name\": \"sql-server-2008\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 33437, \"name\": \"visual-studio\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 32763, \"name\": \"bash\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 32041, \"name\": \"hibernate\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 31634, \"name\": \"actionscript-3\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 29397, \"name\": \"ipad\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 28861, \"name\": \"matlab\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 28712, \"name\": \"qt\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 28654, \"name\": \"cocoa-touch\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 28296, \"name\": \"cocoa\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 28289, \"name\": \"list\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 27987, \"name\": \"file\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 27885, \"name\": \"sqlite\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 27819, \"name\": \"flash\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 27725, \"name\": \".htaccess\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 27324, \"name\": \"api\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 26778, \"name\": \"jquery-ui\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 26252, \"name\": \"function\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 26204, \"name\": \"codeigniter\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 26162, \"name\": \"angularjs\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 25894, \"name\": \"mongodb\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 25839, \"name\": \"silverlight\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 25709, \"name\": \"class\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 25560, \"name\": \"tsql\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 25270, \"name\": \"delphi\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 25225, \"name\": \"css3\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 25190, \"name\": \"security\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 24710, \"name\": \"google-maps\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 24136, \"name\": \"internet-explorer\" }, { \"has_synonyms\": false, \"is_moderator_only\": false, \"is_required\": false, \"count\": 24017, \"name\": \"jsp\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 23971, \"name\": \"vba\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 23952, \"name\": \"postgresql\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 23928, \"name\": \"shell\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 23724, \"name\": \"google-app-engine\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 23486, \"name\": \"oop\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 23252, \"name\": \"validation\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 23236, \"name\": \"sockets\" }, { \"has_synonyms\": true, \"is_moderator_only\": false, \"is_required\": false, \"count\": 23082, \"name\": \"unit-testing\" } ], \"has_more\": true, \"quota_max\": 10000, \"quota_remaining\": 9992 }"];
    
    // Convert the JSON string (NSString) to an NSData object.
    NSData *data = [[self jsonString] dataUsingEncoding:NSUTF8StringEncoding];
    
    // Convert the NSData object to an NSDictionary.
    NSError *dataToDictError;
    NSDictionary *dict = [NSJSONSerialization
                          JSONObjectWithData:data
                          options:kNilOptions
                          error:&dataToDictError];
    
    [self setTags:[dict objectForKey:@"items"]];
    
    return self;
}

@end
