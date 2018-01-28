#pragma once

class NoCopy {
    int data = 11;
public:
    NoCopy() = default;

    NoCopy(const NoCopy &) = delete;

    NoCopy &operator=(const NoCopy &) = delete;

    NoCopy(NoCopy &&) = default;

    NoCopy &operator=(NoCopy &&) = default;

    ~NoCopy() = default;

    int Get() {
        return data;
    }
};

class NoMove {
    int data = 12;
public:
    NoMove() = default;

    NoMove(const NoMove &) = default;

    NoMove &operator=(const NoMove &) = default;

    NoMove(NoMove &&) = delete;

    NoMove &operator=(NoMove &&) = delete;

    ~NoMove() = default;

    int Get() {
        return data;
    }
};

class NoDefConstructor {
    int data = 13;
public:
    NoDefConstructor(int a) {
        data = a;
    }
    int Get() {
        return data;
    }
};