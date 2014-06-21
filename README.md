MD5-Encryption-Model
====================
#### How to install
Copy the MD5Model.h/m files to your project

#### How to implement
In the .m file of your ViewContoller class, import the MD5Model header file<br>
    `#import "MD5Model.h"`<br>
To create the MD5 object<br>
    `MD5Model *getHash = [[MD5Model alloc] init];`<br>
Define text to be encrypted<br>
    `getHash.inputText = [self.TextField text];`<br>
Call getMD5String method to encrypt the text<br>
    `[getHash getMD5String];`<br>
To see the encrypted string<br>
      `NSLog(@"%@", getHash.outputText);`
