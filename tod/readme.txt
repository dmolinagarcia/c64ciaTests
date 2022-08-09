--------------------------------------------------------------------------------

* 4tod.prg, 4todcia.prg:

this one repeatedly starts tod at 0:00:00.0 with alarm-nmi enabled
when either the alarm is triggerd or tod ran for 1 second it will print out
whether an alarm-nmi occured or not.

expected: NO alarm in 2nd run

NOTE: this test fails in VICE (r28032, fixed in r28654)

--------------------------------------------------------------------------------

* 5tod.prg:

this one repeatedly starts tod at 0:00:00.0 with alarm-nmi enabled
when either the alarm is triggerd or tod ran for 1 second it will print out
whether an alarm-nmi occured or not.

this version will set the clock to the power up state of 1:00:00.0 after every
test that didn't trigger an alarm, to see if the weird behaviour of the 2nd pass
can be repeated.

expected: first run alarm, second NO alarm, third alarm, etc

NOTE: this test fails in VICE (r28032, fixed in r28654)

--------------------------------------------------------------------------------

* 6tod.prg:

this one repeatedly starts tod at 0:00:00.0 with alarm-nmi enabled
when either the alarm is triggerd or tod ran for 1 second it will print out
whether an alarm-nmi occured or not.

this version will always reset the clock to the power up state of 1:00:00.0

expected: always alarm

--------------------------------------------------------------------------------

* hammerfist0.prg

This program sets the CIA 1's TOD to a specific value (9:30:12.3) then resets
it, and, if the TOD alarm was set to the same specific value, prints a D in the
top left corner, otherwise an A.

On the real C64, it always prints D.

How this was discovered: The game "Hammerfist" periodically does this check,
most probably as a piracy prevention method. The loader sets the TOD alarm.
If the check fails during the game, a spurious PLA is executed, corrupting the
stack and leading to a crash or other undesired behaviour.

However, it was noticed by some users of a forum that a pirate copy of
Hammerfist, that crashes often in VICE, works well on a real C64.

(fixed in r28654)

--------------------------------------------------------------------------------

* hammerfist1.prg

A new version of the test program. It resets the TOD alarm to 0:00:00.0,
then it sets the TOD clock to 9:12:30.3. Then, it checks for bit 2 of
$DC0D (meaning: TOD alarm and TOD time are identical) and print X if it
is 0, something else if it is 1. Then it sets the TOD time to all
zeroes, byte by byte (first $DC08, last $DC0B) and performs the test of
bit 2 of $DC0D each time.

Run it under VICE: it prints XXXXX in the top left corner
Run it under a real C64: it prints XXXXD in the top left corner

(fixed in r28654)

--------------------------------------------------------------------------------

* frogger.prg

Timer countdown used in the game "frogger". It relies on the state of registers
and latches after poweron/reset.

--------------------------------------------------------------------------------

TODO: 

- investigate "slurpy", try to create a testcase from it (see bug #514)
- test behaviour of the latch in more detail
 - test writing time while time is latched
 - test when exactly the value is copied into the latch (synced to freq. count?)
- what happens if the frequency counter is switched from 60 to 50 hz when it has
  reached the value 6 ? will it count further to 7 ?
- investigate/test what exactly is tied to the frequency counter, what to the
  system clock, and how both interacts/how certain border cases work.
- check if/when IRQs are generated when the clock is stopped
