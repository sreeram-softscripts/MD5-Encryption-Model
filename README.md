MD5-Encryption-Model
====================
#### How to install
Copy the MD5Model.h/m files to your project

#### How to implement
In the .m file of your ViewContoller class, import the MD5Model header file<br>
    `#import "MD5Model.h"`<br><br>
To call the getMD5String Methord
```
// Get MD5 encrypted string of the text placed in the password text field
NSString *unencryptedText = [self.TextField text];
NSString *encryptedText = [MD5Model getMD5String:unencryptedText];
```
