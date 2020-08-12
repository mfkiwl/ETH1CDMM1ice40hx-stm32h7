PROJECT = top
all: $(PROJECT).bin

%.bin: %.txt
	icepack $< $@

%.txt: %.blif
	arachne-pnr -q -d 8k -P tq144:4k --post-place-blif $*.place.blif -o $@ -p $(PROJECT).pcf $<

%.blif: %.v
	yosys -q -p 'synth_ice40 -top main -blif $@' top.v spi.v pll.v

upload: $(notdir $(PROJECT)).bin
	iceprog $<

clean:
	rm -f *.bin *.txt *.blif *.rpt.PRECIOUS: %.bin %.txt %.blif 

.PHONY: all explain install clean
