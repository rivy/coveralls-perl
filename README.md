[![Build Status](https://travis-ci.org/kan/coveralls-perl.png?branch=master)](https://travis-ci.org/kan/coveralls-perl)
# NAME

Devel::Cover::Report::Coveralls - coveralls backend for Devel::Cover

# USAGE

## Travis CI

1. Add your repo to coveralls. https://coveralls.io/repos/new

2. Add setting to .travis.yaml (before\_install and script section)

```
language: perl
perl:
    - 5.16.3
    - 5.14.4
before_install:
    cpanm -n Devel::Cover::Report::Coveralls
script:
    perl Build.PL && ./Build build && cover -test -report coveralls
```

3. push new change to github

4. updated coveralls your project page

<div>
    <img src="http://kan.github.io/images/p5-ltsv.png" />
</div>

## another CI

1. Get the "REPO TOKEN" from your project settings page in coveralls.

2. Add "REPO TOKEN" value to the CI by either:

    1. Set the environment variable "repo_token", "COVERALLS_REPO_TOKEN", or "COVERALLS_TOKEN" to the value of "REPO TOKEN"; or

    2. Add `repo_token: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx` to .coveralls.yml (don't add this to public repo); * deprecated

3. Run CI.

# DESCRIPTION

[https://coveralls.io/](https://coveralls.io/) is service to publish your coverage stats online with a lot of nice features. This module provides seamless integration with [Devel::Cover](https://metacpan.org/pod/Devel::Cover) in your perl projects.

# SEE ALSO

[https://coveralls.io/](https://coveralls.io/)
[https://coveralls.io/docs](https://coveralls.io/docs)
[https://github.com/coagulant/coveralls-python](https://github.com/coagulant/coveralls-python)
[Devel::Cover](https://metacpan.org/pod/Devel::Cover)

## EXAMPLE

[https://coveralls.io/r/kan/p5-smart-options](https://coveralls.io/r/kan/p5-smart-options)

# LICENSE

Copyright (C) Kan Fushihara

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

Kan Fushihara <kan.fushihara@gmail.com>
