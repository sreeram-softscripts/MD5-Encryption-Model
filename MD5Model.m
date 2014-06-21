/*
 
 Copyright (c) 2014 Brian Oliver II <brian.d.oliver@hotmail.com>
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is furnished
 to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 
 */


#import "MD5Model.h"

@implementation MD5Model

- (NSString *) getMD5String
{
    
    // Get plan text input
    NSString *textString = [NSString stringWithFormat:@"%@", self.inputText];
    
    // Encrypt plan text to MD5
    NSMutableString *result = [NSMutableString string];
    UInt8 bytes[16];
    NSInteger i;
    
    CC_MD5(textString.UTF8String, [textString lengthOfBytesUsingEncoding:NSUTF8StringEncoding], bytes);
    
    for(i = 0; i < 16; i++) {
        [result appendFormat:@"%02x", bytes[i]];
    }
    
    // Return ouput
    self.outputText = result;
    return result;
    
    // NSLog(@"%@", result);
}

@end
