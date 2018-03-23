# IQKeyboadBugCollectionDemo


solutions at present:

https://github.com/hackiftekhar/IQKeyboardManager/issues/1158
```
1. 

- (void)loadView{
    
    UIScrollView *scrollerView = [[UIScrollView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    scrollerView.contentSize = CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT);
    self.view = scrollerView;
    
}


2. (maybe need change layout)

    if (@available(iOS 11.0, *)) {
        YPtable.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }else{
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    
    
3.(just fix statebar translucent)

Swift:
    IQKeyboardManager.shared().canAdjustAdditionalSafeAreaInsets = true
Objective-C:
    [IQKeyboardManager sharedManager].canAdjustAdditionalSafeAreaInsets = true;

```
