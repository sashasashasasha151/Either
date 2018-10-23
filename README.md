# "Either" type C++

Example of Either type implementation that holding a value of one of two types.
### Semantics
---------
```c++
template<typename L, typename R>
class Either {
public:
    Either(const Either<L, R> &other);
    
    Either(Either<L, R> &&other);

    Either<L, R> &operator=(const Either<L, R> &other);
    
    Either(const Left<L> &other);
    
    Either(const Right<R> &other);

    Either<L, R> &operator=(Either<L, R> &&other);

    Either<L, R> &operator=(const Left<L> &other);

    Either<L, R> &operator=(const Right<R> &other);

    ~Either();

    bool IsLeft();

    bool IsRight();

    L &GetLeft();

    R &GetRight();
};
```

### Uses
---
```c++
Either<A,B> either_a_or_b;
if(either_a_or_b.IsLeft()) {
    std::cout << either_a_or_b.GetLeft();
} else {
    std::cout << either_a_or_b.GetRight();
}
```

### Tests
---
You can run google tests using [___main.cpp___](https://gitlab.com/sashasashasasha151/Either/blob/master/source/main.cpp) and add your own to [___either_tests.cpp___](https://gitlab.com/sashasashasasha151/Either/blob/master/tests/either_tests.cpp)