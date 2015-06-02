echo "Test begins...\n" > results$1.txt
echo "Unicode tests(4 invalid)" >> results$1.txt
./$1/code/build/logappend -K ? -T 2 -E emp -A logfile >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T ? -E empa -A logfile >> results$1.txt
echo >> results$1.txt
./$1/code/build/logappend -K token -T 2 -E ? -A logfile >> results$1.txt
echo >> results$1.txt
./$1/code/build/logappend -K token -T 2 -E empb -A ? >> results$1.txt
echo >> results$1.txt
echo >> results$1.txt
echo "Same entry twice test(second invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 2 -G guest -A logfile >> results$1.txt
echo >> results$1.txt
./$1/code/build/logappend -K token -T 3 -G guest -A logfile >> results$1.txt
echo >> results$1.txt
echo >> results$1.txt
echo "Logappend to /dev/null(invalid)" >> results$1.txt
./$1/code/build/logappend -T 1 -K token -E empc -A /dev/null >> results$1.txt
echo >> results$1.txt
echo >> results$1.txt
echo "Logread to /dev/null(invalid)" >> results$1.txt
echo >> results$1.txt
./$1/code/build/logread -K token -S /dev/null >> results$1.txt
echo >> results$1.txt
echo >> results$1.txt
echo "Periods tests(should pass)" >> results$1.txt
./$1/code/build/logappend -T 4 -K token -E empd -A file.log >> results$1.txt
echo >> results$1.txt
echo >> results$1.txt
echo "Filenames with extensions(should pass)" >> results$1.txt
./$1/code/build/logappend -T 5 -K token -E empe -A file.log >> results$1.txt
echo >> results$1.txt
./$1/code/build/logread -K token -S file.log >> results$1.txt
echo >> results$1.txt
echo >> results$1.txt
echo "Logappen files on current path(should pass)" >> results$1.txt
./$1/code/build/logappend -T 6 -K token -E empf -A ./1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Logread files on current path(should pass)" >> results$1.txt
./$1/code/build/logappend -T 7 -K token -E empg -A ./1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logread -K token -S ./1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Guest cannot enter to gallery if already in(invalid twice)" >> results$1.txt
./$1/code/build/logappend -K token -T 8 -G guest -A logfile >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 9 -G guest -A logfile >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Employee cannot enter to gallery if already in(second invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 10 -E emp -A logfile >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 11 -E emp -A logfile >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Cannot add at smaller timpestamp(second invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 12 -G guesta -A logfile >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 10 -G guestb -A logfile >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Invalid token(invalid)" >> results$1.txt
./$1/code/build/logappend -K %hello -T 14 -G guestc -A log >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Employee and guest can have the same name(second invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 15 -G bob -A log >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 16 -E bob -A log >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logread -K token -S log >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Test parameters order, all should work" >> results$1.txt
./$1/code/build/logappend -K token -T 17 -G guestd -A logfile >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -T 18 -K token -A logfile -G gueste >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Cannot have both employee and guest (invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 19 -G guestf -E employeea -A log >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Missing logfile(invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 20 -G guestg -E employeeb -A >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Cannot have both arrival and departure (invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 21 -E emph -A -L log >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Employee cannot leave gallery without leaving room (third invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 22 -E eA -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 23 -E eA -A -R 1 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 24 -E eA -L log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Employee cannot leave room without being in it (second invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 25 -E eB -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 26 -E eB -L -R 1 log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Employee cannot arrive to another room withount first leaving it (third invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 27 -E eC -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 28 -E eC -A -R 1 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 29 -E eC -A -R 2 log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Employee attempt to leave room (all OK, fifth invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 30 -E eD -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 31 -E eD -A -R 1 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 32 -E eD -L -R 1 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 33 -E eD -L log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 34 -E eD -L -R 1 log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Employee attempt to leave another room (third invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 35 -E eE -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 36 -E eE -A -R 1 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 37 -E eE -L -R 2 log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Guest cannot leave gallery without leaving room (third invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 38 -G eF -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 39 -G eF -A -R 1 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 40 -G eF -L log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Guest cannot leave room without being in it (second invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 41 -G eG -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 42 -G eG -L -R 1 log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Guest cannot arrive to another room whithout leaving the first (third invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 43 -G eH -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 44 -G eH -A -R 1 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 45 -G eH -A -R 2 log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Guest attempt to leave room again (all OK, fifth invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 46 -G eI -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 47 -G eI -A -R 1 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 48 -G eI -L -R 1 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 49 -G eI -L log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 50 -G eI -L -R 1 log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Guest attempt to leave another room (third invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 51 -G eJ -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 52 -G eJ -A -R 1 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 53 -G eJ -L -R 2 log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Cannot leave room without being in it (invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 54 -G eK -L -R 2 log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Cannot leave gallery without being in it (invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 55 -G eL -L log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Should print error on non existent batch (invalid)" >> results$1.txt
./$1/code/build/logappend -B foo >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Cannot have non numeric room (third invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 56 -E baseA -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 57 -G guestH -A -R 1 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 58 -G guestI -A -R foo log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Room 2, 02, 002 should all be 2 (15 guests first 4 in room 2)" >> results$1.txt
./$1/code/build/logappend -K token -T 59 -G gA -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 60 -G gB -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 61 -G gC -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 62 -G gD -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 63 -G gE -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 64 -G gF -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 65 -G gG -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 66 -G gH -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 67 -G gI -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 68 -G gJ -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 69 -G gA -A -R 2 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 70 -G gB -A -R 02 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 71 -G gC -A -R 002 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 72 -G gD -A -R 0 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logread -K token -S log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Should accept really long names for employees (should be OK)" >> results$1.txt
./$1/code/build/logappend -K token -T 73 -E aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -A log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Should accept really long names for guests (should be OK)" >> results$1.txt
./$1/code/build/logappend -K token -T 74 -G aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -A log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Should not accept non numeric timpestamp (invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T foo -E alphatimestamp -A log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Cannot have two logs at same time (?)" >> results$1.txt
./$1/code/build/logappend -T 75 -K token -E eO -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -T 76 -K token -E eP -A log1 >> results$1.txt
echo >> results$1.txt
echo >> results$1.txt
echo "Should not have the second entry (?)" >> results$1.txt
./$1/code/build/logappend -K token -T 77 -E eQ -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 78 -G gO -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logread -K token -S log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "All guests should appear, watch rooms on new lines" >> results$1.txt
./$1/code/build/logappend -K token -T 79 -G gAA -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 80 -G gBA -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 81 -G gCA -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 82 -G gDA -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 83 -G gEA -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 84 -G gFA -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 85 -G gGA -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 86 -G gHA -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 87 -G gIA -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 88 -G gJA -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 89 -G gAA -A -R 2 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 90 -G gBA -A -R 02 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 91 -G gCA -A -R 002 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 92 -G gDA -A -R 0 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logread -K token -S log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "All emps should appear, watch rooms on new lines" >> results$1.txt
./$1/code/build/logappend -K token -T 93 -E emA -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 94 -E emB -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 95 -E emC -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 96 -E emD -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 97 -E emE -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 98 -E emF -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 99 -E emG -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 100 -E emH -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 101 -E emI -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 102 -E emJ -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 103 -E emA -A -R 2 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 104 -E emL -A -R 02 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 105 -E emM -A -R 002 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 106 -E emN -A -R 0 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logread -K token -S log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Should not be valid last logappend (two ok, third invalid - repeated emp)" >> results$1.txt
./$1/code/build/logappend -K token -T 108 -E eQ -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 109 -E eQ -A -R 1 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 110 -E eQ -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logread -K token -S log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Cannot arrive to room already being there (third invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 111 -G gaa -A log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 112 -G gaa -A -R 1 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 113 -G gaa -A -R 1 log1 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logread -K token -S log1 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Should not accept more than one log file (invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 114 -G gba -A log2 log3 >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Non existing batch file is error (invalid)" >> results$1.txt
./$1/code/build/logappend -B doesntExist >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Bad path should result in error (invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 115 ~/ >> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Timestamp 0 is error (invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 0 -G gc -A log2>> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Timestamp greater than 1073741823 or negative should results in error (invalid twice)" >> results$1.txt
./$1/code/build/logappend -K token -T 1073741824 -G gBB -A log2 >> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T -10 -G gCB -A log2>> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt
echo "Room greater than 1073741823 or negative should results in error (third and fourth invalid)" >> results$1.txt
./$1/code/build/logappend -K token -T 116 -G gBC -A log2>> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 117 -G gCC -A log2>> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 118 -G gBC -A -R 1073741824 log2>> results$1.txt 
echo >> results$1.txt
./$1/code/build/logappend -K token -T 119 -G gCC -A -R -10 log2>> results$1.txt 
echo >> results$1.txt
echo >> results$1.txt

#############################################################################################################################33

echo "#####Unicode tests " >>results$1.txt
echo >> results$1.txt
./$1/code/build/logappend -K ? -T 2 -E emp -A logfile
echo >> results$1.txt
./$1/code/build/logappend -K token -T ? -E emp -A logfile
echo >> results$1.txt
./$1/code/build/logappend -K token -T 2  -E ? -A logfile
echo >> results$1.txt
./$1/code/build/logappend -K token -T 2  -E emp -A ?
echo >> results$1.txt

echo "##Cannot have same entry twice " >> results$1.txt
./$1/code/build/logappend -K token -T 2 -G guest -A logfile
echo >> results$1.txt
./$1/code/build/logappend -K token -T 2 -G guest -A logfile
echo >> results$1.txt

echo  "##Logappend to /dev/null should be invalid ">>results$1.txt
./$1/code/build/logappend -T 1 -K token -E emp -A /dev/null
echo >> results$1.txt

echo " ## Logappend to /etc/passwd should be invalid ">>results$1.txt
./$1/code/build/logappend -T 1 -K token -E emp -A /etc/passwd
echo >> results$1.txt

echo "## Logappend to batch /etc/passwd should be invalid once ">>results$1.txt
./$1/code/build/logappend -B /etc/passwd
echo >> results$1.txt

echo "## Logread to /dev/null should be integrity violation ">>results$1.txt
./$1/code/build/logread -K token -S /dev/null
echo >> results$1.txt
./$1/code/build/logread -K token -T -G guest /dev/null
echo >> results$1.txt
./$1/code/build/logread -K token -R -G guest /dev/null
echo >> results$1.txt
./$1/code/build/logread -K token -I -G guest /dev/null
echo >> results$1.txt

echo "## Logread to /etc/passwd should be integrity violation ">>results$1.txt
./$1/code/build/logread -K token -S /etc/passwd
echo >> results$1.txt
./$1/code/build/logread -K token -T -G guest /etc/passwd
echo >> results$1.txt
./$1/code/build/logread -K token -R -G guest /etc/passwd
echo >> results$1.txt
./$1/code/build/logread -K token -I -G guest /etc/passwd
echo >> results$1.txt

echo "## Periods should be accepted on filenames ">>results$1.txt
./$1/code/build/logappend -T 1 -K token -E emp -A file.log
echo >> results$1.txt

echo " ## Filenames with periods should be able to be opened">>results$1.txt
./$1/code/build/logappend -T 1 -K token -E emp -A file.log
echo >> results$1.txt
./$1/code/build/logread -K token -S file.log
echo >> results$1.txt

echo "## Logappend should make file on current path ">>results$1.txt
./$1/code/build/logappend -T 1 -K token -E emp -A ./1
echo >> results$1.txt

echo "##Logread should be able to read files on current path ">>results$1.txt
./$1/code/build/logappend -T 1 -K token -E emp -A ./1
echo >> results$1.txt
./$1/code/build/logread -K token -S ./1
echo >> results$1.txt

echo "##Cannot enter guest to gallery if already in gallery ">>results$1.txt
./$1/code/build/logappend -K token -T 1 -G guest -A logfile
echo >> results$1.txt
./$1/code/build/logappend -K token -T 2 -G guest -A logfile
echo >> results$1.txt

echo "##Cannot enter employee to gallery if already in gallery ">>results$1.txt
./$1/code/build/logappend -K token -T 1 -E emp -A logfile
echo >> results$1.txt
./$1/code/build/logappend -K token -T 2 -E emp -A logfile
echo >> results$1.txt

echo "##Cannot add to smaller timestamp ">>results$1.txt
./$1/code/build/logappend -K token -T 2 -G guest -A logfile
echo >> results$1.txt
./$1/code/build/logappend -K token -T 1 -G guest -A logfile
echo >> results$1.txt

echo "##Invalid token is error ">>results$1.txt
./$1/code/build/logappend -K %hello -T 2 -G guest -A log
echo >> results$1.txt

echo "##Employee and guest can have same name ">>results$1.txt
./$1/code/build/logappend -K token -T 2 -G bob -A log
echo >> results$1.txt
./$1/code/build/logappend -K token -T 3 -E bob -A log
echo >> results$1.txt
./$1/code/build/logread -K token -S log
echo >> results$1.txt

echo "##Test parameter order, all should work ">>results$1.txt
./$1/code/build/logappend -K token -T 1 -G guest -A logfile
echo >> results$1.txt
./$1/code/build/logappend -T 1 -K token -G guest -A logfile
echo >> results$1.txt

echo "##Cannot have both employee and guest ">>results$1.txt
./$1/code/build/logappend -K token -T 1 -G guest -E employee -A log
echo >> results$1.txt

echo "##Missing log file error ">>results$1.txt
./$1/code/build/logappend -K token -T 1 -G guest -E employee -A
echo >> results$1.txt

echo "##Cannot have both arrival and departure ">>results$1.txt
./$1/code/build/logappend -K token -T 1 -E emp -A -L log
echo >> results$1.txt

echo "##Employee cannot leave gallery without leaving room ">>results$1.txt
./$1/code/build/logappend  -K token -T 181 -E eI -A log1
echo >> results$1.txt
./$1/code/build/logappend  -K token -T 182 -E eI -A -R 1 log1
echo >> results$1.txt
./$1/code/build/logappend  -K token -T 183 -E eI -L log1
echo >> results$1.txt

echo "##Employee cannot leave room without being in it ">>results$1.txt
./$1/code/build/logappend -K token -T 101 -E eE -A log1
echo >> results$1.txt
./$1/code/build/logappend  -K token -T 102 -E eE -L -R 1 log1
echo >> results$1.txt

echo "##Employee cannot arrive to another room without first leaving it ">>results$1.txt
./$1/code/build/logappend -K token -T 141 -E eG -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 142 -E eG -A -R 1 log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 143 -E eG -A -R 2 log1
echo >> results$1.txt

echo "##Employee attempt to leave room ">>results$1.txt
./$1/code/build/logappend -T 341 -K token -E eS -A log1
echo >> results$1.txt
./$1/code/build/logappend -T 342 -K token -E eS -A -R 1 log1
echo >> results$1.txt
./$1/code/build/logappend -T 343 -K token -E eS -L -R 1 log1
echo >> results$1.txt
./$1/code/build/logappend -T 344 -K token -E eS -L log1
echo >> results$1.txt
./$1/code/build/logappend -T 345 -K token -E eS -L -R 1 log1
echo >> results$1.txt

echo "##Employee attempt to leave another room ">>results$1.txt
./$1/code/build/logappend -T 121 -K token -E eF -A log1
echo >> results$1.txt
./$1/code/build/logappend -T 122 -K token -E eF -A -R 1 log1
echo >> results$1.txt
./$1/code/build/logappend -T 123 -K token -E eF -L -R 2 log1
echo >> results$1.txt

echo "##Guest cannot leave gallery without leaving room ">>results$1.txt
./$1/code/build/logappend  -K token -T 181 -G eI -A log1
echo >> results$1.txt
./$1/code/build/logappend  -K token -T 182 -G eI -A -R 1 log1
echo >> results$1.txt
./$1/code/build/logappend  -K token -T 183 -G eI -L log1
echo >> results$1.txt

echo "##Guest cannot leave room without being in it ">>results$1.txt
./$1/code/build/logappend -K token -T 101 -G eE -A log1
echo >> results$1.txt
./$1/code/build/logappend  -K token -T 102 -G eE -L -R 1 log1
echo >> results$1.txt

echo "##Guest cannot arrive to another room without first leaving it ">>results$1.txt
./$1/code/build/logappend -K token -T 141 -G eG -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 142 -G eG -A -R 1 log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 143 -G eG -A -R 2 log1
echo >> results$1.txt

echo "##Guest attempt to leave room ">>results$1.txt
./$1/code/build/logappend -T 341 -K token -G eS -A log1
echo >> results$1.txt
./$1/code/build/logappend -T 342 -K token -G eS -A -R 1 log1
echo >> results$1.txt
./$1/code/build/logappend -T 343 -K token -G eS -L -R 1 log1
echo >> results$1.txt
./$1/code/build/logappend -T 344 -K token -G eS -L log1
echo >> results$1.txt
./$1/code/build/logappend -T 345 -K token -G eS -L -R 1 log1
echo >> results$1.txt

echo "##Guest attempt to leave another room ">>results$1.txt
./$1/code/build/logappend -T 121 -K token -G eF -A log1
echo >> results$1.txt
./$1/code/build/logappend -T 122 -K token -G eF -A -R 1 log1
echo >> results$1.txt
./$1/code/build/logappend -T 123 -K token -G eF -L -R 2 log1
echo >> results$1.txt

echo "##Cannot leave room without being in it! ">>results$1.txt
./$1/code/build/logappend -T 91 -K token -G gD -L -R 2 log1
echo >> results$1.txt

echo "##Cannot leave gallery without being in it ">>results$1.txt
./$1/code/build/logappend -T 92 -K token -G gD -L log1
echo >> results$1.txt

echo "##Should print error on non existent batch ">>results$1.txt
./$1/code/build/logappend -B foo
echo >> results$1.txt

echo "##Cannot have non numeric room ">>results$1.txt
./$1/code/build/logappend -K token -T 1 -E base -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 9 -G guestI -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 20 -G guestI -A -R foo log1
echo >> results$1.txt

echo "##Non numeric room for leave ">>results$1.txt
./$1/code/build/logappend -K token -T 1 -E base -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 9 -G guestI -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 20 -G guestI -A -R 1 log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 20 -G guestI -L -R foo log1
echo >> results$1.txt

echo "##Room 2, 02, 002 should all be 2 ">>results$1.txt
./$1/code/build/logappend -T 1 -K token -G guestA -A log1
echo >> results$1.txt
./$1/code/build/logappend -T 2 -K token -G guestB -A log1
echo >> results$1.txt
./$1/code/build/logappend -T 3 -K token -G guestC -A log1
echo >> results$1.txt
./$1/code/build/logappend -T 4 -K token -G guestD -A log1
echo >> results$1.txt
./$1/code/build/logappend -T 5 -K token -G guestE -A log1
echo >> results$1.txt
./$1/code/build/logappend -T 6 -K token -G guestF -A log1
echo >> results$1.txt
./$1/code/build/logappend -T 7 -K token -G guestG -A log1
echo >> results$1.txt
./$1/code/build/logappend -T 8 -K token -G guestH -A log1
echo >> results$1.txt
./$1/code/build/logappend -T 10 -K token -G guestJ -A log1
echo >> results$1.txt
./$1/code/build/logappend -T 11 -K token -G guestK -A log1
echo >> results$1.txt
./$1/code/build/logappend -T 12 -K token -G guestA -A -R 2 log1
echo >> results$1.txt
./$1/code/build/logappend -T 13 -K token -G guestB -A -R 02 log1
echo >> results$1.txt
./$1/code/build/logappend -T 14 -K token -G guestC -A -R 002 log1
echo >> results$1.txt
./$1/code/build/logappend -T 15 -K token -G guestD -A -R 0 log1
echo >> results$1.txt
./$1/code/build/logread -K token -S log1
echo >> results$1.txt

echo "##Should accept really long names employee ">>results$1.txt
./$1/code/build/logappend -K token -T 1 -E aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -A log1
echo >> results$1.txt

echo "##Should accept really long names guest ">>results$1.txt
./$1/code/build/logappend -K token -T 1 -G aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -A log1
echo >> results$1.txt

echo "##Should not accept non numeric timestamp ">>results$1.txt
./$1/code/build/logappend -K token -T foo -E alphatimestampe -A log1
echo >> results$1.txt

echo "##Cannot have two logs same time ">>results$1.txt
./$1/code/build/logappend -T 5 -K token -E pppp -A log1
echo >> results$1.txt
./$1/code/build/logappend -T 5 -K token -E pD -A log1
echo >> results$1.txt

echo "##Should not have the second entry ">>results$1.txt
./$1/code/build/logappend -T 5 -K token -E pppp -A log1
echo >> results$1.txt
./$1/code/build/logappend -T 5 -K token -G pE -A log1
echo >> results$1.txt
./$1/code/build/logread -K token -S log1
echo >> results$1.txt

echo "##All guests should appear, watch rooms on new lines ">>results$1.txt
./$1/code/build/logappend -K token -T 1 -G guestA -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 2 -G guestB -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 3 -G guestC -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 4 -G guestD -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 5 -G guestE -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 6 -G guestF -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 7 -G guestG -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 8 -G guestH -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 10 -G guestJ -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 11 -G guestK -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 12 -G guestA -A -R 2 log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 13 -G guestB -A -R 02 log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 14 -G guestC -A -R 002 log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 15 -G guestD -A -R 0 log1
echo >> results$1.txt
./$1/code/build/logread -K token -S log1
echo >> results$1.txt

echo "##All emps should appear, watch rooms on new lines ">>results$1.txt
./$1/code/build/logappend -K token -T 1 -E empA -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 2 -E empB -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 3 -E empC -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 4 -E empD -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 5 -E empE -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 6 -E empF -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 7 -E empG -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 8 -E empH -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 10 -E empJ -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 11 -E empK -A log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 12 -E empA -A -R 2 log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 13 -E empB -A -R 02 log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 14 -E empC -A -R 002 log1
echo >> results$1.txt
./$1/code/build/logappend -K token -T 15 -E empD -A -R 0 log1
echo >> results$1.txt
./$1/code/build/logread -K token -S log1
echo >> results$1.txt

echo "##Should not be valid last logappend ">>results$1.txt
./$1/code/build/logappend -T 261 -K token -E eN -A log1
echo >> results$1.txt
./$1/code/build/logappend -T 262 -K token -E eN -A -R 1 log1
echo >> results$1.txt
./$1/code/build/logappend -T 263 -K token -E eN -A log1
echo >> results$1.txt
./$1/code/build/logread -K token -S log1
echo >> results$1.txt

echo "##Cannot arrive to room after having arrived on it ">>results$1.txt
./$1/code/build/logappend -T 171 -K token -G gH -A log1
echo >> results$1.txt
./$1/code/build/logappend -T 172 -K token -G gH -A -R 1 log1
echo >> results$1.txt
./$1/code/build/logappend -T 173 -K token -G gH -A -R 1 log1
echo >> results$1.txt
./$1/code/build/logread -K token -S log1
echo >> results$1.txt

echo "##Should not accept more than one log file ">>results$1.txt
./$1/code/build/logappend -T 1 -K token -G gH -A log log2
echo >> results$1.txt

echo "##Non existing batch file is error ">>results$1.txt
./$1/code/build/logappend -B pepe
echo >> results$1.txt
echo "##Bad path should be error ">>results$1.txt
./$1/code/build/logappend -T 1 -K token ~/
echo >> results$1.txt

echo "##Timestamp 0 is error ">>results$1.txt
./$1/code/build/logappend -T 0 -K token -G gH -A log2
echo >> results$1.txt

echo "##Timestamp greater than 1073741823 or negative is error ">>results$1.txt
./$1/code/build/logappend -T 1073741824 -K token -G gH -A log
echo >> results$1.txt

echo "##Room greater than 1073741823 or negative is error ">>results$1.txt
./$1/code/build/logappend -T 1 -K token -G gH -A log
echo >> results$1.txt
./$1/code/build/logappend -T 2 -K token -G gH -A -R 1073741824 log
echo >> results$1.txt
