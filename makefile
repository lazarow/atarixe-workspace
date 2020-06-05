ALTIRRA_ARCHITECTURE?=32
ifeq ($(ALTIRRA_ARCHITECTURE), 32)
	ALTIRRA=${ALTIRRA_PATH}\Altirra.exe
else
	ALTIRRA=${ALTIRRA_PATH}\Altirra64.exe
endif

K65=${K65_PATH}\k65.exe

PROJECT?=null_project

.SILENT: default clear create build run

default:
	echo "-------------------------------------------------------"
	echo "[Make ScriPt:] Available targets: clear, build, and run"
	echo "[Make ScriPt:] Path to Altirra: ${ALTIRRA}"
	echo "[Make ScriPt:] Path to K65: ${K65}"
	echo "[Make ScriPt:] Selected project: ${PROJECT}"
	echo "-------------------------------------------------------"

clear:
	rm -rf projects/${PROJECT}/build
	echo "-----------------------------"
	echo "[Make ScriPt:] Done clearing!"
	echo "-----------------------------"

create:
	mkdir projects/${PROJECT}
	mkdir projects/${PROJECT}/build
	mkdir projects/${PROJECT}/src
	touch projects/${PROJECT}/build/.gitkeep
	touch projects/${PROJECT}/k65.conf
	echo "-----------------------------"
	echo "[Make ScriPt:] Done creating!"
	echo "-----------------------------"

build: clear
	mkdir projects/${PROJECT}/build
	echo "-system AtariXL" > projects/${PROJECT}/k65.conf.input
	echo "-noOS" >> projects/${PROJECT}/k65.conf.input
	echo "-lowAddr 0x4000" >> projects/${PROJECT}/k65.conf.input
	cat projects/${PROJECT}/files.lst >> projects/${PROJECT}/k65.conf.input
	echo "" >> projects/${PROJECT}/k65.conf.input
	echo "-o projects/${PROJECT}/build/release.xex" >> projects/${PROJECT}/k65.conf.input
	echo "-link" >> projects/${PROJECT}/k65.conf.input
	echo "[Make ScriPt:] Running K65..."
	$(K65) @projects/${PROJECT}/k65.conf.input
	rm projects/${PROJECT}/k65.conf.input
	echo "-----------------------------"
	echo "[Make ScriPt:] Done building!"
	echo "-----------------------------"

run: build
	echo "[Make ScriPt:] Running Altirra..."
	$(ALTIRRA) projects\${PROJECT}\build\release.xex
	echo "----------------------------"
	echo "[Make ScriPt:] Done running!"
	echo "----------------------------"
