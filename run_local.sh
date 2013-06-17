#!/bin/sh

export LC_ALL=en_US.UTF-8
bundle exec rake compile
bundle exec jekyll serve
