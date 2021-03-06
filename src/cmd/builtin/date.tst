# regression tests for the touch utility

export TZ=EST5EDT

TEST 01 'basics'
	EXEC -s -f %K 0102030405
		OUTPUT - $'2005-01-02+03:04:00'
	EXEC -s -f %K 0203040501
		OUTPUT - $'2001-02-03+04:05:00'
	EXEC -s -f %K 9901020304
		OUTPUT - $'1999-01-02+03:04:00'
	EXEC -s -f %K 0102030499
		OUTPUT - $'1999-01-02+03:04:00'
	EXEC -s -f %K 200001020304
		OUTPUT - $'2000-01-02+03:04:00'
	EXEC -s -f %K 010203042000
		OUTPUT - $'2000-01-02+03:04:00'
