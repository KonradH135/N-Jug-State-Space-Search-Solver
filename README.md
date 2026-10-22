# N-Jug-State-Space-Search-Solver

The Water Jug Problem Solver project is an efficient C++23 implementation that solves the generalized water pouring problem. The program calculates the minimum number of operations (filling from the tap, emptying into the sink, or pouring between cups) required to reach a precisely defined final state for $n$ cups, or returns -1 if this state is mathematically unreachable.

- BFS (Breadth-First Search) Algorithm: The state-space search engine guarantees finding the shortest possible sequence of steps (minimum number of operations) by exploring the graph along successive depth layers.
- Efficient Visited State Tracking: The solution utilizes the `std::unordered_set` structure with a custom `VectorHash` hashing functor (using bitwise operations inspired by the Boost library's `hash_combine` function), which allows for quick duplicate elimination and prevents infinite loops.
- Mathematical Heuristics: Before running the complex BFS search, the program verifies the mathematical reachability of the goal by checking if the target water amounts are multiples of the Greatest Common Divisor (GCD) of the cups' capacities, allowing for immediate rejection of invalid data. Additionally, a heuristic verifies the problem's constraint that at least one cup must be completely empty or full.

The application is designed to be compiled using the C++23 standard and requires strict flags to ensure operational safety.
