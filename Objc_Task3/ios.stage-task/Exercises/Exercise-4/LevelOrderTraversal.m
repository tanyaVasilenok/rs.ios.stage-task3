#import "LevelOrderTraversal.h"

//@interface TreeNode : NSObject
//
//@property(nonatomic,assign) NSInteger value;
//@property(nonatomic,strong,nullable) TreeNode* leftChild;
//@property(nonatomic,strong,nullable) TreeNode* rightChild;
//
//@end

NSArray *LevelOrderTraversalForTree(NSArray *tree) {
    
    NSMutableArray *resultArray = [[NSMutableArray alloc] init];
    
    //border situations
    if (tree.count == 0) {
        return nil;
    }
    
    if (tree.count == 1) {
        if (![tree.firstObject isKindOfClass:[NSNull class]]) {
            [resultArray addObject:tree.firstObject];
            return resultArray;
        }
        else return nil;
    }
    
    NSInteger subArray = 0;

    for (int i = 0; i < tree.count; i++) {
            
        [resultArray addObject:[[NSMutableArray alloc] init]];
        
        if ([tree[i] isKindOfClass:[NSNull class]] && [tree[i + 1] isKindOfClass:[NSNull class]]) {
            subArray--;
        }
        
        else if ([tree[i] isKindOfClass:[NSNull class]]) {
            continue;
        }
        
        else {
            [resultArray[subArray] addObject:tree[i]];
            subArray++;
        }
        
    }
    
    NSLog(@"Result array %@", resultArray);
    
    if ([resultArray containsObject:@[]]) {
        [resultArray removeObject:@[]];
    }
    
    NSLog(@"Result array %@", resultArray);
    
    return resultArray;
}
