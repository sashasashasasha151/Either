#pragma once

#include <iostream>
#include <algorithm>
#include <iterator>

template<typename T>
struct Left {
    Left(T const &v) {
        dt = (T *) (&data);
        *dt = v;
    }

    Left(T &&v) {
        dt = (T *) (&data);
        *dt = std::move(v);
    }

    ~Left() {
        dt = nullptr;
        delete[] data;
    }

    char data[sizeof(T)];
    T *dt = nullptr;
};

template<typename T>
struct Right {
    Right(T const &v) {
        dt = (T *) (&data);
        *dt = v;
    }

    Right(T &&v) {
        dt = (T *) (&data);
        *dt = std::move(v);
    }

    ~Right() {
        dt = nullptr;
        delete[] data;
    }

    char data[sizeof(T)];
    T *dt = nullptr;
};

template<typename L, typename R>
class Either {
    char data[std::max(sizeof(L), sizeof(R))];
    L *left = nullptr;
    R *right = nullptr;
    bool bl = false;
    bool br = false;
public:
    Either(const Either<L, R> &other) {
        if (other.bl) {
            bl = true;
            left = (L *) (&data);
            *left = *other.left;
        } else {
            br = true;
            right = (R *) (&data);
            *right = *other.right;
        }
    }

    Either<L, R> &operator=(const Either<L, R> &other) {
        if (this == &other) {
            return *this;
        }
        if (bl) {
            if (other.bl) {
                left = (L *) (&data);
                *left = *other.left;
            } else {
                left = nullptr;
                br = true;
                bl = false;
                right = (R *) (&data);
                *right = *other.right;
            }
        } else {
            if (other.br) {
                right = (R *) (&data);
                *right = *other.right;
            } else {
                right = nullptr;
                br = false;
                bl = true;
                left = (L *) (&data);
                *left = *other.left;
            }
        }
        return *this;
    }

    Either(Either<L, R> &&other) {
        delete[] other.data;
        if (other.bl) {
            left = (L *) (&data);
            *left = std::move(*other.left);
            other.left = nullptr;
            other.bl = false;
            bl = true;
        } else {
            right = (R *) (&data);
            *right = std::move(*other.right);
            other.right = nullptr;
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
                left = (L *) (&data);
                *left = std::move(*other.left);
                other.left = nullptr;
                other.bl = false;
            } else {
                left = nullptr;
                br = true;
                bl = false;
                right = (R *) (&data);
                *right = std::move(*other.right);
                other.br = false;
            }
        } else {
            if (other.br) {
                right = (R *) (&data);
                *right = std::move(*other.right);
                other.right = nullptr;
                other.br = false;
            } else {
                right = nullptr;
                br = false;
                bl = true;
                left = (L *) (&data);
                *left = std::move(*other.left);
                other.bl = false;
            }
        }
        return *this;
    }

    Either(const Left<L> &other) {
        std::copy(std::begin(other.data), std::end(other.data), std::begin(data));
        left = (L *) (&data);
        bl = true;
    }

    Either<L, R> &operator=(const Left<L> &other) {
        if (this == &other) {
            return *this;
        }
        std::copy(std::begin(other.dt), std::end(other.dt), std::begin(data));
        left = (L *) (&data);
        bl = true;
        return *this;
    };

    Either(const Right<R> &other) {
        std::copy(std::begin(other.data), std::end(other.data), std::begin(data));
        right = (R *) (&data);
        br = true;
    }

    Either<L, R> &operator=(const Right<R> &other) {
        if (this == &other) {
            return *this;
        }
        std::copy(std::begin(other.data), std::end(other.data), std::begin(data));
        right = (R *) (&data);
        br = true;
        return *this;
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