MD5-Encryption-Model
====================
**How to install**
 *Copy the MD5Model.h/m files to your project

**How to implement**
 *In the .m file of your ViewContoller class, import the MD5Model header file
    #import "MD5Model.h"
 *To create the MD5 object
    MD5Model *getHash = [[MD5Model alloc] init];
 *Define text to be encrypted
    getHash.inputText = [self.TextField text];
 *Call getMD5String method to encrypt the text
    [getHash getMD5String];
 *To see the encrypted string
      NSLog(@"%@", getHash.outputText);
