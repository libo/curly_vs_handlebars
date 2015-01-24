## Curly VS FlavourSaver (handlebars)

Performance stress playground and comparison between:
- https://github.com/zendesk/curly
- https://github.com/jamesotron/FlavourSaver

Given this simple template (valid both for Curly and Handlebars)
```hbs
<h1>Hello I am Curly</h1>

<p>
I can do Fibonacci to 10: {{fibonacci}}
</p>

<p>
I can do Fibonacci all the way to 20: {{fibonacci n='20'}}
</p>

My author is {{user.identity.name}}
```

This is the result using Curly
```
ab -n 100 http://127.0.0.1:3000/curly/index

This is ApacheBench, Version 2.3 <$Revision: 1554214 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 127.0.0.1 (be patient).....done


Server Software:        WEBrick/1.3.1
Server Hostname:        127.0.0.1
Server Port:            3000

Document Path:          /curly/index
Document Length:        1164 bytes

Concurrency Level:      1
Time taken for tests:   4.385 seconds
Complete requests:      100
Failed requests:        0
Total transferred:      194800 bytes
HTML transferred:       116400 bytes
Requests per second:    22.80 [#/sec] (mean)
Time per request:       43.850 [ms] (mean)
Time per request:       43.850 [ms] (mean, across all concurrent requests)
Transfer rate:          43.38 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:    40   44   2.6     43      58
Waiting:       40   44   2.6     43      58
Total:         41   44   2.6     43      58

Percentage of the requests served within a certain time (ms)
  50%     43
  66%     45
  75%     46
  80%     46
  90%     47
  95%     48
  98%     50
  99%     58
 100%     58 (longest request)
```

This is the result using Handlebar:
```
ab -n 100 http://127.0.0.1:3000/

This is ApacheBench, Version 2.3 <$Revision: 1554214 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 127.0.0.1 (be patient).....done


Server Software:        WEBrick/1.3.1
Server Hostname:        127.0.0.1
Server Port:            3000

Document Path:          /
Document Length:        1168 bytes

Concurrency Level:      1
Time taken for tests:   4.508 seconds
Complete requests:      100
Failed requests:        0
Total transferred:      195200 bytes
HTML transferred:       116800 bytes
Requests per second:    22.18 [#/sec] (mean)
Time per request:       45.080 [ms] (mean)
Time per request:       45.080 [ms] (mean, across all concurrent requests)
Transfer rate:          42.29 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:    42   45   2.5     44      51
Waiting:       41   45   2.5     44      51
Total:         42   45   2.5     44      51

Percentage of the requests served within a certain time (ms)
  50%     44
  66%     46
  75%     47
  80%     48
  90%     49
  95%     50
  98%     51
  99%     51
 100%     51 (longest request)
```
