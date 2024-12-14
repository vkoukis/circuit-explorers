# Circuit Explorers

A hands-on tutorial on exploring, designing, simulating, building, testing
digital circuits.

*Goal:* Build a full-featured, programmable 8-bit computer using only chips
in the [74LS family of integrated circuits](https://en.wikipedia.org/wiki/List_of_7400-series_integrated_circuits).


## Adventure 0: Install Digital, run tutorial

*Goal:* Install [Digital](https://github.com/hneemann/Digital).
Run its tutorial and simulate a logic circuit.

1. Download and install [Digital](https://github.com/hneemann/Digital).
   1. Install Temurin for Windows x64 from https://adoptium.net/
   1. Download Digital from GitHub
   1. Extract in a local directory, e.g., `C:\WinPRG\Digital`
   1. Double-click `Digital.jar` to run.
1. Go through the Digital tutorial. If you want to repeat it in the future,
   it is available at View --> Start tutorial.
1. Save your work as `adv-0.dig`.


## Adventure 1: Logic gates [NOT, AND, OR, XOR, NAND, NOR, XNOR]

*Goal:* Understand all basic logic gates and build a logic circuit which uses
all of them.


### Adventure 1A: Logic gates: Design and simulate circuit

*Goal:* Build a circuit will all basic logic gates: NOT, AND, OR, XOR, NAND,
NOR, XNOR in Digital.

1. Create a new circuit in Digital.
1. Insert two inputs.
1. Label them `A` and `B`: To label an input right-click on it, and edit the
   `Label` text entry.
1. Insert two NOT gates.
1. Wire input `A` to the first NOT gate, and input `B` to the second NOT gate.
   Note a NOT gate accepts a single input.
1. Insert each one of the remaining logic gates, 6 in total.
1. Insert an LED output for each gate, 8 in total.
1. Wire input `A` to the first input of each 2-input gate (AND, OR, XOR, NAND,
   NOR, XNOR).
1. If you make a mistake while adding wires, hold down Ctrl and click the
   offending wire, then *drag* it to its new location. Similarly, Ctrl-click a
   wire and drag it to the trashcan icon in the toolbar, then click the
   trashcan icon, to delete it.
1. Wire input `B` to the second input of each 2-input gate.
1. Label each LED according to its role: `NOT_A`, `NOT_B`, `AND`, `OR`, `NAND`,
   etc.
1. Simulate your circuit. How does each logic gate function?
   If there are disconnected input pins ("floating" inputs), Digital will
   complain with an error message similar to this:
   ```
   Error creating the circuit. Nothing connected to input 'in_2' at component
   'XNOr'. Open inputs are not allowed.
   ```
   If this happens, make sure you have connected every input of every gate to
   either input `A` or `B` and try again. If things still fail, *remove* some
   of the logic gates to simplify your circuit, until you can get it to work,
   then add them back gradually.
1. Notice how some wires are light green, some others are dark green, depending
   on whether their current state is  `1` or `0`, respectively.
1. Write down the [truth table](https://www.geeksforgeeks.org/logic-gates/) for
   each one of the gates, according to your testing.
1. Navigate to Analysis --> Analysis in the menu. See Digital produce the truth
   table for each one of your outputs automatically.
1. Save your work as `adv-1a.dig`.


### Adventure 1B: Logic gates: Simulate with 74LS chips

*Goal:* Build a circuit similar to the one in Adventure 1A, but use 74xx chips
in Digital.

1. Have a look at the list of logic gates in the 74LS family
   ([Wikipedia](https://en.wikipedia.org/wiki/List_of_7400-series_integrated_circuits#Logic_gates))
   of integrated circuits ("chips", "ICs"). We care about the "Normal inputs /
   push-pull outputs" category.
1. See we will be using chips 74LS04, 74LS08, 74LS32, 74LS86, 74LS00, 74LS02,
   74LS7266. How many gates and of which kind does each IC implement?
1. Find the documentation for Digital as a PDF file in the `docu/` directory,
   e.g., `docu/Documentation_en.pdf`. Section `E Library` contains a full list
   of all supported 74xx ICs.
1. Create a new circuit in Digital.
1. Navigate to Components --> Library --> DIL chips --> 74xx --> basic.
1. Insert one of each of the 7404, 7408, 7432, 7486, 7400, 7402, 747266 chips.
   Arrange them one below the other, in two or three columns, any way you like.
1. Use the scroll wheel of your mouse to zoom in and out of the circuit, hold
   down the right mouse button and drag the circuit, to move it around.
1. Notice the pinout for each chip. There are pins for each input and output,
   as well as pins to connect to power [VCC] and to the ground [GND].
1. Insert two inputs, label them `A` and `B`.
1. Wire the inputs to create a circuit equivalent to the one in Adventure 1A,
   this time using 74xx chips instead of the basic LED gates. For each chip 
   implementing 2-input gates, wire input `A` to input `1A` of each chip, and
   input `B` to input `1B` of each chip. Notice chip 7404 implements NOT gates
   which only accept one input, and the pin layout differs slightly between
   different chips, so you need to be paying attention.
1. Insert an LED output per gate you have used, 8 total. Label them according
   to their role, as in Adventure 1A. Wire the output of each logic gate you
   have used to the right LED. When adding wires, pay attention to not touch
   other
   pins on the chip. It is OK if the wires go over the chip itself, but they
   should not touch other pins, because you will find it difficult to wire
   these pins later on.
1. Navigate to Components --> Wires --> Supply voltage and add a power source
   next to each chip. Label it `VCC`. Connect the VCC pin of each chip to VCC.
1. Navigate to Components --> Wires --> Ground and add a ground terminal next
   to each chip. Label it `GND`. Connect the GND pin of each chip to GND.
1. Notice each chip implements more than one logic gates, but you only need to
   use one input of each chip, *except* the 7404 chip, where you use two
   inputs. Connect every single unused input of every chip to VCC [a logical
   `1`] or to GND [a logical `0`]. It does not matter, as long as every single
   input is connected to either VCC or GND.
1. Simulate your circuit. How does each logic gate function?
   If there are disconnected input pins ("floating" inputs), Digital will
   complain with an error message similar to this:
   ```
   Error creating the circuit. No output connected to a wire ([In_2; NAnd]).
   The state of the wire is undefined. Ocured in file 7400.dig.
   ```
   If this happens, make sure you have connected every single input to either
   VCC or GND, and try again. See [this issue in Digital](https://github.com/hneemann/Digital/issues/36)
   for technical details.
1. Compare the truth table of your new circuit to the truth table of Adventure
   1A. They should be identical.
1. Save your work as `adv-1b.dig`.


### Adventure 1C: Logic gates: Build physical circuit with 74LS chips

*Goal:* Use a breadboard and 74LS chips to build an actual, real-world version of
the circuit in Adventure 1B.

*Tools:* Here is a list of the tools you will need to buy. You will re-use
these tools throughout the tutorial:

| Quantity | Name                      | Description                           | Links                         |
| :------  | :-----------------------  | :------------------------------------ | :---------------------------- |
| 1        | needle nose pliers        |                                       | [Fanos](https://www.fanos.gr/%CE%B5%CF%81%CE%B3%CE%B1%CE%BB%CE%B5%CE%AF%CE%B1/%CE%BC%CF%85%CF%84%CE%BF%CF%84%CF%83%CE%B9%CE%BC%CF%80%CE%B9%CE%B4%CE%B1-%CF%80%CE%B5%CE%BD%CF%83%CE%B5%CF%82/%CE%BC%CF%85%CF%84%CE%BF%CF%84%CF%83%CE%AF%CE%BC%CF%80%CE%B9%CE%B4%CE%BF-%CE%BC%CE%B1%CE%BA%CF%81%CF%8D-pn2007-piergiacomi.html) |
| 1        | wire cutter               |                                       | [Fanos](https://www.fanos.gr/%CE%B5%CF%81%CE%B3%CE%B1%CE%BB%CE%B5%CE%AF%CE%B1/%CE%BA%CF%8C%CF%86%CF%84%CE%B5%CF%82/%CE%BA%CF%8C%CF%86%CF%84%CE%B7%CF%82-%CF%80%CE%BB%CE%AC%CE%B3%CE%B9%CE%BF%CF%82-tre03nb-piergiacomi.html) |
| 1        | wire stripper             |                                       | [Fanos](https://www.fanos.gr/%CE%B5%CF%81%CE%B3%CE%B1%CE%BB%CE%B5%CE%AF%CE%B1/%CE%B1%CF%80%CE%BF%CE%B3%CF%85%CE%BC%CE%BD%CF%89%CF%84%CE%AD%CF%82/%CE%B1%CF%80%CE%BF%CE%B3%CF%85%CE%BC%CE%BD%CF%89%CF%84%CE%AE%CF%82-yy-78318.html) |
| 1        | multimeter                |                                       | [Fanos](https://www.fanos.gr/%CE%B5%CF%81%CE%B3%CE%B1%CE%BB%CE%B5%CE%AF%CE%B1/%CF%8C%CF%81%CE%B3%CE%B1%CE%BD%CE%B1-%CE%BC%CE%AD%CF%84%CF%81%CE%B7%CF%83%CE%B7%CF%82/%CF%80%CE%BF%CE%BB%CF%8D%CE%BC%CE%B5%CF%84%CF%81%CE%B1/%CF%88%CE%B7%CF%86%CE%B9%CE%B1%CE%BA%CE%AC-dvm/%CF%88%CE%B7%CF%86%CE%B9%CE%B1%CE%BA%CF%8C-%CF%80%CE%BF%CE%BB%CF%8D%CE%BC%CE%B5%CF%84%CF%81%CE%BF-uni-t-ut39c.html) |
| 1        | small organizer box       |                                       | [Fanos](https://www.fanos.gr/%CE%BA%CE%BF%CF%85%CF%84%CE%B9%CE%AC-%CE%B1%CF%80%CE%BF%CE%B8%CE%AE%CE%BA%CE%B5%CF%85%CF%83%CE%B7%CF%82-%CE%BA%CE%B1%CE%B9-%CE%BA%CE%B1%CF%84%CE%B1%CF%83%CE%BA%CE%B5%CF%85%CF%8E%CE%BD/%CE%BA%CE%BF%CF%85%CF%84%CE%B9%CE%AC-%CE%B1%CF%80%CE%BF%CE%B8%CE%AE%CE%BA%CE%B5%CF%85%CF%83%CE%B7%CF%82/%CE%BA%CE%BF%CF%85%CF%84%CE%B9-%CE%B1%CF%80%CE%BF%CE%B8%CE%B7%CE%BA%CE%B5%CF%85%CF%83%CE%B7%CF%83-76x61x21-903133s-t-proskit.html) |

*Components:* Here is a list of the components you will need to buy:
| Quantity | Name                      | Description                           | Links                         |
| :------  | :-----------------------  | :------------------------------------ | :---------------------------- |
| 1        | 5V power supply           | E.g., any USB charger                 |                               |
| 1        | breadboard                | Breadboard                            | [Fanos](https://www.fanos.gr/en-gb/electronic-components/boards-testing-boards/solderless-breadboard-mb-102.html) |
| 1        | 65-piece jumper wire kit  | Many small jumper wires to use with the breadboard | [Fanos](https://www.fanos.gr/en-gb/electronic-components/jumpers-pinheaders/65pcs-flexible-breadboard-jumper-wires.html) |
| 1        | 74LS04                    | Hex inverter                          | [Fanos](https://www.fanos.gr/en-gb/semiconductors/circuit-chips/gate-ls/74ls04.html) |
| 1        | 74LS08                    | Quad 2-input AND gate                 | [Fanos](https://www.fanos.gr/en-gb/semiconductors/circuit-chips/gate-ls/74ls08.html) |
| 1        | 74LS32                    | Quad 2-input OR gate                  | [Fanos](https://www.fanos.gr/en-gb/semiconductors/circuit-chips/gate-ls/74ls32.html) |
| 1        | 74LS00                    | Quad 2-input NAND gate                | [Fanos](https://www.fanos.gr/en-gb/semiconductors/circuit-chips/gate-ls/74ls00.html) |
| 1        | 74LS02                    | Quad 2-input NOR gate                 | [Fanos](https://www.fanos.gr/en-gb/semiconductors/circuit-chips/gate-ls/74ls02.html) |
| 1        | 74LS86                    | Quad 2-input XOR gate                 | [Fanos](https://www.fanos.gr/en-gb/semiconductors/circuit-chips/gate-ls/74ls86.html) |
| 1        | 74LS7266                  | Quad 2-input XNOR gate                | Not sure it is actually available |
| 2        | SPDT switch               | Single Pole Double Throw Switch       | [Fanos](https://www.fanos.gr/en-gb/switches/slide-switch/slide-switch-on-on-spdt-12d01.html) |
| 3        | LED, red                  | LED, red 2-2.5V, 20mA                 | [Fanos](https://www.fanos.gr/%CF%80%CE%B7%CE%B3%CE%AD%CF%82-%CF%86%CF%89%CF%84%CE%B9%CF%83%CE%BC%CE%BF%CF%8D/led/10mm/led-10mm-%CE%BA%CF%8C%CE%BA%CE%BA%CE%B9%CE%BD%CE%BF%CF%85-%CF%87%CF%81%CF%8E%CE%BC%CE%B1%CF%84%CE%BF%CF%82-l813id-40-150mcd-html) |
| 3        | 120-150Ω resistors        | Resistors, 1W                         | [Fanos](https://www.fanos.gr/%CE%B7%CE%BB%CE%B5%CE%BA%CF%84%CF%81%CE%BF%CE%BD%CE%B9%CE%BA%CE%B1-%CE%B5%CE%BE%CE%B1%CF%81%CF%84%CE%B7%CE%BC%CE%B1%CF%84%CE%B1/%CE%91%CE%BD%CF%84%CE%B9%CF%83%CF%84%CE%AC%CF%83%CE%B5%CE%B9%CF%82,%20antistaseis,%20%CE%B1%CE%BD%CF%84%CE%B9%CF%83%CF%84%CE%B1%CF%83%CE%B7,%20antistasi/%CE%B1%CE%BD%CF%84%CE%B9%CF%83%CF%84%CE%B1%CF%83%CE%B7-1W/%CE%B1%CE%BD%CF%84%CE%AF%CF%83%CF%84%CE%B1%CF%83%CE%B7-120-%CF%89-1w.html) |

**TODO:** Revisit this list. 74LS is TTL and cannot drive output LEDs directly,
it can only source 1mA, LEDs need ~5-20mA.
See:
https://www.eevblog.com/forum/beginners/driving-leds-with-74ls-logic/
> TTL is better at sinking current, so run the LEd's from the 5V rail with the logic low turning them on. Use 5mA as a current and most modern LED devices will be very bright at this current. Typically this means a 470R resistor per LED.
> A typical 74LS00 output pin can sink significant current to drive a standard LED. Just wire the cathode to the output pin through a suitably sized series resistor (calc for maybe 10 ma, plenty bright) to then to +5vcc. You just have design for circuit so that a LOW  output is the active (lite) state.

**WIP:**

<!-- IDEAS FOR NEXT ADVENTURES

## Adventure: Control an LED with a pushbutton / switch: https://www.sparkfun.com/tutorials/219, https://www.youtube.com/watch?v=zhaX7Im2gTw&list=PLsAJMThMEUtpbjd5ulXTbUwijF1nJkjd_

## Adventure: 4-bit 7-seg display controller [combinatorial, then 74LS chips]

## Adventure: Full 4-bit adder [combinatorial, then 74LS chips]

## Adventure: Full 4-bit adder [combinatorial, then 74LS chips, 7-seg display]

## Adventure: Full 8-bit adder

## Adventure: Subtract 8-bit numbers

## Adventure: Multiply 8-bit numbers

## Adventure: Divide 8-bit numbers

## Adventure: 4:1 1-bit multiplexer

## Adventure: 1:4 1-bit demultiplexer

## Adventure: Full 8-bit ALU

## Adventure: 555-based clock

## Adventure: Digital die with LEDs

## Adventure: Create an 8-bit register

## Adventure: 32KB memory?

## Adventure: connect via USB [USB-to-TTL FTDI / PL2303, e.g., https://www.fanos.gr/en-gb/circuit-boards-arduino/circuit-boards/ft232rl-ftdi-usb-to-ttl-serial-module.html or https://www.hellasdigital.gr/electronics/prototyping/adapters/usb-to-ttl-4-pin-wire/

-->
