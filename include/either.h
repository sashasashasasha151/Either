#pragma once

#include <iostream>

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

    ~Either() {
        if (bl) {
            left.~L();
            bl = false;
        } else {
            right.~R();
            br = false;
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

template<typename L, typename R = int>
Either<L, R> Left(L const &l) {
    return Either<L, R>(l);
};

template<typename L, typename R>
Either<L, R> Right(R const &r) {
    return Either<L, R>(r);
};

template<typename L, typename R>
Either<L, R> Left(L &&l) {
    return Either<L, R>(std::move(l));
};

template<typename L, typename R>
Either<L, R> Right(R &&r) {
    return Either<L, R>(std::move(r));
};