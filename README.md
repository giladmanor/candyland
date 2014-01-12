#CandyLand

Social Media prospect manager

This product manages social influencers and approaches to them per approach, the impact it made

this is currently a pre release and does not include any smart calculations.


###Try Candyland online
Access our dev server @ [candyland](http://192.241.183.52) and create your own account.


###Install your one server

Install as standard RoR application

Version information:
- Ruby 2+
- Rails 4+
- Prostgress 9.1.11

Copy/fork this repository into a dorectory on your machine. Dont forget to rub bundle after you copy local directory.

Update the database name and user password in *./conf/database.yml* file

Initiate the database with the following commands:
```
rake db:create
rake db:migrate
rake db:seed
```

Now you will be able to log into the system via default user: 
```
login: a
password: a
```


###License MIT

Copyright (c) 2014 [Lazy eye developer](https://twitter.com/giladmanor), [Jishai Evers](https://twitter.com/Jishai), [Barbara Gian](https://twitter.com/barb_gian)


Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
