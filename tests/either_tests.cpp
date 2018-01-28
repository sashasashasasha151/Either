#pragma once

#include "either.h"
#include "test_classes.h"

#include <gtest/gtest.h>

TEST(either, Left) {
    Either<int, char> left = Left(12345);
    ASSERT_TRUE(left.IsLeft());
    ASSERT_FALSE(left.IsRight());
    ASSERT_EQ(12345,left.GetLeft());
    ASSERT_ANY_THROW(left.GetRight());
}

TEST(either, Right) {
    char c = 'c';
    Either<int, char> right = Right(c);
    ASSERT_FALSE(right.IsLeft());
    ASSERT_TRUE(right.IsRight());
    ASSERT_EQ('c',right.GetRight());
    ASSERT_ANY_THROW(right.GetLeft());
}

TEST(either, Non_copy_type) {
    NoCopy t = NoCopy();
    Either<NoCopy, char> test_copy = Left(std::move(t));

    ASSERT_EQ(11,test_copy.GetLeft().Get());

    Either<NoCopy, char> test_copy1 = std::move(test_copy);

    ASSERT_EQ(11,test_copy1.GetLeft().Get());
    ASSERT_ANY_THROW(test_copy.GetLeft().Get());
}

//TEST(either, Non_move_type) {
//    NoMove t;
//    Either<NoMove, char> test_move = Left(t);
//
//    ASSERT_EQ(12,test_move.GetLeft().Get());
//
//    Either<NoMove, char> test_move1 = test_move;
//
//    ASSERT_EQ(12,test_move1.GetLeft().Get());
//    ASSERT_EQ(12,test_move.GetLeft().Get());
//}

//TEST(either, No_def_contructor) {
//    NoDefConstructor n = NoDefConstructor(13);
//    Either<NoDefConstructor, char> test_constr = Left(n);
//    ASSERT_EQ(13,test_constr.GetLeft().Get());
//}