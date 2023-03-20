# logic analyser test

run

    ./configure.py --update-caravel --limit 20 --test

before starting test

#

In this test, the RISCV logic analyser is used to drive the scanchain. This is mode 01 for driver_sel.

The following GPIOs are used to sync between the [C firmware](scan_controller.c) and the [Python testbench](test_scan_controller.py).

    FW_READY    12
    FW_DONE     13
    DATA_RX     14
    TB_CLK      15

After the firmware sets up the GPIO, the FW_READY io goes high.

The following bits of the logic analyser are used to connect to the scanchain inputs:

    CLK         0 
    DATA_OUT    1
    SCAN        2
    CH          3

And one input is needed:

    DATA_IN     0

The pattern 11110000 is sent into the scanchain and latched into the first design.
The first design is a straight pass through, so after 20x8 clocks, we expect to see 11110000 on the output.

The firmware communicates the data coming into the DATA_IN bit of the LA by setting the DATA_RX pin to whatever was received on DATA_IN.
After the DATA_RX pin is set, the firmware toggles the TB_CLK pin so that the Python testbench knows to receive the data.

After 160 clock cycles the FW_DONE io is set to signal the end of the test.
