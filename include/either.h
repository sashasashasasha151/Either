#pragma once

#include <iostream>

template<typename T>
struct Left {
    Left(T const &v) {
        data = v;
    }

    Left(T &&v) {
        data = std::move(v);
    }

    T data;
};

template<typename T>
struct Right {
    Right(T const &v) {
        data = v;
    }

    Right(T &&v) {
        data = std::move(v);
    }

    T data;
};

template<typename L, typename R>
class Either {
    union {
        L left;
        R right;
    };
    bool bl = false;
    bool br = false;
public:

    Either(L const &l) {
        left = l;
        bl = true;
    }

    Either(R const &r) {
        right = r;
        br = true;
    }

    Either(L &&l) {
        new(&left) L(std::move(l));
        bl = true;
    }

    Either(R &&r) {
        new(&right) R(std::move(r));
        br = true;
    }

    Either(const Either<L, R> &other) {
        if (other.bl) {
            bl = true;
            new(&left) L(other.left);
        } else {
            br = true;
            new(&right) R(other.right);
        }
    }

    Either<L, R> &operator=(const Either<L, R> &other) {
        if (this == &other) {
            return *this;
        }
        if (bl) {
            if (other.bl) {
                left = other.left;
            } else {
                left.~L();
                br = true;
                bl = false;
                new(&right) R(other.right);
            }
        } else {
            if (other.br) {
                right = other.right;
            } else {
                right.~R();
                br = false;
                bl = true;
                new(&left) L(other.left);
            }
        }
        return *this;
    }

    Either(Either<L, R> &&other) {
        if (other.bl) {
            new(&left) L(std::move(other.left));
            other.bl = false;
            bl = true;
        } else {
            new(&right) R(std::move(other.right));
            other.br = false;
            br = true;
        }
    }

    Either<L, R> &operator=(Either<L, R> &&other) {
        if (this == &other) {
            return *this;
        }
        if (bl) {
            if (other.bl) {
                left = std::move(other.left);
                other.bl = false;
            } else {
                left.~L();
                br = true;
                bl = false;
                new(&right) R(std::move(other.right));
                other.br = false;
            }
        } else {
            if (other.br) {
                right = std::move(other.right);
                other.br = false;
            } else {
                right.~R();
                br = false;
                bl = true;
                new(&left) L(std::move(other.left));
                other.bl = false;
            }
        }
        return *this;
    }

    Either(const Left<L> &other) {
        left = other.data;
        bl = true;
    }

    Either<L, R> &operator=(const Left<L> &other) {
        left = other.data;
        bl = true;
    };

    Either(const Right<R> &other) {
        right = other.data;
        br = true;
    }

    Either<L, R> &operator=(const Right<R> &other) {
        right = other.data;
        br = true;
    };

    Either(Left<L> &&other) {
        left = std::move(other.data);
        bl = true;
    }

    Either<L, R> &operator=(Left<L> &&other) {
        left = std::move(other.data);
        bl = true;
    };

    Either(Right<R> &&other) {
        right = std::move(other.data);
        br = true;
    }

    Either<L, R> &operator=(Right<R> &&other) {
        right = std::move(other.data);
        br = true;
    };

    ~Either() {
        if (bl) {
            left.~L();
        } else {
            right.~R();
        }
    }

    bool IsLeft() {
        return bl;
    }

    bool IsRight() {
        return br;
    }

    L &GetLeft() {
        if (bl) {
            return left;
        } else {
            throw std::runtime_error("No left element!");
        }
    }

    R &GetRight() {
        if (br) {
            return right;
        } else {
            throw std::runtime_error("No right element!");
        }
    }
};