# Adventure 1b: Equivalent resistance: Resistors in parallel

## Goal


Understand **equivalent resistance**.
Simulate a circuit with multiple resistors, connected *in parallel*.
Then, build it on a breadboard.


## Simulate circuit

1. Open [Circuit Simulator](https://falstad.com/circuit/circuitjs.html) and
   load the circuit from [](../adv-series/adv-series.md).
   Here is an example of the finished circuit: [Circuit - Resistors in series](https://falstad.com/circuit/circuitjs.html?ctz=CQAgjCAMB0l3BWcMBMcUHYMGZIA4UA2ATmIxAUgoqoQFMBaMMAKAHcQAWbFL4wiijx8BkdiGzYBnflx4jw4hEK5gBy4TNEsA5nN5b9FMLypiAThKmr1KzmqjI4LAG5XpsydIdmutR2bQCK4UGB7qYTYBftS+MMGWCJH2AoQI3qIgaM56hBgGsnm8CCYB4mGaDhUKYhxJ4SBFCqwcTYbVhhaNeJUCHT4gePAsAA6hAlLCaROEwtjRteNR9RKzUOLTq1PpUWJjs3Nr1ZMSCxs9W9296xzHR2spN1dRm49iAB6NkNL2jSjznEBXHAnBAACVWJ8MGBNNhhDgkICIKCwKCwSgWEA).

1. Use your mouse to drag a selection box around one the simplest subcircuit,
   so you can select multiple components. Copy and paste the simplest
   subcircuit once, so you have three independent subcircuits side-by-side,
   each with its own voltage source and connection to ground.

1. In the copy, add a new resistor *in parallel* with the old one:
   1. Insert one more resistor, above the existing one.
   1. Add wires to connect its two ends to the two ends of the existing
      resistor. This means the new resistor *shares* its two ends with the
      existing resistor, and it is connected between VCC and GND. We call
      these two resistors connected *in parallel*.
   1. Set the resistance of one resistor to $5kΩ$ and the resistance
      of the other resistor to $1.25kΩ = 1250Ω$.

      :::{tip}
      At this point Circuit Simulator may show the resistance as `1.3kΩ`,
      although you have set it at `1.25kΩ`. This happens because it uses a
      single decimal digit to display resistance values by default, so it
      rounds `1.25kΩ` to `1.3kΩ` for display purposes. Click
      **Options --> Other Options...** and set `# of Decimal Digits (short
      format)` to `2`:

      ![Screenshot: Circuit Simulator - Other options - Decimal Digits](sshot-options-digits.png)
      :::

   Your circuit should look something like this:

   ![Screenshot: Circuit Simulator - Resistors in
   parallel](sshot-parallel.png)

   If you would like some help with creating the circuit, see below.

   :::{hint}
   :class: dropdown
   Here is an example of the finished circuit: [Circuit - Resistors in parallel](https://falstad.com/circuit/circuitjs.html?ctz=CQAgjCAMB0l3AWAnC1b0DZwwExxwOwEDMkAHDhigSAKyR10O0CmAtGGAFADuICxHPyRZaOMsKyReIYsSzIFgyeBliJCMKPErpAc37LFhobTBCG0gE6z5-LXR2ap2OFwButhSK-2XDBGYoYJhaDzoCb1FIvxD+IMsoaDCbWhjnEAxaBQcGPDcDDAIhYyLTcxCZSI0Hat01dJ8ylW4+ZuM642tMshqsTtyQMnguAAcIrHkJLMmMCWI46T40nOjZiSXM7Nk5rdWoMZ753bqp2UWZOePp3tjN05PdjM2r2Jm7rgAPTMgFTUycAsEMD+OAECAAErcb4EMAaYgSEi0fj-cFgcEQnDhMgOYw4-aJQKMRKhLg2JAVDJgOB9YL5fQgCklHxMugVSwyankWJcjQ+Tb4lSs4ytRmUny8+rkipnSVnZgjPiCs6C56cmk7CSStXEAgMZW7VlnBYc3X63EOYUOE0Hb5IMSyJAMERIR1AsGQ6GMh3AiAulHgtEYrFAA).
   :::

1. Click **RUN / Stop** to start the simulation. Hover your mouse over each
   one of the two resistors. Notice the voltage drop is *the same* for both
   resistors, because they have the exact same ends, or *terminals*.
   How much is it?

   :::{admonition} Answer
   :class: hint
   :class: dropdown
   It is exactly the same as the voltage of the source, $V = 5V$, because
   the terminals of both resistors coincide with the terminals of the voltage
   source.

   The reason the terminals of the resistors coincide with the terminals
   of the voltage source is that the wires that connect them are *ideal*.
   They have zero resistance and their length does not matter, we can ignore
   them.
   :::

1. Let's call $R_1$ the $5kΩ$ resistor, and $R_2$ the $1.25kΩ$ resistor.
   Hover your mouse over the resistors and notice the current that flows
   through each resistor, $I_1$ and $I_2$ respectively. What are the two
   values, why are they different?

   :::{admonition} Answer
   :class: hint
   :class: dropdown
   We notice that $I_1 = 1mA$ and $I_2 = 4mA$. We expected this because
   the two resistors have the same voltage applied at their terminals,
   $V = 5V$, but have different resistance.
   :::

1. How much is the current that flows through the voltage source?
   Let's call it $I_T$.

   :::{admonition} Answer
   :class: hint
   :class: dropdown
   The current that flows through the voltage source is $I_T = 5mA$.
   :::

1. Change the value of $R_2$ to random values in the range of $1kΩ - 10kΩ$.
   Notice the values of $I_1$ and $I_2$ as you do that.

   :::{tip}
   Click **Draw --> Outputs and Labels --> Add Ammeter**,
   and add one ammeter ("ampere meter") in series with each resistor, two
   meters in total. This way each ammeter will be measuring the current
   flowing inside the branch of the circuit it is part of, one for $R_1$,
   and one for $R_2$.

   Your circuit should look something like this:

   ![Screenshot: Circuit Simulator - Resistors in parallel - Current](sshot-parallel-amp.png)
   :::

1. Did you notice any changes in $I_1$ in the previous step? Why?
   Did you notice any changes in $I_2$ in the previous step?Why?
   What are the values of $I_1$, $I_2$ for $R_2 = 2kΩ$?

   :::{admonition} Answer
   :class: hint
   :class: dropdown
   Current $I_1$ remains constant, no matter how we change $R_2$.
   We expect this because it only depends on the voltage applied to $R_1$
   and the value of $R_1$ via Ohm's Law. Both of these quantities remain
   constant, no matter how we change $R_2$. So:

   $$
   I_1  = {V \over R_1} = {5V \over 5kΩ} = {5V \over {5 \cdot 10^3}Ω}
        = {{5 \cdot 10^{-3}V} \over 5Ω} = 1mA
   $$

   <!-- This may be useful in the future as a nicely aligned example:
   $$
   \begin{align*}
   I_1 &= {V \over R_2} =\\
   \\
       &= {5V \over 5kΩ} =\\
   \\
       &= {5V \over {5 \cdot 10^3}Ω} =\\
   \\
       &= {{5 \cdot 10^{-3}V} \over 5Ω} =\\
   \\
       &= 1mA
   \end{align*}
   $$
   -->
   On the other hand, $I_2$ changes whenever we change $R_2$, and it also
   follows Ohm's law. When $R_2 = 2kΩ$ we notice $I_2 = 2.5mA$, and this is
   what we expect because:

   $$
   I_2  = {V \over R_2} = {5V \over 2kΩ} = {5V \over {2 \cdot 10^3}Ω}
        = {{5 \cdot 10^{-3}V} \over 2Ω} = 2.5mA
   $$
   :::

1. Let's focus on $I_T$, the current flows through the voltage source. Notice
   how it changes when you change the value of $R_2$. Hover over the circuit
   and notice its value when $R_2 = 2kΩ$. How does it relate to $I_1$ and
   $I_2$?

   Notice how the current that flows through the voltage source has two
   different paths to follow when it reaches the positive terminal of the two
   resistors. Some of it flows through $R_1$ and becomes $I_1$, some of
   it flows through $R_2$, and becomes $I_2$. What is the relationship between
   $I_T$, $I_1$, and $I_T2$?

   :::{admonition} Answer
   :class: hint
   :class: dropdown
   When $R_2 = 2kΩ$, we notice that $I_T = 3.5mA$.
   We notice $I_T$ is the *sum* of $I_1 = 1mA$ and $I_2 = 2.5mA$, since it
   splits into $I_1$ and $I_2$ at the positive terminal of the two resistors.
   :::

1. Similarly, notice how current $I_1$ and $I_2$ converge into the negative
   terminal of the resistors, and become $I_T$, the current that flows through
   the voltage source.

   :::{important}
   This is Kirchhoff's first law, or Kirchhoff's *current law*:

   > "The current flowing into a node (or a junction) must be equal to the
   > current flowing out of it."

   In our case this means that:
   $$
   I_T = I_1 + I2
   $$

   and by applying Ohm's law for each resistor independently, we get:
   $$
   I_T = {V \over R_1} + {V \over R_2}
   $$
   :::

1. Let's focus on the simplest subcircuit, the one that has a single resistor
   connected to the voltage source. Try setting different values for its
   resistance until the current that flows through **matches** $I_T = 3.5mA$.
   How big does the single resistor have to be, so it works the same as the
   two separate resistors connected in parallel? This value will be the
   **equivalent** resistance for the two resistors connected in parallel.

   :::{admonition} Answer
   :class: hint
   :class: dropdown
   It needs to be $R_T ~= 1.43kΩ$.
   :::

1. Can we derive a generic way to determine $R_T$ for the two resistors $R_1$
   and $R_2$ connected in parallel?

   :::{important}
   Yes, we can start from Kirchhoff's first law, see above, and apply Ohm's
   law first for the equivalent circuit and then for each resistor
   independently.

   From Kirchhoff's first law we know that:
   $$ I_T = I_1 + I_2 $$

   From Ohm's law for the equivalent circuit we know that:
   $$ I_T = {V_T \over R_T} $$

   From Ohm's law for each resistor we know that:
   $$ I_1 = {V_1 \over R_1} \qquad I_2 = {V_2 \over R_2} $$

   We combine all four equations to get:
   $$ {V_T \over R_T} = {V_1 \over R_1} + {V_2 \over R_2} $$

   But we know the resistors are connected in parallel, so:
   $$ V_T = V_1 = V_2 $$

   And finally we get:

   $$
   \begin{align*}
   {V_T \over R_T} &= {V \over R_1} + {V \over R_2} \\
   \\
   { 1 \over R_T } &= {1 \over R_1} + {1 \over R_2} \\
   \\
   { 1 \over R_T } &= {R_2 \over {R_1 \cdot R_2}} + {R_1 \over {R_2 \cdot R_1}} \\
   \\
   { 1 \over R_T } &= {{R_2 + R_1} \over {R_1 \cdot R_2}} \\
   \\
   R_T &= {{R_1 \cdot R_2} \over {R_1 + R_2}}
   \end{align*}
   $$
   :::

   For our specific example where $R_1 = 5kΩ$, $R_2 = 2kΩ$ we get:
   $$
   R_T = {{5kΩ \cdot 2kΩ} \over {5kΩ + 2kΩ}}
       = {{10kΩ \cdot \cancel{kΩ}} \over {7\cancel{kΩ}}} ~= 1429Ω
   $$


1. What is the ratio $I_1 / I_2$ for resistors $R_1$, $R_2$ connected in
   parallel?

   :::{important}
   We know Ohm's law still applies to each resistor individually, and the
   voltage drop is *the same* across both resistors.

   We can combine these two facts to compute the ratio $I_1 / I_2$.

   We know that Ohm's law applies to the two resistors individually:
   $$
   V_1 = {I_1 \cdot R_1} \qquad V_2 = {I_2 \cdot R_2}
   $$

   And we know the voltage drop is the same across both resistors, because they
   are connected in parallel. So:

   $$
   \begin{align*}
   V_1 &= V_2 \\
   \\
   {I_1 \cdot R_1} &= {I_2 \cdot R_2} \\
   \\
   {I_1 \over I_2} &= {R_2 \over R_1}
   \end{align*}
   $$

   So, the current ratio is the inverse of the resistance ratio:
   If one resistor has double the resistance of the other, its current will be
   half.
   :::


## Build circuit


Grab your breadboard! Start from the original circuit you had built for
[](../adv-ohm/adv-ohm.md):

1. Take an $80Ω$ resistor, and measure it using your multimeter. Write down
   this measurement.
1. Add it in parallel with the original $150Ω$ resistor.
1. Compute the equivalent resistance of the two resistors.
1. Use your multimeter to measure the input voltage.
1. Compute the current you expect will flow through the circuit, using Ohm's
   law for the equivalent circuit.
1. Measure the current that flows through this circuit.
1. Compute the current you expect for each resistor, using Ohm's law.
1. Measure the current flowing through each one of the resistors, and compare
   with your computations above.


## Celebrate

Congratulations! You've simulated and built circuits with resistors in
parallel.

Here are more resources to explore:

:::{see also}
* [All Abount Circuits: Kirchhoff's Current Law](https://www.allaboutcircuits.com/textbook/direct-current/chpt-6/kirchhoffs-current-law-kcl/)
* [Wikipedia: Kirchhoff's Current Law](https://en.wikipedia.org/wiki/Kirchhoff%27s_circuit_laws#Kirchhoff's_current_law)
* [Wikipedia: Series and parallel circuits](https://en.wikipedia.org/wiki/Series_and_parallel_circuits)
:::
