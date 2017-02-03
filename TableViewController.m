//  TableViewController.m
//  Tumblr API v1 

#import "TableViewController.h"
#import "DataModel.h"
#define url @"http://v1.tumblr.com/api/read/json";



@interface TableViewController()

@property (strong, nonatomic) UITableViewCell *TumblrV1;
@property (nonatomic,strong) NSMutableArray *GETTumblrV1Array;
@property (strong, nonatomic) NSArray *allDataList;



@end

@implementation TableViewController

@synthesize GETTumblrV1Array;
@synthesize allDataList;

-(NSMutableArray *)GETTumblrV1Array{
    if(!GETTumblrV1Array) GETTumblrV1Array = [[NSMutableArray alloc]init];
    return GETTumblrV1Array;
    
}




- (void)loadView
{
    [super loadView];
    
    tableView.delegate = self;
    tableView.dataSource = self;
}

-(void)loadData
{
     GETTumblrV1Array= [[NSMutableArray alloc]init];
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager.requestSerializer setValue:[NSString stringWithFormat:nil] forHTTPHeaderField:@"Authorization"];
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        self.GETTumblrV1Array = responseObject;
        if (responseObject) {
        
            
            
            allDataList  = [responseObject valueForKey:@"tumblelog"];
            [tableView reloadData];
                      
    }
    
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {

    }];
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return[self.allDataList count];
  
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
   return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    DataModel *cell = [MyTableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    NSArray *data = [self.allDataList objectAtIndex:indexPath.row];


        cell.url = [data valueForKey:@"url"];
        cell.url-with-slug =  [data valueForKey:@"url-with-slug"];
        cell.type = [data valueForKey:@"type"];
        cell.date-gmt = [data valueForKey:@"date-gmt"];
        cell.date = [data valueForKey:@"date"];
        cell.bookmarklet =  [data valueForKey:@"bookmarklet"];
        cell.mobile = [data valueForKey:@"mobile"];
        cell.feed-item = [data valueForKey:@"feed-item"];
        cell.from-feed-Id = [data valueForKey:@"from-feed-Id"];
        cell.unix-timestamm =  [data valueForKey:@"unix-timestamm "];
        cell.format = [data valueForKey:@"format"];
        cell.reblog-key = [data valueForKey:@"reblog-key"];
        cell.slug =  [data valueForKey:@"role"];
        cell.slug =  [data valueForKey:@"role"];
        cell.is-submission = [data valueForKey:@"is-submission"];
        cell.like-button = [data valueForKey:@"like-button"];
   

    
    
    return cell;

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
   
}

#pragma mark - Prepare For Segue

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
 //?

}



@end
