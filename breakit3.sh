echo "-Line  1 " 
echo "Test begins...\n" > results$1.txt
echo "-Line  2" >> results$1.txt
echo "Unicode tests(4 invalid)" >> results$1.txt
echo "-Line  3" >> results$1.txt
./$1/code/build/logappend -K ? -T 2 -E emp -A logfile >> results$1.txt 
echo "-Line  4" >> results$1.txt
echo >> results$1.txt
echo "-Line  5 " >> results$1.txt
./$1/code/build/logappend -K token -T ? -E empa -A logfile >> results$1.txt
echo "-Line  6 " 
echo >> results$1.txt
echo "-Line  7 " >> results$1.txt
./$1/code/build/logappend -K token -T 2 -E ? -A logfile >> results$1.txt
echo "-Line  8 " 
echo >> results$1.txt
echo "-Line  9 " >> results$1.txt
./$1/code/build/logappend -K token -T 2 -E empb -A ? >> results$1.txt
echo "-Line  10 " 
echo >> results$1.txt
echo "-Line  11 " 
echo >> results$1.txt
echo "-Line  12 " 
echo "Same entry twice test(second invalid)" >> results$1.txt
echo "-Line  13 " >> results$1.txt
./$1/code/build/logappend -K token -T 2 -G guest -A logfile >> results$1.txt
echo "-Line  14 " 
echo >> results$1.txt
echo "-Line  15 " >> results$1.txt
./$1/code/build/logappend -K token -T 3 -G guest -A logfile >> results$1.txt
echo "-Line  16 " 
echo >> results$1.txt
echo "-Line  17 " 
echo >> results$1.txt
echo "-Line  18 " 
echo "Logappend to /dev/null(invalid)" >> results$1.txt
echo "-Line  19 " >> results$1.txt
./$1/code/build/logappend -T 1 -K token -E empc -A /dev/null >> results$1.txt
echo "-Line  20 " 
echo >> results$1.txt
echo "-Line  21 " 
echo >> results$1.txt
echo "-Line  22 " 
echo "Logread to /dev/null(invalid)" >> results$1.txt
echo "-Line  23 " 
echo >> results$1.txt
echo "-Line  24 " >> results$1.txt
./$1/code/build/logread -K token -S /dev/null >> results$1.txt
echo "-Line  25 " 
echo >> results$1.txt
echo "-Line  26 " 
echo >> results$1.txt
echo "-Line  27 " 
echo "Periods tests(should pass)" >> results$1.txt
echo "-Line  28 " >> results$1.txt
./$1/code/build/logappend -T 4 -K token -E empd -A file.log >> results$1.txt
echo "-Line  29 " 
echo >> results$1.txt
echo "-Line  30 " 
echo >> results$1.txt
echo "-Line  31 " 
echo "Filenames with extensions(should pass)" >> results$1.txt
echo "-Line  32 " >> results$1.txt
./$1/code/build/logappend -T 5 -K token -E empe -A file.log >> results$1.txt
echo "-Line  33 " 
echo >> results$1.txt
echo "-Line  34 " >> results$1.txt
./$1/code/build/logread -K token -S file.log >> results$1.txt
echo "-Line  35 " 
echo >> results$1.txt
echo "-Line  36 " 
echo >> results$1.txt
echo "-Line  37 " 
echo "Logappen files on current path(should pass)" >> results$1.txt
echo "-Line  38 " >> results$1.txt
./$1/code/build/logappend -T 6 -K token -E empf -A ./1 >> results$1.txt 
echo "-Line  39 " 
echo >> results$1.txt
echo "-Line  40 " 
echo >> results$1.txt
echo "-Line  41 " 
echo "Logread files on current path(should pass)" >> results$1.txt
echo "-Line  42 " >> results$1.txt
./$1/code/build/logappend -T 7 -K token -E empg -A ./1 >> results$1.txt 
echo "-Line  43 " 
echo >> results$1.txt
echo "-Line  44 " >> results$1.txt
./$1/code/build/logread -K token -S ./1 >> results$1.txt 
echo "-Line  45 " 
echo >> results$1.txt
echo "-Line  46 " 
echo >> results$1.txt
echo "-Line  47 " 
echo "Guest cannot enter to gallery if already in(invalid twice)" >> results$1.txt
echo "-Line  48 " >> results$1.txt
./$1/code/build/logappend -K token -T 8 -G guest -A logfile >> results$1.txt 
echo "-Line  49 " 
echo >> results$1.txt
echo "-Line  50 " >> results$1.txt
./$1/code/build/logappend -K token -T 9 -G guest -A logfile >> results$1.txt 
echo "-Line  51 " 
echo >> results$1.txt
echo "-Line  52 " 
echo >> results$1.txt
echo "-Line  53 " 
echo "Employee cannot enter to gallery if already in(second invalid)" >> results$1.txt
echo "-Line  54 " >> results$1.txt
./$1/code/build/logappend -K token -T 10 -E emp -A logfile >> results$1.txt 
echo "-Line  55 " 
echo >> results$1.txt
echo "-Line  56 " >> results$1.txt
./$1/code/build/logappend -K token -T 11 -E emp -A logfile >> results$1.txt 
echo "-Line  57 " 
echo >> results$1.txt
echo "-Line  58 " 
echo >> results$1.txt
echo "-Line  59 " 
echo "Cannot add at smaller timpestamp(second invalid)" >> results$1.txt
echo "-Line  60 " >> results$1.txt
./$1/code/build/logappend -K token -T 12 -G guesta -A logfile >> results$1.txt 
echo "-Line  61 " 
echo >> results$1.txt
echo "-Line  62 " >> results$1.txt
./$1/code/build/logappend -K token -T 10 -G guestb -A logfile >> results$1.txt 
echo "-Line  63 " 
echo >> results$1.txt
echo "-Line  64 " 
echo >> results$1.txt
echo "-Line  65 " 
echo "Invalid token(invalid)" >> results$1.txt
echo "-Line  66 " >> results$1.txt
./$1/code/build/logappend -K %hello -T 14 -G guestc -A log >> results$1.txt 
echo "-Line  67 " 
echo >> results$1.txt
echo "-Line  68 " 
echo >> results$1.txt
echo "-Line  69 " 
echo "Employee and guest can have the same name(second invalid)" >> results$1.txt
echo "-Line  70 " >> results$1.txt
./$1/code/build/logappend -K token -T 15 -G bob -A log >> results$1.txt 
echo "-Line  71 " 
echo >> results$1.txt
echo "-Line  72 " >> results$1.txt
./$1/code/build/logappend -K token -T 16 -E bob -A log >> results$1.txt 
echo "-Line  73 " 
echo >> results$1.txt
echo "-Line  74 " >> results$1.txt
./$1/code/build/logread -K token -S log >> results$1.txt 
echo "-Line  75 " 
echo >> results$1.txt
echo "-Line  76 " 
echo >> results$1.txt
echo "-Line  77 " 
echo "Test parameters order, all should work" >> results$1.txt
echo "-Line  78 " >> results$1.txt
./$1/code/build/logappend -K token -T 17 -G guestd -A logfile >> results$1.txt 
echo "-Line  79 " 
echo >> results$1.txt
echo "-Line  80 " >> results$1.txt
./$1/code/build/logappend -T 18 -K token -A logfile -G gueste >> results$1.txt 
echo "-Line  81 " 
echo >> results$1.txt
echo "-Line  82 " 
echo >> results$1.txt
echo "-Line  83 " 
echo "Cannot have both employee and guest (invalid)" >> results$1.txt
echo "-Line  84 " >> results$1.txt
./$1/code/build/logappend -K token -T 19 -G guestf -E employeea -A log >> results$1.txt 
echo "-Line  85 " 
echo >> results$1.txt
echo "-Line  86 " 
echo >> results$1.txt
echo "-Line  87 " 
echo "Missing logfile(invalid)" >> results$1.txt
echo "-Line  88 " >> results$1.txt
./$1/code/build/logappend -K token -T 20 -G guestg -E employeeb -A >> results$1.txt 
echo "-Line  89 " 
echo >> results$1.txt
echo "-Line  90 " 
echo >> results$1.txt
echo "-Line  91 " 
echo "Cannot have both arrival and departure (invalid)" >> results$1.txt
echo "-Line  92 " >> results$1.txt
./$1/code/build/logappend -K token -T 21 -E emph -A -L log >> results$1.txt 
echo "-Line  93 " 
echo >> results$1.txt
echo "-Line  94 " 
echo >> results$1.txt
echo "-Line  95 " 
echo "Employee cannot leave gallery without leaving room (third invalid)" >> results$1.txt
echo "-Line  96 " >> results$1.txt
./$1/code/build/logappend -K token -T 22 -E eA -A log1 >> results$1.txt 
echo "-Line  97 " 
echo >> results$1.txt
echo "-Line  98 " >> results$1.txt
./$1/code/build/logappend -K token -T 23 -E eA -A -R 1 log1 >> results$1.txt 
echo "-Line  99 " 
echo >> results$1.txt
echo "-Line  100 " >> results$1.txt
./$1/code/build/logappend -K token -T 24 -E eA -L log1 >> results$1.txt 
echo "-Line  101 " 
echo >> results$1.txt
echo "-Line  102 " 
echo >> results$1.txt
echo "-Line  103 " 
echo "Employee cannot leave room without being in it (second invalid)" >> results$1.txt
echo "-Line  104 " >> results$1.txt
./$1/code/build/logappend -K token -T 25 -E eB -A log1 >> results$1.txt 
echo "-Line  105 " 
echo >> results$1.txt
echo "-Line  106 " >> results$1.txt
./$1/code/build/logappend -K token -T 26 -E eB -L -R 1 log1 >> results$1.txt 
echo "-Line  107 " 
echo >> results$1.txt
echo "-Line  108 " 
echo >> results$1.txt
echo "-Line  109 " 
echo "Employee cannot arrive to another room withount first leaving it (third invalid)" >> results$1.txt
echo "-Line  110 " >> results$1.txt
./$1/code/build/logappend -K token -T 27 -E eC -A log1 >> results$1.txt 
echo "-Line  111 " 
echo >> results$1.txt
echo "-Line  112 " >> results$1.txt
./$1/code/build/logappend -K token -T 28 -E eC -A -R 1 log1 >> results$1.txt 
echo "-Line  113 " 
echo >> results$1.txt
echo "-Line  114 " >> results$1.txt
./$1/code/build/logappend -K token -T 29 -E eC -A -R 2 log1 >> results$1.txt 
echo "-Line  115 " 
echo >> results$1.txt
echo "-Line  116 " 
echo >> results$1.txt
echo "-Line  117 " 
echo "Employee attempt to leave room (all OK, fifth invalid)" >> results$1.txt
echo "-Line  118 " >> results$1.txt
./$1/code/build/logappend -K token -T 30 -E eD -A log1 >> results$1.txt 
echo "-Line  119 " 
echo >> results$1.txt
echo "-Line  120 " >> results$1.txt
./$1/code/build/logappend -K token -T 31 -E eD -A -R 1 log1 >> results$1.txt 
echo "-Line  121 " 
echo >> results$1.txt
echo "-Line  122 " >> results$1.txt
./$1/code/build/logappend -K token -T 32 -E eD -L -R 1 log1 >> results$1.txt 
echo "-Line  123 " 
echo >> results$1.txt
echo "-Line  124 " >> results$1.txt
./$1/code/build/logappend -K token -T 33 -E eD -L log1 >> results$1.txt 
echo "-Line  125 " 
echo >> results$1.txt
echo "-Line  126 " >> results$1.txt
./$1/code/build/logappend -K token -T 34 -E eD -L -R 1 log1 >> results$1.txt 
echo "-Line  127 " 
echo >> results$1.txt
echo "-Line  128 " 
echo >> results$1.txt
echo "-Line  129 " 
echo "Employee attempt to leave another room (third invalid)" >> results$1.txt
echo "-Line  130 " >> results$1.txt
./$1/code/build/logappend -K token -T 35 -E eE -A log1 >> results$1.txt 
echo "-Line  131 " 
echo >> results$1.txt
echo "-Line  132 " >> results$1.txt
./$1/code/build/logappend -K token -T 36 -E eE -A -R 1 log1 >> results$1.txt 
echo "-Line  133 " 
echo >> results$1.txt
echo "-Line  134 " >> results$1.txt
./$1/code/build/logappend -K token -T 37 -E eE -L -R 2 log1 >> results$1.txt 
echo "-Line  135 " 
echo >> results$1.txt
echo "-Line  136 " 
echo >> results$1.txt
echo "-Line  137 " 
echo "Guest cannot leave gallery without leaving room (third invalid)" >> results$1.txt
echo "-Line  138 " >> results$1.txt
./$1/code/build/logappend -K token -T 38 -G eF -A log1 >> results$1.txt 
echo "-Line  139 " 
echo >> results$1.txt
echo "-Line  140 " >> results$1.txt
./$1/code/build/logappend -K token -T 39 -G eF -A -R 1 log1 >> results$1.txt 
echo "-Line  141 " 
echo >> results$1.txt
echo "-Line  142 " >> results$1.txt
./$1/code/build/logappend -K token -T 40 -G eF -L log1 >> results$1.txt 
echo "-Line  143 " 
echo >> results$1.txt
echo "-Line  144 " 
echo >> results$1.txt
echo "-Line  145 " 
echo "Guest cannot leave room without being in it (second invalid)" >> results$1.txt
echo "-Line  146 " >> results$1.txt
./$1/code/build/logappend -K token -T 41 -G eG -A log1 >> results$1.txt 
echo "-Line  147 " 
echo >> results$1.txt
echo "-Line  148 " >> results$1.txt
./$1/code/build/logappend -K token -T 42 -G eG -L -R 1 log1 >> results$1.txt 
echo "-Line  149 " 
echo >> results$1.txt
echo "-Line  150 " 
echo >> results$1.txt
echo "-Line  151 " 
echo "Guest cannot arrive to another room whithout leaving the first (third invalid)" >> results$1.txt
echo "-Line  152 " >> results$1.txt
./$1/code/build/logappend -K token -T 43 -G eH -A log1 >> results$1.txt 
echo "-Line  153 " 
echo >> results$1.txt
echo "-Line  154 " >> results$1.txt
./$1/code/build/logappend -K token -T 44 -G eH -A -R 1 log1 >> results$1.txt 
echo "-Line  155 " 
echo >> results$1.txt
echo "-Line  156 " >> results$1.txt
./$1/code/build/logappend -K token -T 45 -G eH -A -R 2 log1 >> results$1.txt 
echo "-Line  157 " 
echo >> results$1.txt
echo "-Line  158 " 
echo >> results$1.txt
echo "-Line  159 " 
echo "Guest attempt to leave room again (all OK, fifth invalid)" >> results$1.txt
echo "-Line  160 " >> results$1.txt
./$1/code/build/logappend -K token -T 46 -G eI -A log1 >> results$1.txt 
echo "-Line  161 " 
echo >> results$1.txt
echo "-Line  162 " >> results$1.txt
./$1/code/build/logappend -K token -T 47 -G eI -A -R 1 log1 >> results$1.txt 
echo "-Line  163 " 
echo >> results$1.txt
echo "-Line  164 " >> results$1.txt
./$1/code/build/logappend -K token -T 48 -G eI -L -R 1 log1 >> results$1.txt 
echo "-Line  165 " 
echo >> results$1.txt
echo "-Line  166 " >> results$1.txt
./$1/code/build/logappend -K token -T 49 -G eI -L log1 >> results$1.txt 
echo "-Line  167 " 
echo >> results$1.txt
echo "-Line  168 " >> results$1.txt
./$1/code/build/logappend -K token -T 50 -G eI -L -R 1 log1 >> results$1.txt 
echo "-Line  169 " 
echo >> results$1.txt
echo "-Line  170 " 
echo >> results$1.txt
echo "-Line  171 " 
echo "Guest attempt to leave another room (third invalid)" >> results$1.txt
echo "-Line  172 " >> results$1.txt
./$1/code/build/logappend -K token -T 51 -G eJ -A log1 >> results$1.txt 
echo "-Line  173 " 
echo >> results$1.txt
echo "-Line  174 " >> results$1.txt
./$1/code/build/logappend -K token -T 52 -G eJ -A -R 1 log1 >> results$1.txt 
echo "-Line  175 " 
echo >> results$1.txt
echo "-Line  176 " >> results$1.txt
./$1/code/build/logappend -K token -T 53 -G eJ -L -R 2 log1 >> results$1.txt 
echo "-Line  177 " 
echo >> results$1.txt
echo "-Line  178" >> results$1.txt 
echo >> results$1.txt
echo "-Line  179" >> results$1.txt
echo "Cannot leave room without being in it (invalid)" >> results$1.txt
echo "-Line  180 " >> results$1.txt
./$1/code/build/logappend -K token -T 54 -G eK -L -R 2 log1 >> results$1.txt 
echo "-Line  181" >> results$1.txt
echo >> results$1.txt
echo "-Line  182" >> results$1.txt
echo >> results$1.txt
echo "-Line  183" >> results$1.txt
echo "Cannot leave gallery without being in it (invalid)" >> results$1.txt
echo "-Line  184 " >> results$1.txt
./$1/code/build/logappend -K token -T 55 -G eL -L log1 >> results$1.txt 
echo "-Line  185" >> results$1.txt
echo >> results$1.txt
echo "-Line  186" >> results$1.txt
echo >> results$1.txt
echo "-Line  187" >> results$1.txt
echo "Should print error on non existent batch (invalid)" >> results$1.txt
echo "-Line  188 " >> results$1.txt
./$1/code/build/logappend -B foo >> results$1.txt 
echo "-Line  189" >> results$1.txt
echo >> results$1.txt
echo "-Line  190" >> results$1.txt
echo >> results$1.txt
echo "-Line  191" >> results$1.txt
echo "Cannot have non numeric room (third invalid)" >> results$1.txt
echo "-Line  192 " >> results$1.txt
./$1/code/build/logappend -K token -T 56 -E baseA -A log1 >> results$1.txt 
echo "-Line  193" >> results$1.txt
echo >> results$1.txt
echo "-Line  194 " >> results$1.txt
./$1/code/build/logappend -K token -T 57 -G guestH -A -R 1 log1 >> results$1.txt 
echo "-Line  195" >> results$1.txt
echo >> results$1.txt
echo "-Line  196 " >> results$1.txt
./$1/code/build/logappend -K token -T 58 -G guestI -A -R foo log1 >> results$1.txt 
echo "-Line  197" >> results$1.txt
echo >> results$1.txt
echo "-Line  198" >> results$1.txt
echo >> results$1.txt
echo "-Line  199" >> results$1.txt
echo "Room 2, 02, 002 should all be 2 (15 guests first 4 in room 2)" >> results$1.txt
echo "-Line  200 " >> results$1.txt
./$1/code/build/logappend -K token -T 59 -G gA -A log1 >> results$1.txt 
echo "-Line  201" >> results$1.txt
echo >> results$1.txt
echo "-Line  202 " >> results$1.txt
./$1/code/build/logappend -K token -T 60 -G gB -A log1 >> results$1.txt 
echo "-Line  203" >> results$1.txt
echo >> results$1.txt
echo "-Line  204 " >> results$1.txt
./$1/code/build/logappend -K token -T 61 -G gC -A log1 >> results$1.txt 
echo "-Line  205" >> results$1.txt
echo >> results$1.txt
echo "-Line  206 " >> results$1.txt
./$1/code/build/logappend -K token -T 62 -G gD -A log1 >> results$1.txt 
echo "-Line  207" >> results$1.txt
echo >> results$1.txt
echo "-Line  208 " >> results$1.txt
./$1/code/build/logappend -K token -T 63 -G gE -A log1 >> results$1.txt 
echo "-Line  209" >> results$1.txt
echo >> results$1.txt
echo "-Line  210 " >> results$1.txt
./$1/code/build/logappend -K token -T 64 -G gF -A log1 >> results$1.txt 
echo "-Line  211" >> results$1.txt
echo >> results$1.txt
echo "-Line  212 " >> results$1.txt
./$1/code/build/logappend -K token -T 65 -G gG -A log1 >> results$1.txt 
echo "-Line  213" >> results$1.txt
echo >> results$1.txt
echo "-Line  214 " >> results$1.txt
./$1/code/build/logappend -K token -T 66 -G gH -A log1 >> results$1.txt 
echo "-Line  215" >> results$1.txt
echo >> results$1.txt
echo "-Line  216 " >> results$1.txt
./$1/code/build/logappend -K token -T 67 -G gI -A log1 >> results$1.txt 
echo "-Line  217" >> results$1.txt
echo >> results$1.txt
echo "-Line  218 " >> results$1.txt
./$1/code/build/logappend -K token -T 68 -G gJ -A log1 >> results$1.txt 
echo "-Line  219" >> results$1.txt
echo >> results$1.txt
echo "-Line  220 " >> results$1.txt
./$1/code/build/logappend -K token -T 69 -G gA -A -R 2 log1 >> results$1.txt 
echo "-Line  221" >> results$1.txt
echo >> results$1.txt
echo "-Line  222 " >> results$1.txt
./$1/code/build/logappend -K token -T 70 -G gB -A -R 02 log1 >> results$1.txt 
echo "-Line  223" >> results$1.txt
echo >> results$1.txt
echo "-Line  224 " >> results$1.txt
./$1/code/build/logappend -K token -T 71 -G gC -A -R 002 log1 >> results$1.txt 
echo "-Line  225" >> results$1.txt
echo >> results$1.txt
echo "-Line  226 " >> results$1.txt
./$1/code/build/logappend -K token -T 72 -G gD -A -R 0 log1 >> results$1.txt 
echo "-Line  227" >> results$1.txt
echo >> results$1.txt
echo "-Line  228 " >> results$1.txt
./$1/code/build/logread -K token -S log1 >> results$1.txt 
echo "-Line  229" >> results$1.txt
echo >> results$1.txt
echo "-Line  230" >> results$1.txt
echo >> results$1.txt
echo "-Line  231" >> results$1.txt
echo "Should accept really long names for employees (should be OK)" >> results$1.txt
echo "-Line  232 " >> results$1.txt
./$1/code/build/logappend -K token -T 73 -E aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -A log1 >> results$1.txt 
echo "-Line  233" >> results$1.txt
echo >> results$1.txt
echo "-Line  234" >> results$1.txt
echo >> results$1.txt
echo "-Line  235" >> results$1.txt
echo "Should accept really long names for guests (should be OK)" >> results$1.txt
echo "-Line  236 " >> results$1.txt
./$1/code/build/logappend -K token -T 74 -G aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -A log1 >> results$1.txt 
echo "-Line  237" >> results$1.txt
echo >> results$1.txt
echo "-Line  238" >> results$1.txt
echo >> results$1.txt
echo "-Line  239" >> results$1.txt
echo "Should not accept non numeric timpestamp (invalid)" >> results$1.txt
echo "-Line  240 " >> results$1.txt
./$1/code/build/logappend -K token -T foo -E alphatimestamp -A log1 >> results$1.txt 
echo "-Line  241" >> results$1.txt
echo >> results$1.txt
echo "-Line  242" >> results$1.txt
echo >> results$1.txt
echo "-Line  243" >> results$1.txt
echo "Cannot have two logs at same time (?)" >> results$1.txt
echo "-Line  244 " >> results$1.txt
./$1/code/build/logappend -T 75 -K token -E eO -A log1 >> results$1.txt 
echo "-Line  245" >> results$1.txt
echo >> results$1.txt
echo "-Line  246 " >> results$1.txt
./$1/code/build/logappend -T 76 -K token -E eP -A log1 >> results$1.txt
echo "-Line  247" >> results$1.txt
echo >> results$1.txt
echo "-Line  248" >> results$1.txt
echo >> results$1.txt
echo "-Line  249" >> results$1.txt
echo "Should not have the second entry (?)" >> results$1.txt
echo "-Line  250 " >> results$1.txt
./$1/code/build/logappend -K token -T 77 -E eQ -A log1 >> results$1.txt 
echo "-Line  251" >> results$1.txt
echo >> results$1.txt
echo "-Line  252 " >> results$1.txt
./$1/code/build/logappend -K token -T 78 -G gO -A log1 >> results$1.txt 
echo "-Line  253" >> results$1.txt
echo >> results$1.txt
echo "-Line  254 " >> results$1.txt
./$1/code/build/logread -K token -S log1 >> results$1.txt 
echo "-Line  255" >> results$1.txt
echo >> results$1.txt
echo "-Line  256" >> results$1.txt
echo >> results$1.txt
echo "-Line  257" >> results$1.txt
echo "All guests should appear, watch rooms on new lines" >> results$1.txt
echo "-Line  258 " >> results$1.txt
./$1/code/build/logappend -K token -T 79 -G gAA -A log1 >> results$1.txt 
echo "-Line  259" >> results$1.txt
echo >> results$1.txt
echo "-Line  260 " >> results$1.txt
./$1/code/build/logappend -K token -T 80 -G gBA -A log1 >> results$1.txt 
echo "-Line  261" >> results$1.txt
echo >> results$1.txt
echo "-Line  262 " >> results$1.txt
./$1/code/build/logappend -K token -T 81 -G gCA -A log1 >> results$1.txt 
echo "-Line  263" >> results$1.txt
echo >> results$1.txt
echo "-Line  264 " >> results$1.txt
./$1/code/build/logappend -K token -T 82 -G gDA -A log1 >> results$1.txt 
echo "-Line  265" >> results$1.txt
echo >> results$1.txt
echo "-Line  266 " >> results$1.txt
./$1/code/build/logappend -K token -T 83 -G gEA -A log1 >> results$1.txt 
echo "-Line  267" >> results$1.txt
echo >> results$1.txt
echo "-Line  268 " >> results$1.txt
./$1/code/build/logappend -K token -T 84 -G gFA -A log1 >> results$1.txt 
echo "-Line  269" >> results$1.txt
echo >> results$1.txt
echo "-Line  270 " >> results$1.txt
./$1/code/build/logappend -K token -T 85 -G gGA -A log1 >> results$1.txt 
echo "-Line  271" >> results$1.txt
echo >> results$1.txt
echo "-Line  272 " >> results$1.txt
./$1/code/build/logappend -K token -T 86 -G gHA -A log1 >> results$1.txt 
echo "-Line  273" >> results$1.txt
echo >> results$1.txt
echo "-Line  274 " >> results$1.txt
./$1/code/build/logappend -K token -T 87 -G gIA -A log1 >> results$1.txt 
echo "-Line  275" >> results$1.txt
echo >> results$1.txt
echo "-Line  276 " >> results$1.txt
./$1/code/build/logappend -K token -T 88 -G gJA -A log1 >> results$1.txt 
echo "-Line  277" >> results$1.txt
echo >> results$1.txt
echo "-Line  278 " >> results$1.txt
./$1/code/build/logappend -K token -T 89 -G gAA -A -R 2 log1 >> results$1.txt 
echo "-Line  279" >> results$1.txt
echo >> results$1.txt
echo "-Line  280 " >> results$1.txt
./$1/code/build/logappend -K token -T 90 -G gBA -A -R 02 log1 >> results$1.txt 
echo "-Line  281" >> results$1.txt
echo >> results$1.txt
echo "-Line  282 " >> results$1.txt
./$1/code/build/logappend -K token -T 91 -G gCA -A -R 002 log1 >> results$1.txt 
echo "-Line  283" >> results$1.txt
echo >> results$1.txt
echo "-Line  284 " >> results$1.txt
./$1/code/build/logappend -K token -T 92 -G gDA -A -R 0 log1 >> results$1.txt 
echo "-Line  285" >> results$1.txt
echo >> results$1.txt
echo "-Line  286 " >> results$1.txt
./$1/code/build/logread -K token -S log1 >> results$1.txt 
echo "-Line  287" >> results$1.txt
echo >> results$1.txt
echo "-Line  288" >> results$1.txt
echo >> results$1.txt
echo "-Line  289" >> results$1.txt
echo "All emps should appear, watch rooms on new lines" >> results$1.txt
echo "-Line  290 " >> results$1.txt
./$1/code/build/logappend -K token -T 93 -E emA -A log1 >> results$1.txt 
echo "-Line  291" >> results$1.txt
echo >> results$1.txt
echo "-Line  292 " >> results$1.txt
./$1/code/build/logappend -K token -T 94 -E emB -A log1 >> results$1.txt 
echo "-Line  293" >> results$1.txt
echo >> results$1.txt
echo "-Line  294 " >> results$1.txt
./$1/code/build/logappend -K token -T 95 -E emC -A log1 >> results$1.txt 
echo "-Line  295" >> results$1.txt
echo >> results$1.txt
echo "-Line  296 " >> results$1.txt
./$1/code/build/logappend -K token -T 96 -E emD -A log1 >> results$1.txt 
echo "-Line  297" >> results$1.txt
echo >> results$1.txt
echo "-Line  298 " >> results$1.txt
./$1/code/build/logappend -K token -T 97 -E emE -A log1 >> results$1.txt 
echo "-Line  299" >> results$1.txt
echo >> results$1.txt
echo "-Line  300 " >> results$1.txt
./$1/code/build/logappend -K token -T 98 -E emF -A log1 >> results$1.txt 
echo "-Line  301" >> results$1.txt
echo >> results$1.txt
echo "-Line  302 " >> results$1.txt
./$1/code/build/logappend -K token -T 99 -E emG -A log1 >> results$1.txt 
echo "-Line  303" >> results$1.txt
echo >> results$1.txt
echo "-Line  304 " >> results$1.txt
./$1/code/build/logappend -K token -T 100 -E emH -A log1 >> results$1.txt 
echo "-Line  305" >> results$1.txt
echo >> results$1.txt
echo "-Line  306 " >> results$1.txt
./$1/code/build/logappend -K token -T 101 -E emI -A log1 >> results$1.txt 
echo "-Line  307" >> results$1.txt
echo >> results$1.txt
echo "-Line  308 " >> results$1.txt
./$1/code/build/logappend -K token -T 102 -E emJ -A log1 >> results$1.txt 
echo "-Line  309" >> results$1.txt
echo >> results$1.txt
echo "-Line  310 " >> results$1.txt
./$1/code/build/logappend -K token -T 103 -E emA -A -R 2 log1 >> results$1.txt 
echo "-Line  311" >> results$1.txt
echo >> results$1.txt
echo "-Line  312 " >> results$1.txt
./$1/code/build/logappend -K token -T 104 -E emL -A -R 02 log1 >> results$1.txt 
echo "-Line  313" >> results$1.txt
echo >> results$1.txt
echo "-Line  314 " >> results$1.txt
./$1/code/build/logappend -K token -T 105 -E emM -A -R 002 log1 >> results$1.txt 
echo "-Line  315" >> results$1.txt
echo >> results$1.txt
echo "-Line  316 " >> results$1.txt
./$1/code/build/logappend -K token -T 106 -E emN -A -R 0 log1 >> results$1.txt 
echo "-Line  317" >> results$1.txt
echo >> results$1.txt
echo "-Line  318 " >> results$1.txt
./$1/code/build/logread -K token -S log1 >> results$1.txt 
echo "-Line  319" >> results$1.txt
echo >> results$1.txt
echo "-Line  320" >> results$1.txt
echo >> results$1.txt
echo "-Line  321" >> results$1.txt
echo "Should not be valid last logappend (two ok, third invalid - repeated emp)" >> results$1.txt
echo "-Line  322 " >> results$1.txt
./$1/code/build/logappend -K token -T 108 -E eQ -A log1 >> results$1.txt 
echo "-Line  323" >> results$1.txt
echo >> results$1.txt
echo "-Line  324 " >> results$1.txt
./$1/code/build/logappend -K token -T 109 -E eQ -A -R 1 log1 >> results$1.txt 
echo "-Line  325" >> results$1.txt
echo >> results$1.txt
echo "-Line  326 " >> results$1.txt
./$1/code/build/logappend -K token -T 110 -E eQ -A log1 >> results$1.txt 
echo "-Line  327" >> results$1.txt
echo >> results$1.txt
echo "-Line  328 " >> results$1.txt
./$1/code/build/logread -K token -S log1 >> results$1.txt 
echo "-Line  329" >> results$1.txt
echo >> results$1.txt
echo "-Line  330" >> results$1.txt
echo >> results$1.txt
echo "-Line  331" >> results$1.txt
echo "Cannot arrive to room already being there (third invalid)" >> results$1.txt
echo "-Line  332 " >> results$1.txt
./$1/code/build/logappend -K token -T 111 -G gaa -A log1 >> results$1.txt 
echo "-Line  333" >> results$1.txt
echo >> results$1.txt
echo "-Line  334 " >> results$1.txt
./$1/code/build/logappend -K token -T 112 -G gaa -A -R 1 log1 >> results$1.txt 
echo "-Line  335" >> results$1.txt
echo >> results$1.txt
echo "-Line  336 " >> results$1.txt
./$1/code/build/logappend -K token -T 113 -G gaa -A -R 1 log1 >> results$1.txt 
echo "-Line  337" >> results$1.txt
echo >> results$1.txt
echo "-Line  338 " >> results$1.txt
./$1/code/build/logread -K token -S log1 >> results$1.txt 
echo "-Line  339" >> results$1.txt
echo >> results$1.txt
echo "-Line  340" >> results$1.txt
echo >> results$1.txt
echo "-Line  341" >> results$1.txt
echo "Should not accept more than one log file (invalid)" >> results$1.txt
echo "-Line  342 " >> results$1.txt
./$1/code/build/logappend -K token -T 114 -G gba -A log2 log3 >> results$1.txt 
echo "-Line  343" >> results$1.txt
echo >> results$1.txt
echo "-Line  344" >> results$1.txt
echo >> results$1.txt
echo "-Line  345" >> results$1.txt
echo "Non existing batch file is error (invalid)" >> results$1.txt
echo "-Line  346 " >> results$1.txt
./$1/code/build/logappend -B doesntExist >> results$1.txt 
echo "-Line  347" >> results$1.txt
echo >> results$1.txt
echo "-Line  348" >> results$1.txt
echo >> results$1.txt
echo "-Line  349" >> results$1.txt
echo "Bad path should result in error (invalid)" >> results$1.txt
echo "-Line  350 " >> results$1.txt
./$1/code/build/logappend -K token -T 115 ~/ >> results$1.txt 
echo "-Line  351" >> results$1.txt
echo >> results$1.txt
echo "-Line  352" >> results$1.txt
echo >> results$1.txt
echo "-Line  353" >> results$1.txt
echo "Timestamp 0 is error (invalid)" >> results$1.txt
echo "-Line  354 " >> results$1.txt
./$1/code/build/logappend -K token -T 0 -G gc -A log2>> results$1.txt 
echo "-Line  355" >> results$1.txt
echo >> results$1.txt
echo "-Line  356" >> results$1.txt
echo >> results$1.txt
echo "-Line  357" >> results$1.txt
echo "Timestamp greater than 1073741823 or negative should results in error (invalid twice)" >> results$1.txt
echo "-Line  358 " >> results$1.txt
./$1/code/build/logappend -K token -T 1073741824 -G gBB -A log2 >> results$1.txt 
echo "-Line  359" >> results$1.txt
echo >> results$1.txt
echo "-Line  360 " >> results$1.txt
./$1/code/build/logappend -K token -T -10 -G gCB -A log2>> results$1.txt 
echo "-Line  361" >> results$1.txt
echo >> results$1.txt
echo "-Line  362" >> results$1.txt
echo >> results$1.txt
echo "-Line  363" >> results$1.txt
echo "Room greater than 1073741823 or negative should results in error (third and fourth invalid)" >> results$1.txt
echo "-Line  364 " >> results$1.txt
./$1/code/build/logappend -K token -T 116 -G gBC -A log2>> results$1.txt 
echo "-Line  365" >> results$1.txt
echo >> results$1.txt
echo "-Line  366 " >> results$1.txt
./$1/code/build/logappend -K token -T 117 -G gCC -A log2>> results$1.txt 
echo "-Line  367" >> results$1.txt
echo >> results$1.txt
echo "-Line  368 " >> results$1.txt
./$1/code/build/logappend -K token -T 118 -G gBC -A -R 1073741824 log2>> results$1.txt 
echo "-Line  369" >> results$1.txt
echo >> results$1.txt
echo "-Line  370 " >> results$1.txt
./$1/code/build/logappend -K token -T 119 -G gCC -A -R -10 log2>> results$1.txt 
echo "-Line  371" >> results$1.txt
echo >> results$1.txt
echo "-Line  372" >> results$1.txt
echo >> results$1.txt

echo "-Line  374 " #############################################################################################################################

echo "-Line  376" >> results$1.txt
echo "#####Unicode tests " >>results$1.txt
echo "-Line  377" >> results$1.txt
echo >> results$1.txt
echo "-Line  378 " >> results$1.txt
./$1/code/build/logappend -K ? -T 2 -E emp -A logfile >>results$1.txt
echo "-Line  379" >> results$1.txt
echo >> results$1.txt
echo "-Line  380 " >> results$1.txt
./$1/code/build/logappend -K token -T ? -E emp -A logfile >>results$1.txt
echo "-Line  381" >> results$1.txt
echo >> results$1.txt
echo "-Line  382 " >> results$1.txt
./$1/code/build/logappend -K token -T 2  -E ? -A logfile >>results$1.txt
echo "-Line  383" >> results$1.txt
echo >> results$1.txt
echo "-Line  384 " >> results$1.txt
./$1/code/build/logappend -K token -T 2  -E emp -A ? >>results$1.txt
echo "-Line  385" >> results$1.txt
echo >> results$1.txt

echo "-Line  387" >> results$1.txt
echo "##Cannot have same entry twice " >> results$1.txt
echo "-Line  388 " >> results$1.txt
./$1/code/build/logappend -K token -T 2 -G guest -A logfile >>results$1.txt
echo "-Line  389" >> results$1.txt
echo >> results$1.txt
echo "-Line  390 " >> results$1.txt
./$1/code/build/logappend -K token -T 2 -G guest -A logfile >>results$1.txt
echo "-Line  391" >> results$1.txt
echo >> results$1.txt

echo "-Line  393" >> results$1.txt
echo  "##Logappend to /dev/null should be invalid ">>results$1.txt
echo "-Line  394 " >> results$1.txt
./$1/code/build/logappend -T 1 -K token -E emp -A /dev/null >>results$1.txt
echo "-Line  395" >> results$1.txt
echo >> results$1.txt

echo "-Line  397" >> results$1.txt
echo " ## Logappend to /etc/passwd should be invalid ">>results$1.txt
echo "-Line  398 " >> results$1.txt
./$1/code/build/logappend -T 1 -K token -E emp -A /etc/passwd >>results$1.txt
echo "-Line  399" >> results$1.txt
echo >> results$1.txt

echo "-Line  401" >> results$1.txt
echo "## Logappend to batch /etc/passwd should be invalid once ">>results$1.txt
echo "-Line  402 " >> results$1.txt
./$1/code/build/logappend -B /etc/passwd >>results$1.txt
echo "-Line  403" >> results$1.txt
echo >> results$1.txt

echo "-Line  405" >> results$1.txt
echo "## Logread to /dev/null should be integrity violation ">>results$1.txt
echo "-Line  406 " >> results$1.txt
./$1/code/build/logread -K token -S /dev/null >>results$1.txt
echo "-Line  407" >> results$1.txt
echo >> results$1.txt
echo "-Line  408 " >> results$1.txt
./$1/code/build/logread -K token -T -G guest /dev/null >>results$1.txt
echo "-Line  409" >> results$1.txt
echo >> results$1.txt
echo "-Line  410 " >> results$1.txt
./$1/code/build/logread -K token -R -G guest /dev/null >>results$1.txt
echo "-Line  411" >> results$1.txt
echo >> results$1.txt
echo "-Line  412 " >> results$1.txt
./$1/code/build/logread -K token -I -G guest /dev/null >>results$1.txt
echo "-Line  413" >> results$1.txt
echo >> results$1.txt

echo "-Line  415" >> results$1.txt
echo "## Logread to /etc/passwd should be integrity violation ">>results$1.txt
echo "-Line  416 " >> results$1.txt
./$1/code/build/logread -K token -S /etc/passwd >>results$1.txt
echo "-Line  417" >> results$1.txt
echo >> results$1.txt
echo "-Line  418 " >> results$1.txt
./$1/code/build/logread -K token -T -G guest /etc/passwd >>results$1.txt
echo "-Line  419" >> results$1.txt
echo >> results$1.txt
echo "-Line  420 " >> results$1.txt
./$1/code/build/logread -K token -R -G guest /etc/passwd >>results$1.txt
echo "-Line  421" >> results$1.txt
echo >> results$1.txt
echo "-Line  422 " >> results$1.txt
./$1/code/build/logread -K token -I -G guest /etc/passwd >>results$1.txt
echo "-Line  423" >> results$1.txt
echo >> results$1.txt

echo "-Line  425" >> results$1.txt
echo "## Periods should be accepted on filenames ">>results$1.txt
echo "-Line  426 " >> results$1.txt
./$1/code/build/logappend -T 1 -K token -E emp -A file.log >>results$1.txt
echo "-Line  427" >> results$1.txt
echo >> results$1.txt

echo "-Line  429" >> results$1.txt
echo " ## Filenames with periods should be able to be opened">>results$1.txt
echo "-Line  430 " >> results$1.txt
./$1/code/build/logappend -T 1 -K token -E emp -A file.log >>results$1.txt
echo "-Line  431" >> results$1.txt
echo >> results$1.txt
echo "-Line  432 " >> results$1.txt
./$1/code/build/logread -K token -S file.log >>results$1.txt
echo "-Line  433" >> results$1.txt
echo >> results$1.txt

echo "-Line  435" >> results$1.txt
echo "## Logappend should make file on current path ">>results$1.txt
echo "-Line  436 " >> results$1.txt
./$1/code/build/logappend -T 1 -K token -E emp -A ./1 >>results$1.txt
echo "-Line  437" >> results$1.txt
echo >> results$1.txt

echo "-Line  439" >> results$1.txt
echo "##Logread should be able to read files on current path ">>results$1.txt
echo "-Line  440 " >> results$1.txt
./$1/code/build/logappend -T 1 -K token -E emp -A ./1 >>results$1.txt
echo "-Line  441" >> results$1.txt
echo >> results$1.txt
echo "-Line  442 " >> results$1.txt
./$1/code/build/logread -K token -S ./1 >>results$1.txt
echo "-Line  443" >> results$1.txt
echo >> results$1.txt

echo "-Line  445" >> results$1.txt
echo "##Cannot enter guest to gallery if already in gallery ">>results$1.txt
echo "-Line  446 " >> results$1.txt
./$1/code/build/logappend -K token -T 1 -G guest -A logfile >>results$1.txt
echo "-Line  447" >> results$1.txt
echo >> results$1.txt
echo "-Line  448 " >> results$1.txt
./$1/code/build/logappend -K token -T 2 -G guest -A logfile >>results$1.txt
echo "-Line  449" >> results$1.txt
echo >> results$1.txt

echo "-Line  451" >> results$1.txt
echo "##Cannot enter employee to gallery if already in gallery ">>results$1.txt
echo "-Line  452 " >> results$1.txt
./$1/code/build/logappend -K token -T 1 -E emp -A logfile >>results$1.txt
echo "-Line  453" >> results$1.txt
echo >> results$1.txt
echo "-Line  454 " >> results$1.txt
./$1/code/build/logappend -K token -T 2 -E emp -A logfile >>results$1.txt
echo "-Line  455" >> results$1.txt
echo >> results$1.txt

echo "-Line  457" >> results$1.txt
echo "##Cannot add to smaller timestamp ">>results$1.txt
echo "-Line  458 " >> results$1.txt
./$1/code/build/logappend -K token -T 2 -G guest -A logfile >>results$1.txt
echo "-Line  459" >> results$1.txt
echo >> results$1.txt
echo "-Line  460 " >> results$1.txt
./$1/code/build/logappend -K token -T 1 -G guest -A logfile >>results$1.txt
echo "-Line  461" >> results$1.txt
echo >> results$1.txt

echo "-Line  463" >> results$1.txt
echo "##Invalid token is error ">>results$1.txt
echo "-Line  464 " >> results$1.txt
./$1/code/build/logappend -K %hello -T 2 -G guest -A log >>results$1.txt
echo "-Line  465" >> results$1.txt
echo >> results$1.txt

echo "-Line  467" >> results$1.txt
echo "##Employee and guest can have same name ">>results$1.txt
echo "-Line  468 " >> results$1.txt
./$1/code/build/logappend -K token -T 2 -G bob -A log >>results$1.txt
echo "-Line  469" >> results$1.txt
echo >> results$1.txt
echo "-Line  470 " >> results$1.txt
./$1/code/build/logappend -K token -T 3 -E bob -A log >>results$1.txt
echo "-Line  471" >> results$1.txt
echo >> results$1.txt
echo "-Line  472 " >> results$1.txt
./$1/code/build/logread -K token -S log >>results$1.txt
echo "-Line  473" >> results$1.txt
echo >> results$1.txt

echo "-Line  475" >> results$1.txt
echo "##Test parameter order, all should work ">>results$1.txt
echo "-Line  476 " >> results$1.txt
./$1/code/build/logappend -K token -T 1 -G guest -A logfile >>results$1.txt
echo "-Line  477" >> results$1.txt
echo >> results$1.txt
echo "-Line  478 " >> results$1.txt
./$1/code/build/logappend -T 1 -K token -G guest -A logfile >>results$1.txt
echo "-Line  479" >> results$1.txt
echo >> results$1.txt

echo "-Line  481" >> results$1.txt
echo "##Cannot have both employee and guest ">>results$1.txt
echo "-Line  482 " >> results$1.txt
./$1/code/build/logappend -K token -T 1 -G guest -E employee -A log >>results$1.txt
echo "-Line  483" >> results$1.txt
echo >> results$1.txt

echo "-Line  485" >> results$1.txt
echo "##Missing log file error ">>results$1.txt
echo "-Line  486 " >> results$1.txt
./$1/code/build/logappend -K token -T 1 -G guest -E employee -A >>results$1.txt
echo "-Line  487" >> results$1.txt
echo >> results$1.txt

echo "-Line  489" >> results$1.txt
echo "##Cannot have both arrival and departure ">>results$1.txt
echo "-Line  490 " >> results$1.txt
./$1/code/build/logappend -K token -T 1 -E emp -A -L log >>results$1.txt
echo "-Line  491" >> results$1.txt
echo >> results$1.txt

echo "-Line  493" >> results$1.txt
echo "##Employee cannot leave gallery without leaving room ">>results$1.txt
echo "-Line  494 " >> results$1.txt
./$1/code/build/logappend  -K token -T 181 -E eI -A log1 >>results$1.txt
echo "-Line  495" >> results$1.txt
echo >> results$1.txt
echo "-Line  496 " >> results$1.txt
./$1/code/build/logappend  -K token -T 182 -E eI -A -R 1 log1 >>results$1.txt
echo "-Line  497" >> results$1.txt
echo >> results$1.txt
echo "-Line  498 " >> results$1.txt
./$1/code/build/logappend  -K token -T 183 -E eI -L log1 >>results$1.txt
echo "-Line  499" >> results$1.txt
echo >> results$1.txt

echo "-Line  501" >> results$1.txt
echo "##Employee cannot leave room without being in it ">>results$1.txt
echo "-Line  502 " >> results$1.txt
./$1/code/build/logappend -K token -T 101 -E eE -A log1 >>results$1.txt
echo "-Line  503" >> results$1.txt
echo >> results$1.txt
echo "-Line  504 " >> results$1.txt
./$1/code/build/logappend  -K token -T 102 -E eE -L -R 1 log1 >>results$1.txt
echo "-Line  505" >> results$1.txt
echo >> results$1.txt

echo "-Line  507" >> results$1.txt
echo "##Employee cannot arrive to another room without first leaving it ">>results$1.txt
echo "-Line  508 " >> results$1.txt
./$1/code/build/logappend -K token -T 141 -E eG -A log1 >>results$1.txt
echo "-Line  509" >> results$1.txt
echo >> results$1.txt
echo "-Line  510 " >> results$1.txt
./$1/code/build/logappend -K token -T 142 -E eG -A -R 1 log1 >>results$1.txt
echo "-Line  511" >> results$1.txt
echo >> results$1.txt
echo "-Line  512 " >> results$1.txt
./$1/code/build/logappend -K token -T 143 -E eG -A -R 2 log1 >>results$1.txt
echo "-Line  513" >> results$1.txt
echo >> results$1.txt

echo "-Line  515" >> results$1.txt
echo "##Employee attempt to leave room ">>results$1.txt
echo "-Line  516 " >> results$1.txt
./$1/code/build/logappend -T 341 -K token -E eS -A log1 >>results$1.txt
echo "-Line  517" >> results$1.txt
echo >> results$1.txt
echo "-Line  518 " >> results$1.txt
./$1/code/build/logappend -T 342 -K token -E eS -A -R 1 log1 >>results$1.txt
echo "-Line  519" >> results$1.txt
echo >> results$1.txt
echo "-Line  520 " >> results$1.txt
./$1/code/build/logappend -T 343 -K token -E eS -L -R 1 log1 >>results$1.txt
echo "-Line  521" >> results$1.txt
echo >> results$1.txt
echo "-Line  522 " >> results$1.txt
./$1/code/build/logappend -T 344 -K token -E eS -L log1 >>results$1.txt
echo "-Line  523" >> results$1.txt
echo >> results$1.txt
echo "-Line  524 " >> results$1.txt
./$1/code/build/logappend -T 345 -K token -E eS -L -R 1 log1 >>results$1.txt
echo "-Line  525" >> results$1.txt
echo >> results$1.txt

echo "-Line  527" >> results$1.txt
echo "##Employee attempt to leave another room ">>results$1.txt
echo "-Line  528 " >> results$1.txt
./$1/code/build/logappend -T 121 -K token -E eF -A log1 >>results$1.txt
echo "-Line  529" >> results$1.txt
echo >> results$1.txt
echo "-Line  530 " >> results$1.txt
./$1/code/build/logappend -T 122 -K token -E eF -A -R 1 log1 >>results$1.txt
echo "-Line  531" >> results$1.txt
echo >> results$1.txt
echo "-Line  532 " >> results$1.txt
./$1/code/build/logappend -T 123 -K token -E eF -L -R 2 log1 >>results$1.txt
echo "-Line  533" >> results$1.txt
echo >> results$1.txt

echo "-Line  535" >> results$1.txt
echo "##Guest cannot leave gallery without leaving room ">>results$1.txt
echo "-Line  536 " >> results$1.txt
./$1/code/build/logappend  -K token -T 181 -G eI -A log1 >>results$1.txt
echo "-Line  537" >> results$1.txt
echo >> results$1.txt
echo "-Line  538 " >> results$1.txt
./$1/code/build/logappend  -K token -T 182 -G eI -A -R 1 log1 >>results$1.txt
echo "-Line  539" >> results$1.txt
echo >> results$1.txt
echo "-Line  540 " >> results$1.txt
./$1/code/build/logappend  -K token -T 183 -G eI -L log1 >>results$1.txt
echo "-Line  541" >> results$1.txt
echo >> results$1.txt

echo "-Line  543" >> results$1.txt
echo "##Guest cannot leave room without being in it ">>results$1.txt
echo "-Line  544 " >> results$1.txt
./$1/code/build/logappend -K token -T 101 -G eE -A log1 >>results$1.txt
echo "-Line  545" >> results$1.txt
echo >> results$1.txt
echo "-Line  546 " >> results$1.txt
./$1/code/build/logappend  -K token -T 102 -G eE -L -R 1 log1 >>results$1.txt
echo "-Line  547" >> results$1.txt
echo >> results$1.txt

echo "-Line  549" >> results$1.txt
echo "##Guest cannot arrive to another room without first leaving it ">>results$1.txt
echo "-Line  550 " >> results$1.txt
./$1/code/build/logappend -K token -T 141 -G eG -A log1 >>results$1.txt
echo "-Line  551" >> results$1.txt
echo >> results$1.txt
echo "-Line  552 " >> results$1.txt
./$1/code/build/logappend -K token -T 142 -G eG -A -R 1 log1 >>results$1.txt
echo "-Line  553" >> results$1.txt
echo >> results$1.txt
echo "-Line  554 " >> results$1.txt
./$1/code/build/logappend -K token -T 143 -G eG -A -R 2 log1 >>results$1.txt
echo "-Line  555" >> results$1.txt
echo >> results$1.txt

echo "-Line  557" >> results$1.txt
echo "##Guest attempt to leave room ">>results$1.txt
echo "-Line  558 " >> results$1.txt
./$1/code/build/logappend -T 341 -K token -G eS -A log1 >>results$1.txt
echo "-Line  559" >> results$1.txt
echo >> results$1.txt
echo "-Line  560 " >> results$1.txt
./$1/code/build/logappend -T 342 -K token -G eS -A -R 1 log1 >>results$1.txt
echo "-Line  561" >> results$1.txt
echo >> results$1.txt
echo "-Line  562 " >> results$1.txt
./$1/code/build/logappend -T 343 -K token -G eS -L -R 1 log1 >>results$1.txt
echo "-Line  563" >> results$1.txt
echo >> results$1.txt
echo "-Line  564 " >> results$1.txt
./$1/code/build/logappend -T 344 -K token -G eS -L log1 >>results$1.txt
echo "-Line  565" >> results$1.txt
echo >> results$1.txt
echo "-Line  566 " >> results$1.txt
./$1/code/build/logappend -T 345 -K token -G eS -L -R 1 log1 >>results$1.txt
echo "-Line  567" >> results$1.txt
echo >> results$1.txt

echo "-Line  569" >> results$1.txt
echo "##Guest attempt to leave another room ">>results$1.txt
echo "-Line  570 " >> results$1.txt
./$1/code/build/logappend -T 121 -K token -G eF -A log1 >>results$1.txt
echo "-Line  571" >> results$1.txt
echo >> results$1.txt
echo "-Line  572 " >> results$1.txt
./$1/code/build/logappend -T 122 -K token -G eF -A -R 1 log1 >>results$1.txt
echo "-Line  573" >> results$1.txt
echo >> results$1.txt
echo "-Line  574 " >> results$1.txt
./$1/code/build/logappend -T 123 -K token -G eF -L -R 2 log1 >>results$1.txt
echo "-Line  575" >> results$1.txt
echo >> results$1.txt

echo "-Line  577" >> results$1.txt
echo "##Cannot leave room without being in it! ">>results$1.txt
echo "-Line  578 " >> results$1.txt
./$1/code/build/logappend -T 91 -K token -G gD -L -R 2 log1 >>results$1.txt
echo "-Line  579" >> results$1.txt
echo >> results$1.txt

echo "-Line  581" >> results$1.txt
echo "##Cannot leave gallery without being in it ">>results$1.txt
echo "-Line  582 " >> results$1.txt
./$1/code/build/logappend -T 92 -K token -G gD -L log1 >>results$1.txt
echo "-Line  583" >> results$1.txt
echo >> results$1.txt

echo "-Line  585" >> results$1.txt
echo "##Should print error on non existent batch ">>results$1.txt
echo "-Line  586 " >> results$1.txt
./$1/code/build/logappend -B foo >>results$1.txt
echo "-Line  587" >> results$1.txt
echo >> results$1.txt

echo "-Line  589" >> results$1.txt
echo "##Cannot have non numeric room ">>results$1.txt
echo "-Line  590 " >> results$1.txt
./$1/code/build/logappend -K token -T 1 -E base -A log1 >>results$1.txt
echo "-Line  591" >> results$1.txt
echo >> results$1.txt
echo "-Line  592 " >> results$1.txt
./$1/code/build/logappend -K token -T 9 -G guestI -A log1 >>results$1.txt
echo "-Line  593" >> results$1.txt
echo >> results$1.txt
echo "-Line  594 " >> results$1.txt
./$1/code/build/logappend -K token -T 20 -G guestI -A -R foo log1 >>results$1.txt
echo "-Line  595" >> results$1.txt
echo >> results$1.txt

echo "-Line  597" >> results$1.txt
echo "##Non numeric room for leave ">>results$1.txt
echo "-Line  598 " >> results$1.txt
./$1/code/build/logappend -K token -T 1 -E base -A log1 >>results$1.txt
echo "-Line  599" >> results$1.txt
echo >> results$1.txt
echo "-Line  600 " >> results$1.txt
./$1/code/build/logappend -K token -T 9 -G guestI -A log1 >>results$1.txt
echo "-Line  601" >> results$1.txt
echo >> results$1.txt
echo "-Line  602 " >> results$1.txt
./$1/code/build/logappend -K token -T 20 -G guestI -A -R 1 log1 >>results$1.txt
echo "-Line  603" >> results$1.txt
echo >> results$1.txt
echo "-Line  604 " >> results$1.txt
./$1/code/build/logappend -K token -T 20 -G guestI -L -R foo log1 >>results$1.txt
echo "-Line  605" >> results$1.txt
echo >> results$1.txt

echo "-Line  607" >> results$1.txt
echo "##Room 2, 02, 002 should all be 2 ">>results$1.txt
echo "-Line  608 " >> results$1.txt
./$1/code/build/logappend -T 1 -K token -G guestA -A log1 >>results$1.txt
echo "-Line  609" >> results$1.txt
echo >> results$1.txt
echo "-Line  610 " >> results$1.txt
./$1/code/build/logappend -T 2 -K token -G guestB -A log1 >>results$1.txt
echo "-Line  611" >> results$1.txt
echo >> results$1.txt
echo "-Line  612 " >> results$1.txt
./$1/code/build/logappend -T 3 -K token -G guestC -A log1 >>results$1.txt
echo "-Line  613" >> results$1.txt
echo >> results$1.txt
echo "-Line  614 " >> results$1.txt
./$1/code/build/logappend -T 4 -K token -G guestD -A log1 >>results$1.txt
echo "-Line  615" >> results$1.txt
echo >> results$1.txt
echo "-Line  616 " >> results$1.txt
./$1/code/build/logappend -T 5 -K token -G guestE -A log1 >>results$1.txt
echo "-Line  617" >> results$1.txt
echo >> results$1.txt
echo "-Line  618 " >> results$1.txt
./$1/code/build/logappend -T 6 -K token -G guestF -A log1 >>results$1.txt
echo "-Line  619" >> results$1.txt
echo >> results$1.txt
echo "-Line  620 " >> results$1.txt
./$1/code/build/logappend -T 7 -K token -G guestG -A log1 >>results$1.txt
echo "-Line  621" >> results$1.txt
echo >> results$1.txt
echo "-Line  622 " >> results$1.txt
./$1/code/build/logappend -T 8 -K token -G guestH -A log1 >>results$1.txt
echo "-Line  623" >> results$1.txt
echo >> results$1.txt
echo "-Line  624 " >> results$1.txt
./$1/code/build/logappend -T 10 -K token -G guestJ -A log1 >>results$1.txt
echo "-Line  625" >> results$1.txt
echo >> results$1.txt
echo "-Line  626 " >> results$1.txt
./$1/code/build/logappend -T 11 -K token -G guestK -A log1 >>results$1.txt
echo "-Line  627" >> results$1.txt
echo >> results$1.txt
echo "-Line  628 " >> results$1.txt
./$1/code/build/logappend -T 12 -K token -G guestA -A -R 2 log1 >>results$1.txt
echo "-Line  629" >> results$1.txt
echo >> results$1.txt
echo "-Line  630 " >> results$1.txt
./$1/code/build/logappend -T 13 -K token -G guestB -A -R 02 log1 >>results$1.txt
echo "-Line  631" >> results$1.txt
echo >> results$1.txt
echo "-Line  632 " >> results$1.txt
./$1/code/build/logappend -T 14 -K token -G guestC -A -R 002 log1 >>results$1.txt
echo "-Line  633" >> results$1.txt
echo >> results$1.txt
echo "-Line  634 " >> results$1.txt
./$1/code/build/logappend -T 15 -K token -G guestD -A -R 0 log1 >>results$1.txt
echo "-Line  635" >> results$1.txt
echo >> results$1.txt
echo "-Line  636 " >> results$1.txt
./$1/code/build/logread -K token -S log1 >>results$1.txt
echo "-Line  637" >> results$1.txt
echo >> results$1.txt

echo "-Line  639" >> results$1.txt
echo "##Should accept really long names employee ">>results$1.txt
echo "-Line  640 " >> results$1.txt
./$1/code/build/logappend -K token -T 1 -E aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -A log1 >>results$1.txt
echo "-Line  641" >> results$1.txt
echo >> results$1.txt

echo "-Line  643" >> results$1.txt
echo "##Should accept really long names guest ">>results$1.txt
echo "-Line  644 " >> results$1.txt
./$1/code/build/logappend -K token -T 1 -G aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -A log1 >>results$1.txt
echo "-Line  645" >> results$1.txt
echo >> results$1.txt

echo "-Line  647" >> results$1.txt
echo "##Should not accept non numeric timestamp ">>results$1.txt
echo "-Line  648 " >> results$1.txt
./$1/code/build/logappend -K token -T foo -E alphatimestampe -A log1 >>results$1.txt
echo "-Line  649" >> results$1.txt
echo >> results$1.txt

echo "-Line  651" >> results$1.txt
echo "##Cannot have two logs same time ">>results$1.txt
echo "-Line  652 " >> results$1.txt
./$1/code/build/logappend -T 5 -K token -E pppp -A log1 >>results$1.txt
echo "-Line  653" >> results$1.txt
echo >> results$1.txt
echo "-Line  654 " >> results$1.txt
./$1/code/build/logappend -T 5 -K token -E pD -A log1 >>results$1.txt
echo "-Line  655" >> results$1.txt
echo >> results$1.txt

echo "-Line  657" >> results$1.txt
echo "##Should not have the second entry ">>results$1.txt
echo "-Line  658 " >> results$1.txt
./$1/code/build/logappend -T 5 -K token -E pppp -A log1 >>results$1.txt
echo "-Line  659" >> results$1.txt
echo >> results$1.txt
echo "-Line  660 " >> results$1.txt
./$1/code/build/logappend -T 5 -K token -G pE -A log1 >>results$1.txt
echo "-Line  661" >> results$1.txt
echo >> results$1.txt
echo "-Line  662 " >> results$1.txt
./$1/code/build/logread -K token -S log1 >>results$1.txt
echo "-Line  663" >> results$1.txt
echo >> results$1.txt

echo "-Line  665" >> results$1.txt
echo "##All guests should appear, watch rooms on new lines ">>results$1.txt
echo "-Line  666 " >> results$1.txt
./$1/code/build/logappend -K token -T 1 -G guestA -A log1 >>results$1.txt
echo "-Line  667" >> results$1.txt
echo >> results$1.txt
echo "-Line  668 " >> results$1.txt
./$1/code/build/logappend -K token -T 2 -G guestB -A log1 >>results$1.txt
echo "-Line  669" >> results$1.txt
echo >> results$1.txt
echo "-Line  670 " >> results$1.txt
./$1/code/build/logappend -K token -T 3 -G guestC -A log1 >>results$1.txt
echo "-Line  671" >> results$1.txt
echo >> results$1.txt
echo "-Line  672 " >> results$1.txt
./$1/code/build/logappend -K token -T 4 -G guestD -A log1 >>results$1.txt
echo "-Line  673" >> results$1.txt
echo >> results$1.txt
echo "-Line  674 " >> results$1.txt
./$1/code/build/logappend -K token -T 5 -G guestE -A log1 >>results$1.txt
echo "-Line  675" >> results$1.txt
echo >> results$1.txt
echo "-Line  676 " >> results$1.txt
./$1/code/build/logappend -K token -T 6 -G guestF -A log1 >>results$1.txt
echo "-Line  677" >> results$1.txt
echo >> results$1.txt
echo "-Line  678 " >> results$1.txt
./$1/code/build/logappend -K token -T 7 -G guestG -A log1 >>results$1.txt
echo "-Line  679" >> results$1.txt
echo >> results$1.txt
echo "-Line  680 " >> results$1.txt
./$1/code/build/logappend -K token -T 8 -G guestH -A log1 >>results$1.txt
echo "-Line  681" >> results$1.txt
echo >> results$1.txt
echo "-Line  682 " >> results$1.txt
./$1/code/build/logappend -K token -T 10 -G guestJ -A log1 >>results$1.txt
echo "-Line  683" >> results$1.txt
echo >> results$1.txt
echo "-Line  684 " >> results$1.txt
./$1/code/build/logappend -K token -T 11 -G guestK -A log1 >>results$1.txt
echo "-Line  685" >> results$1.txt
echo >> results$1.txt
echo "-Line  686 " >> results$1.txt
./$1/code/build/logappend -K token -T 12 -G guestA -A -R 2 log1 >>results$1.txt
echo "-Line  687" >> results$1.txt
echo >> results$1.txt
echo "-Line  688 " >> results$1.txt
./$1/code/build/logappend -K token -T 13 -G guestB -A -R 02 log1 >>results$1.txt
echo "-Line  689" >> results$1.txt
echo >> results$1.txt
echo "-Line  690 " >> results$1.txt
./$1/code/build/logappend -K token -T 14 -G guestC -A -R 002 log1 >>results$1.txt
echo "-Line  691" >> results$1.txt
echo >> results$1.txt
echo "-Line  692 " >> results$1.txt
./$1/code/build/logappend -K token -T 15 -G guestD -A -R 0 log1 >>results$1.txt
echo "-Line  693" >> results$1.txt
echo >> results$1.txt
echo "-Line  694 " >> results$1.txt
./$1/code/build/logread -K token -S log1 >>results$1.txt
echo "-Line  695" >> results$1.txt
echo >> results$1.txt

echo "-Line  697" >> results$1.txt
echo "##All emps should appear, watch rooms on new lines ">>results$1.txt
echo "-Line  698 " >> results$1.txt
./$1/code/build/logappend -K token -T 1 -E empA -A log1 >>results$1.txt
echo "-Line  699" >> results$1.txt
echo >> results$1.txt
echo "-Line  700 " >> results$1.txt
./$1/code/build/logappend -K token -T 2 -E empB -A log1 >>results$1.txt
echo "-Line  701" >> results$1.txt
echo >> results$1.txt
echo "-Line  702 " >> results$1.txt
./$1/code/build/logappend -K token -T 3 -E empC -A log1 >>results$1.txt
echo "-Line  703" >> results$1.txt
echo >> results$1.txt
echo "-Line  704 " >> results$1.txt
./$1/code/build/logappend -K token -T 4 -E empD -A log1 >>results$1.txt
echo "-Line  705" >> results$1.txt
echo >> results$1.txt
echo "-Line  706 " >> results$1.txt
./$1/code/build/logappend -K token -T 5 -E empE -A log1 >>results$1.txt
echo "-Line  707" >> results$1.txt
echo >> results$1.txt
echo "-Line  708 " >> results$1.txt
./$1/code/build/logappend -K token -T 6 -E empF -A log1 >>results$1.txt
echo "-Line  709" >> results$1.txt
echo >> results$1.txt
echo "-Line  710 " >> results$1.txt
./$1/code/build/logappend -K token -T 7 -E empG -A log1 >>results$1.txt
echo "-Line  711" >> results$1.txt
echo >> results$1.txt
echo "-Line  712 " >> results$1.txt
./$1/code/build/logappend -K token -T 8 -E empH -A log1 >>results$1.txt
echo "-Line  713" >> results$1.txt
echo >> results$1.txt
echo "-Line  714 " >> results$1.txt
./$1/code/build/logappend -K token -T 10 -E empJ -A log1 >>results$1.txt
echo "-Line  715" >> results$1.txt
echo >> results$1.txt
echo "-Line  716 " >> results$1.txt
./$1/code/build/logappend -K token -T 11 -E empK -A log1 >>results$1.txt
echo "-Line  717" >> results$1.txt
echo >> results$1.txt
echo "-Line  718 " >> results$1.txt
./$1/code/build/logappend -K token -T 12 -E empA -A -R 2 log1 >>results$1.txt
echo "-Line  719" >> results$1.txt
echo >> results$1.txt
echo "-Line  720 " >> results$1.txt
./$1/code/build/logappend -K token -T 13 -E empB -A -R 02 log1 >>results$1.txt
echo "-Line  721" >> results$1.txt
echo >> results$1.txt
echo "-Line  722 " >> results$1.txt
./$1/code/build/logappend -K token -T 14 -E empC -A -R 002 log1 >>results$1.txt
echo "-Line  723" >> results$1.txt
echo >> results$1.txt
echo "-Line  724 " >> results$1.txt
./$1/code/build/logappend -K token -T 15 -E empD -A -R 0 log1 >>results$1.txt
echo "-Line  725" >> results$1.txt
echo >> results$1.txt
echo "-Line  726 " >> results$1.txt
./$1/code/build/logread -K token -S log1 >>results$1.txt
echo "-Line  727" >> results$1.txt
echo >> results$1.txt

echo "-Line  729" >> results$1.txt
echo "##Should not be valid last logappend ">>results$1.txt
echo "-Line  730 " >> results$1.txt
./$1/code/build/logappend -T 261 -K token -E eN -A log1 >>results$1.txt
echo "-Line  731" >> results$1.txt
echo >> results$1.txt
echo "-Line  732 " >> results$1.txt
./$1/code/build/logappend -T 262 -K token -E eN -A -R 1 log1 >>results$1.txt
echo "-Line  733" >> results$1.txt
echo >> results$1.txt
echo "-Line  734 " >> results$1.txt
./$1/code/build/logappend -T 263 -K token -E eN -A log1 >>results$1.txt
echo "-Line  735" >> results$1.txt
echo >> results$1.txt
echo "-Line  736 " >> results$1.txt
./$1/code/build/logread -K token -S log1 >>results$1.txt
echo "-Line  737" >> results$1.txt
echo >> results$1.txt

echo "-Line  739" >> results$1.txt
echo "##Cannot arrive to room after having arrived on it ">>results$1.txt
echo "-Line  740 " >> results$1.txt
./$1/code/build/logappend -T 171 -K token -G gH -A log1 >>results$1.txt
echo "-Line  741" >> results$1.txt
echo >> results$1.txt
echo "-Line  742 " >> results$1.txt
./$1/code/build/logappend -T 172 -K token -G gH -A -R 1 log1 >>results$1.txt
echo "-Line  743" >> results$1.txt
echo >> results$1.txt
echo "-Line  744 " >> results$1.txt
./$1/code/build/logappend -T 173 -K token -G gH -A -R 1 log1 >>results$1.txt
echo "-Line  745" >> results$1.txt
echo >> results$1.txt
echo "-Line  746 " >> results$1.txt
./$1/code/build/logread -K token -S log1 >>results$1.txt
echo "-Line  747" >> results$1.txt
echo >> results$1.txt

echo "-Line  749" >> results$1.txt
echo "##Should not accept more than one log file ">>results$1.txt
echo "-Line  750 " >> results$1.txt
./$1/code/build/logappend -T 1 -K token -G gH -A log log2 >>results$1.txt
echo "-Line  751" >> results$1.txt
echo >> results$1.txt

echo "-Line  753" >> results$1.txt
echo "##Non existing batch file is error ">>results$1.txt
echo "-Line  754 " >> results$1.txt
./$1/code/build/logappend -B pepe >>results$1.txt
echo "-Line  755" >> results$1.txt
echo >> results$1.txt
echo "-Line  756" >> results$1.txt
echo "##Bad path should be error ">>results$1.txt
echo "-Line  757 " >> results$1.txt
./$1/code/build/logappend -T 1 -K token ~/ >>results$1.txt
echo "-Line  758" >> results$1.txt
echo >> results$1.txt

echo "-Line  760" >> results$1.txt
echo "##Timestamp 0 is error ">>results$1.txt
echo "-Line  761 " >> results$1.txt
./$1/code/build/logappend -T 0 -K token -G gH -A log2 >>results$1.txt
echo "-Line  762" >> results$1.txt
echo >> results$1.txt

echo "-Line  764" >> results$1.txt
echo "##Timestamp greater than 1073741823 or negative is error ">>results$1.txt
echo "-Line  765 " >> results$1.txt
./$1/code/build/logappend -T 1073741824 -K token -G gH -A log >>results$1.txt
echo "-Line  766" >> results$1.txt
echo >> results$1.txt

echo "-Line  768" >> results$1.txt
echo "##Room greater than 1073741823 or negative is error ">>results$1.txt
echo "-Line  769 " >> results$1.txt
./$1/code/build/logappend -T 1 -K token -G gH -A log >>results$1.txt
echo "-Line  770" >> results$1.txt
echo >> results$1.txt
echo "-Line  771 " >> results$1.txt
./$1/code/build/logappend -T 2 -K token -G gH -A -R 1073741824 log >>results$1.txt
echo "-Line  772" >> results$1.txt
echo >> results$1.txt
