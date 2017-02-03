//  DataModel.h
//  TableViewController.h
//  Tumblr API v1 



#import "TableViewController.h"

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController

@end

#import <Foundation/Foundation.h>

@interface DataModel : NSObject

-(id)initWithJSONData:(NSDictionary*)tumblelog;
@property (strong)  NSString *url;
@property (strong)  NSString *url-with-slug;
@property (strong)  NSString *type;
@property (strong)  NSString *date-gmt;
@property (strong)  NSString *date;
@property (strong)  NSString *bookmarklet;
@property (strong)  NSString *mobile;
@property (strong)  NSString *feed-item;
@property (strong)  NSString *from-feed-id;
@property (strong)  NSString *unix-timestam;
@property (strong)  NSString *format;
@property (strong)  NSString *reblog-key;
@property (strong)  NSString *slug;
@property (strong)  NSString *is-submission;
@property (strong)  NSString *like-button;

@end
