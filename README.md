Navigation
=================================

- Prints out position of a robot based on instructions within M columns and N rows.
- Command to create grid : 
  - 53    (will generate 5 X 3 matrix)
  - 34 55 (will generate 34 X 55 matrix)

RubyGems Environment
=================================
  - RUBYGEMS VERSION: 2.4.5.1
  - RUBY VERSION: 2.2.3 (2015-08-18 patchlevel 173) [x86_64-darwin14]
  - RSpec 3.2.0

Run
=================================
$ruby run.rb

- Enter MXN grid: 53
  - (5 X 3 matrix generated)
- Enter Position and Instructions: (x for exit): 32N FRRFLLFFRRFLL
  - Position: 33N
- Enter Position and Instructions: (x for exit) 11E RFRFRFRF
  - Position: 11E
- ............
- ............

Run Spec
=================================
$bundle exec rspec

Issues with existing sample
=================================

1) Position 03W  with instructions LLFFFLFLFL for 5 X 3 matrix

- Input: 03W LLFFFLFLFL
- Sample Output: 23S (wrong)
- Actual : 24S (right)

2) Position 03W  with instructions LLFFFLFLFLF for 5 X 3 matrix

- Input: 03W LLFFFLFLFLF
- Actual : 23SLOST (right)

