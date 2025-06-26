echo reading from /dev/fortytwo:
cat /dev/fortytwo
echo

echo redirect minsepar to /dev/fortytwo:
echo minsepar > /dev/fortytwo 
echo $?
echo

echo redirect not_minsepar to /dev/fortytwo:
echo not_minsepar > /dev/fortytwo
echo
