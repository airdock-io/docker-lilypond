# Docker Lilypond [![](https://images.microbadger.com/badges/image/airdock/lilypond:latest.svg)](https://microbadger.com/images/airdock/lilypond:latest "Get your own image badge on microbadger.com")


Docker Image for [Lilypond](http://lilypond.org/index.fr.html)

Purpose of this image is to provide [lilypond software](http://lilypond.org/index.fr.html), it's a music recording software, designed to produce scores of optimal quality.


> Name: airdock/lilypond

Few link:
 - http://lilypond.org
 - https://github.com/jhuckaby/Cronicle

# Tags

- latest: LilyPond 2.18.2

# Usage

## Print lilypond version
```
  docker run airdock/lilypond:latest
```

## use a a local file
```
  docker run --rm -v $(PWD):/srv/ruby/lilypond:rw airdock/lilypond:latest test.ly -o test.pdf
```

# Change Log

# latest

- install lilypong using lyp gem tools
- install lilyjazz plugin
- use user ruby:ruby
- based on our [airdock/rvm:latest](https://github.com/airdock-io/docker-rvm) image


# MIT License

```
The MIT License (MIT)

Copyright (c) 2015 Airdock.io

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
