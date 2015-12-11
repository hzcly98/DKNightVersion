//
//  UITableViewCell+Night.m
//  UITableViewCell+Night
//
//  Copyright (c) 2015 Draveness. All rights reserved.
//
//  These files are generated by ruby script, if you want to modify code
//  in this file, you are supposed to update the ruby code, run it and
//  test it. And finally open a pull request.

#import "UITableViewCell+Night.h"
#import "DKNightVersionManager.h"
#import <objc/runtime.h>

@interface UITableViewCell ()

@property (nonatomic, strong) NSMutableDictionary<NSString *, DKColorPicker> *pickers;

@end

@implementation UITableViewCell (Night)


- (DKColorPicker)dk_selectedTextColorPicker {
    return objc_getAssociatedObject(self, @selector(dk_selectedTextColorPicker));
}

- (void)setDk_selectedTextColorPicker:(DKColorPicker)picker {
    objc_setAssociatedObject(self, @selector(dk_selectedTextColorPicker), picker, OBJC_ASSOCIATION_COPY_NONATOMIC);
    self.selectedTextColor = picker();
    [self.pickers setValue:[picker copy] forKey:@"setSelectedTextColor:"];
}


@end
