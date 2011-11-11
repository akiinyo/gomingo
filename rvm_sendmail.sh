#!/bin/sh

gomingo=~/ruby_projects/gomingo/
ruby=~/.rvm/wrappers/ruby-1.9.2-p290/ruby

cd $gomingo
$ruby sendmail.rb
