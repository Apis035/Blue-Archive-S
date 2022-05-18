# Coding Style
I'm taking advantage of **Game Maker 8**'s inconsistent syntax to lazily writing code while also keeping a code styling rule is used to make the code writing consistent.

This will make the code cleaner and faster to type but also makes it look uncomfortable if you are coming from C/C++/Java or other similar language.

I'm trying to make code writing similar to writing Lua code where the code is clean and easy to understand. You can even swap curly brackets in GML with `begin` and `end` as equivalent to Lua's `then` and `end`.

# Guideline

- Don't use `;` at the end of a statement.
- No parantheses on `if`, `while`, `until`, `switch`, `with`, `repeat`, `return` statement expression.
- If an `if` statement block contain only single statement, put the statement on next line with indent and don't use curly braces. Unless it is a keyword.


```gml
if condition
    doSomething()

if condition2 break
```

- If an `if` condition contains multiple statement, use brackets.
- If `else` keyword is used always use curly braces unless both before and after `else` is a single statement.
- Opening bracket belong at the end of line.

```gml
if condition {
    doThis()
    doThat()
} else {
    doSomething()
}

if condition2
    doSomething()
else
    exit
```

- Use `=` instead of `==` for comparisons. Game Maker 8 will treat `=` inside another `=` as comparison inside an assignment.
```gml
atMaxSpeed = speed = 10 //true
```
- Use `and`, `or`, `xor` boolean operator instead of `&&`, `||`, `^^`.
- Use `'` instead of `"` for writing string.
- Tab out close assignments, statements, and function parameters to align them up where possible.

```gml
name     = 'Shiroko'
shooting = false

speed     += min(speed, maxSpeed)
direction  = 30

if doneCalculation   doThis()
if x = 10 and y > 20 doThat()

draw_sprite(sprite,      0, x + 30, y)
draw_sprite(spriteExtra, 2, x,    , 60)
```

- Don't indent `switch` blocks.
- If `case` block contain only single statement, put it on the same line (along with `break` if used). If contain multiple statement, put in on the next line.

```gml
switch status {
case 1: doSomething() break
case 2:
    doThis()
    doThat()
    break
}
```