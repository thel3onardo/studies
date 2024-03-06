package org.example.kotlin_by_example

fun main() {
    println("Hello, world")

    //Calling function using named arguments and therefore change the order of them
    printMessageWithPrefix(prefix = "AuroraHG", message = "This is my message")
    printMessageWithPrefix("This is the message", "AuroraHG")

    //To call a function with an vararg argument, I need to use named parameters to distinct the arguments.
    getMessagesWithPrefix("First message", "Second message", "Third message", prefix = "MyPrefix")
}

//single expression function
fun sum (x: Int, y: Int) = x + y;

fun printMessageWithPrefix(message: String, prefix: String = "DefaultPrefix"): String {W
    return "[$prefix] $message"
}

//a function with vararg
fun getMessagesWithPrefix (vararg messages: String, prefix: String): String {
    //under the hood, a vararg argument is transformed into an Array

    for (message in messages) {
        println("[$prefix] $message")
    }
}