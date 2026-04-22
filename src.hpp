#pragma once
// Minimal shim for ACMOJ harness: provide sjtu::vector via std::vector
#include <vector>
#include <memory>

namespace sjtu {

template <class T, class Allocator = std::allocator<T>>
using vector = std::vector<T, Allocator>;

}
