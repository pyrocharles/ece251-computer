// test program for branching; i love my new assembler!
	b forward
	set #15
	lsl #4
	set #15

forward:
	// set r0 to 1
	set #0
	lsl #4
	set #1 // i should really have sel/seh instructions...
	mov >r0

	// loop four times
	set #4
loop:
	sub r0
	bnn loop

	add r0
	bz end

end:
	hlt
