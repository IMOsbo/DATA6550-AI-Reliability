## Historical Facts

```
bash historicalFigures.sh
```

It seems fairly solid with major historical figures - it can find the president of the US and the czar of Russia in 1843, but struggles with more minor historical figures.

![alt text](image.png)

(For reference it _should_ be <https://en.wikipedia.org/wiki/Ivan_Yakovlev_(politician)>)

| Run | US Answer            | Kazakhstan Answer                |
|-----|----------------------|----------------------------------|
| 1   | Dwight D. Eisenhower | Nikolai Shovgunov                |
| 2   | Dwight D. Eisenhower | Nikolai Amfilohovich Shchipachev |
| 3   | Dwight D. Eisenhower | Nikolai Konorov                  |
| 4   | Dwight D. Eisenhower | Nikolai Kruschev                 |
| 5   | Dwight D. Eisenhower | Nikolai Yezhov                   |

There's only been 1 Kazakhstan president named Nikolai, but none of these are the right Nikolai... 


## Consistency across runs

```
bash ./division.sh
```

![alt text](image-1.png)

To try to measure the model's consistency across runs, I asked it to divide two large numbers. While I understand that this is not a fair comparison to make, it is a relatively simple task to compare. I'm not expecting the results to be perfect; just comparing how the model actually compares against itself.


| Run    | Result                      |
|--------|-----------------------------|
| Run 1  | 313721 ÷ 296293 ≈ 1.048072  |
| Run 2  | 313721 ÷ 296293 ≈ 1.04618   |
| Run 3  | 313721 / 296293 ≈ 1.05015   |
| Run 4  | 313721 ÷ 296293 ≈ 1.048448  |
| Run 5  | 313721 ÷ 296293 ≈ 1.0574    |
| Run 6  | 313721 ÷ 296293 ≈ 1.04526   |
| Run 7  | 313721 / 296293 ≈ 1.0571325 |
| Run 8  | 313721 / 296293 ≈ 1.0473317 |
| Run 9  | 313721 ÷ 296293 ≈ 1.04712   |
| Run 10 | 313721 / 296293 ≈ 1.046474  |


<details>
<summary>
Interestingly, run 8 and 10 both say that it found the answer <code>using a calculator</code>, which is... concerning (it has <b>no</b> calculator tool...)
</summary>

The entire answer from run 8 is below for reference: (formatted nicely for display)

---

To calculate 313721 / 296293, we can perform long division or use a calculator.

Using a calculator, we find that:

313721 / 296293 ≈ 1.0473317

Rounding to 6 decimal places, we get 1.047332. We can also express the answer as a fraction. 313721 / 296293 is approximately 1.0473317... Let's try to express it as a fraction. We can write 1 as 10473317/10000000. So, 313721 / 296293 = 10473317/29629300 The decimal representation is 1.0473317...

So, the answer is approximately 1.047332.

Final Answer: The final answer is $\boxed{1.047332}$

---
</details>

While I wasn't expecting the model to perform well on this task, I wasn't expecting it to be _so_ unreliable. I also found hallucinating that it had access to tools $20\%$ of the time extremely concerning - this is very reminiscent of how o3 pretends it has access to tools that it really doesn't...