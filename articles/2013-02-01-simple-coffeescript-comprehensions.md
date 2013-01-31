---
title: Simple CoffeeScript Comprehensions
author: Michael Joseph Kramer
date: 2013/02/01
description: A tutorial for CoffeeScript Comprehensions

Even the most ardent CoffeeScript critic might have to admit that the language provides some syntax improvements. One of the most useful features is array comprehensions. Quite simply, a comprehension allows you to easily transform one list into another.

## The Deets...
When we write loops, we usually don't think of them as expressions that return a value. Instead, we often run them for their side-effects. Often we are performing some operation on each element, but sometimes we want to change the array or collection into something different instead of operating on it.

In many languages, like JavaScript, you'll often see something like "<code>array.push(element)</code>" inside of a loop body, but we have a shortcut. In CoffeeScript, (most) everything is an expression, meaning that loops return a value. If you set a loop equal to a variable, that variable's value will be equal to the return value of the last loop iteration. If you want to capture the return value of each iteration, you can wrap the loop in parenthesis.

In this code, we have an array of object literals written in CoffeeScript:
<script src="https://gist.github.com/987e7e33ce613fda2c3e.js"></script>

On line 23, you'll see the loop. It simply rolls over each object in the array and returns the name of the character. The parenthesis capture the result of each iteration in an array, so the value of names is actually an array of the names in each object. The trick lies in the parathesis though; if you don't have them, names will just equal the name from the last loop iteration, which in this case would equal 'Marsellus Wallace'.

## Ooohhhh, and Filtering
Another useful loop trick we can use is the <code>when</code> keyword. It allows you to tack a boolean expression onto the end of the loop that must evaulate to <code>true</code>, or the loop will skip the iteration. If you needed an array of the names that had the occupation of 'gangster', you could use when to save yourself an if statement inside the loop.
<script src="https://gist.github.com/01d0f33a7e176ac7db58.js"></script>

May you never write <code>array.push(element)</code> again! Happy looping.
