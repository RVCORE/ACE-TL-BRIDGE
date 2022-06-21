init:
	git submodule update --init
	cd rocket-chip && git submodule update --init hardfloat api-config-chipsalliance

compile:
	mill -i ACE-TL-BRIDGE.compile

test:
	mill -i ACE-TL-BRIDGE.test.test


bsp:
	mill -i mill.bsp.BSP/install

clean:
	rm -rf ./build

reformat:
	mill -i __.reformat

checkformat:
	mill -i __.checkFormat
