# sample-sinatra-app

Sample Ruby Sinatra App.

## Apache Bench Result

```
* Puma version: 6.5.0 ("Sky's Version")
* Ruby version: ruby 3.3.6 (2024-11-05 revision 75015d4c1f) [arm64-darwin24]
*  Min threads: 0
*  Max threads: 5
```

```console
❯ ab -n 10 -c 5 http://127.0.0.1:4567/slow
...(snip)...
Percentage of the requests served within a certain time (ms)
  50%   5018
  66%   5020
  75%   5020
  80%   5021
  90%   5021
  95%   5021
  98%   5021
  99%   5021
 100%   5021 (longest request)
```

```console
❯ ab -n 10 -c 6 http://127.0.0.1:4567/slow
...(snip)...
Percentage of the requests served within a certain time (ms)
  50%   5018
  66%   5018
  75%   5019
  80%   5019
  90%  10028
  95%  10028
  98%  10028
  99%  10028
 100%  10028 (longest request)
```
