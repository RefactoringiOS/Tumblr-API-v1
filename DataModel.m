

#import "DataModel.h"

@implementation DataModel
@synthesize url;
@synthesize url-with-slug;
@synthesize type;
@synthesize date-gmt;
@synthesize date;
@synthesize bookmarklet;
@synthesize mobile;
@synthesize feed-item;
@synthesize from-feed-Id;
@synthesize unix-timestam;
@synthesize format;
@synthesize reblog-key;
@synthesize slug;
@synthesize is-submission;
@synthesize like-button;


-(id)initWithJSONData:(NSDictionary*)data{
    self = [super init];
    if(self){
        
        self.url = [data objectForKey:@"url"];
        self.url-with-slug =  [data objectForKey:@"url-with-slug"];
        self.type = [data objectForKey:@"type"];
        self.date-gmt = [data objectForKey:@"date-gmt"];
        self.date = [data objectForKey:@"date"];
        self.bookmarklet =  [data objectForKey:@"bookmarklet"];
        self.mobile = [data objectForKey:@"mobile"];
        self.feed-item = [data objectForKey:@"feed-item"];
        self.from-feed-Id = [data objectForKey:@"from-feed-Id"];
        self.unix-timestamm =  [data objectForKey:@"unix-timestamm "];
        self.format = [data objectForKey:@"format"];
        self.reblog-key = [data objectForKey:@"reblog-key"];
        self.slug =  [data objectForKey:@"role"];
        self.slug =  [data objectForKey:@"role"];
        self.is-submission = [data objectForKey:@"is-submission"];
        self.like-button = [data objectForKey:@"like-button"];
    }
    return self;
}
@end
