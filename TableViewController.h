//  TableViewController.h
//  Tumblr API v1 



#import "TableViewController.h"

#import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
#import "AFNetworking.h"
#import "AFHTTPRequestOperation.h"
#import "AFNetworking.h"
#import "UIImageView+AFNetworking.h"

@interface TableViewController : UITableViewController<UITableViewDataSource,UITableViewDelegate,AFURLRequestSerialization,AFURLResponseSerialization>

@property (nonatomic,strong) NSMutableArray *cellList;

@property (nonatomic) BOOL isRequestAvailable;
@property (nonatomic) int pageCount;
@end