# Game Of Life

# Problem Description

The universe of the Game of Life is an infinite two-dimensional orthogonal grid of square cells, each of which is in one of two possible states, alive or dead. Every cell interacts with its eight neighbours, which are the cells that are horizontally, vertically, or diagonally adjacent. At each step in time, the following transitions occur:

1. Any live cell with fewer than two live neighbours dies, as if caused by under-population.
2. Any live cell with two or three live neighbours lives on to the next generation.
3. Any live cell with more than three live neighbours dies, as if by over-population.
4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.


The initial pattern constitutes the seed of the system. The first generation is created by applying the above rules simultaneously to every cell in the seed—births and deaths occur simultaneously, and the discrete moment at which this happens is sometimes called a tick (in other words, each generation is a pure function of the preceding one). The rules continue to be applied repeatedly to create further generations.


# Dev Enironment Setup

1. This porject was build and tested on OS X El Capitan

2. Ruby version - 2.2.2 

3. gems used : rpsec, rake, bundle 

# Build and Run Instructions

For building the project and downloading the required gems run the following :

```ruby 
bundle install
```

For running all the tests of the project run the following command :

```ruby
bundle exec rspec
```


