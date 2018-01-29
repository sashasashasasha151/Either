#pragma once

#include <iostream>
#include <algorithm>
#include <iterator>

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
    char data[std::max(sizeof(L), sizeof(R))];
    L *left = nullptr;
    R *right = nullptr;
    bool bl = false;
    bool br = false;
public:

    Either(L const &l) {
        left = (L *) (&data);
        *left = l;
        bl = true;
    }

    Either(R const &r) {
        right = (R *) (&data);
        *right = r;
        br = true;
    }

    Either(L &&l) {
        left = (L *) (&data);
        new(&*left) L(std::move(l));
        bl = true;
    }

    Either(R &&r) {
        right = (R *) (&data);
        new(&*right) R(std::move(r));
        br = true;
    }

    Either(const Either<L, R> &other) {
        std::copy(std::begin(other.data), std::end(other.data), std::begin(data));
        if (other.bl) {
            bl = true;
            left = (L *) (&data);
        } else {
            br = true;
            right = (R *) (&data);
        }
    }

    Either<L, R> &operator=(const Either<L, R> &other) {
        if (this == &other) {
            return *this;
        }
        std::copy(std::begin(other.data), std::end(other.data), std::begin(data));
        if (bl) {
            if (other.bl) {
                left = (L *) (&data);
            } else {
                left = nullptr;
                br = true;
                bl = false;
                right = (R *) (&data);
            }
        } else {
            if (other.br) {
                right = (R *) (&data);
            } else {
                right = nullptr;
                br = false;
                bl = true;
                left = (L *) (&data);
            }
        }
        return *this;
    }

    Either(Either<L, R> &&other) {
        std::copy(std::begin(other.data), std::end(other.data), std::begin(data));
        delete [] other.data;
        if (other.bl) {
            left = (L *) (&data);
            other.left = nullptr;
            other.bl = false;
            bl = true;
        } else {
            right = (R *) (&data);
            other.right = nullptr;
            other.br = false;
            br = true;
        }
    }

    Either<L, R> &operator=(Either<L, R> &&other) {
        if (this == &other) {
            return *this;
        }
        std::copy(std::begin(other.data), std::end(other.data), std::begin(data));
        if (bl) {
            if (other.bl) {
                left = (L *) (&data);
                other.left = nullptr;
                other.bl = false;
            } else {
                left = nullptr;
                br = true;
                bl = false;
                right = (R *) (&data);
                other.br = false;
            }
        } else {
            if (other.br) {
                right = (R *) (&data);
                other.right = nullptr;
                other.br = false;
            } else {
                right = nullptr;
                br = false;
                bl = true;
                left = (L *) (&data);
                other.bl = false;
            }
        }
        return *this;
    }

    Either(const Left<L> &other) {
        left = (L *) (&data);
        *left = other.data;
        bl = true;
    }

    Either<L, R> &operator=(const Left<L> &other) {
        left = (L *) (&data);
        *left = other.data;
        bl = true;
    };

    Either(const Right<R> &other) {
        right = (R *) (&data);
        *right = other.data;
        br = true;
    }

    Either<L, R> &operator=(const Right<R> &other) {
        right = (R *) (&data);
        *right = other.data;
        br = true;
    };

    Either(Left<L> &&other) {
        left = (L *) (&data);
        *left = std::move(other.data);
        bl = true;
    }

    Either<L, R> &operator=(Left<L> &&other) {
        left = (L *) (&data);
        *left = std::move(other.data);
        bl = true;
    };

    Either(Right<R> &&other) {
        right = (R *) (&data);
        *right = std::move(other.data);
        br = true;
    }

    Either<L, R> &operator=(Right<R> &&other) {
        right = (R *) (&data);
        *right = std::move(other.data);
        br = true;
    };

    ~Either() {
        delete[] data;
        if (bl) {
            left = nullptr;
        } else {
            right = nullptr;
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
            return *left;
        } else {
            throw std::runtime_error("No left element!");
        }
    }

    R &GetRight() {
        if (br) {
            return *right;
        } else {
            throw std::runtime_error("No right element!");
        }
    }
};