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
```

This is the result on Curly
```
ab -n 100 http://127.0.0.1:3000/curly/index                                                                                    21:28:40
This is ApacheBench, Version 2.3 <$Revision: 1554214 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 127.0.0.1 (be patient).....done


Server Software:        WEBrick/1.3.1
Server Hostname:        127.0.0.1
Server Port:            3000

Document Path:          /curly/index
Document Length:        1145 bytes

Concurrency Level:      1
Time taken for tests:   4.444 seconds
Complete requests:      100
Failed requests:        0
Total transferred:      192900 bytes
HTML transferred:       114500 bytes
Requests per second:    22.50 [#/sec] (mean)
Time per request:       44.435 [ms] (mean)
Time per request:       44.435 [ms] (mean, across all concurrent requests)
Transfer rate:          42.39 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:    41   44   2.5     43      52
Waiting:       41   44   2.5     43      52
Total:         41   44   2.5     43      52

Percentage of the requests served within a certain time (ms)
  50%     43
  66%     44
  75%     47
  80%     47
  90%     48
  95%     49
  98%     50
  99%     52
 100%     52 (longest request)
```

This is the result using Handlebar:
```
ab -n 100 http://127.0.0.1:3000/                                                                                               21:28:32
This is ApacheBench, Version 2.3 <$Revision: 1554214 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 127.0.0.1 (be patient).....done


Server Software:        WEBrick/1.3.1
Server Hostname:        127.0.0.1
Server Port:            3000

Document Path:          /
Document Length:        1149 bytes

Concurrency Level:      1
Time taken for tests:   4.555 seconds
Complete requests:      100
Failed requests:        0
Total transferred:      193300 bytes
HTML transferred:       114900 bytes
Requests per second:    21.95 [#/sec] (mean)
Time per request:       45.552 [ms] (mean)
Time per request:       45.552 [ms] (mean, across all concurrent requests)
Transfer rate:          41.44 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:    42   45   2.5     45      52
Waiting:       42   45   2.5     44      52
Total:         42   46   2.5     45      53

Percentage of the requests served within a certain time (ms)
  50%     45
  66%     46
  75%     48
  80%     48
  90%     50
  95%     50
  98%     52
  99%     53
 100%     53 (longest request)
```
