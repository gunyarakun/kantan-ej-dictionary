# encoding: utf-8
require 'csv'
require 'json'

words = {}

CSV.foreach('./ancdic.tsv', :col_sep => "\t", :quote_char => "\b") {|row|
  lemma, ja, rank, freq = row
  jas = ja.split(',').map{|s|
    s.strip
  }
  words[lemma] = {
    'ja' => jas,
    'rank' => rank.to_i,
    'freq' => freq.to_i,
  }
}
puts JSON.pretty_generate(words)
