#!/usr/bin/env ruby
n = 5
n = ARGV.first.to_i if ARGV.first

puts "Language Benchmark Research: Sorting where n=#{n}"

puts `clang sorting.m -lobjc -framework Foundation -ofast -o objc_sorting.out && ./objc_sorting.out #{n}`
puts `swift -O sorting.swift #{n}`
puts `gcc sorting.c && ./a.out #{n}`
puts `g++ sorting.cc && ./a.out #{n}`
puts `go run sorting.go #{n}`
