//: [Previous](@previous)

import Foundation

print("Start")

DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
    print("End")
})

// 더 단순해짐
DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
    print("End")
}
