ALTIRRA=${ALTIRRA_PATH}\Altirra64.exe
MADS=${MADS_PATH}\mads.exe

PROJECT?=_use_project_name

.SILENT: default clear create build run debug

default:
	echo "-------------------------------------------------------"
	echo "[Make ScriPt:] Available targets: clear, build, run, and debug"
	echo "[Make ScriPt:] Path to Altirra: ${ALTIRRA}"
	echo "[Make ScriPt:] Path to MADS: ${MADS}"
	echo "[Make ScriPt:] Selected project: ${PROJECT}"
	echo "-------------------------------------------------------"

clear:
	rm -f projects/${PROJECT}/__unformatted_breakpoints
	rm -f projects/${PROJECT}/__breakpoints
	rm -f projects/${PROJECT}/main.atdbg
	rm -f projects/${PROJECT}/main.lab
	rm -f projects/${PROJECT}/main.lst
	rm -f projects/${PROJECT}/main.xex
	echo "-----------------------------"
	echo "[Make ScriPt:] Done clearing!"
	echo "-----------------------------"

create:
	mkdir projects/${PROJECT}
	echo '		org $$2000' > projects/${PROJECT}/main.asm
	echo 'start	lda #0' >> projects/${PROJECT}/main.asm
	echo '		sta 559' >> projects/${PROJECT}/main.asm
	echo 'loop	lda $$d40b' >> projects/${PROJECT}/main.asm
	echo '		sta $$d40a' >> projects/${PROJECT}/main.asm
	echo '		sta $$d01a' >> projects/${PROJECT}/main.asm
	echo '		jmp loop' >> projects/${PROJECT}/main.asm
	echo '		run start' >> projects/${PROJECT}/main.asm
	echo "-----------------------------"
	echo "[Make ScriPt:] Done creating!"
	echo "-----------------------------"

build: clear
	echo "------------------------------"
	echo "[Make ScriPt:] Running MADS..."
	echo "------------------------------"
	$(MADS) projects/${PROJECT}/main.asm -o:projects/${PROJECT}/main.xex -p -t:projects/${PROJECT}/main.lab -l:projects/${PROJECT}/main.lst
	echo "-----------------------------"
	echo "[Make ScriPt:] Done building!"
	echo "-----------------------------"

run: build
	echo "---------------------------------"
	echo "[Make ScriPt:] Running Altirra..."
	echo "---------------------------------"
	$(ALTIRRA) /singleinstance projects\${PROJECT}\main.xex /portable
	echo "----------------------------"
	echo "[Make ScriPt:] Done running!"
	echo "----------------------------"

debug: build
	echo "----------------------------------------"
	echo "[Make ScriPt:] Reading debugging data..."
	echo "----------------------------------------"
	echo '.sourcemode on' > projects/${PROJECT}/main.atdbg
	echo 'bc *' >> projects/${PROJECT}/main.atdbg
	# breakpoints
	findstr /i /S /c:";bp" /n "projects\${PROJECT}\*.asm" > projects/${PROJECT}/__unformatted_breakpoints || echo "BREAKPOINTS NOT FOUND!!!"
	touch projects/${PROJECT}/__breakpoints
	while read -r line; do \
		echo "$$line" | cut -d':' -f1,2 >> projects/${PROJECT}/__breakpoints; \
	done < projects/${PROJECT}/__unformatted_breakpoints
	while read -r line; do \
		echo "bp \"\`$$line\`\"" >> projects/${PROJECT}/main.atdbg; \
	done < projects/${PROJECT}/__breakpoints
	rm projects/${PROJECT}/__unformatted_breakpoints
	rm projects/${PROJECT}/__breakpoints
	# bytes to watch
	findstr /i /S /c:";wb:" /n "projects\${PROJECT}\*.asm" > projects/${PROJECT}/__unformatted_bytes2watch || echo "BYTES TO WATCH NOT FOUND!!!"
	touch projects/${PROJECT}/__bytes2watch
	while read -r line; do \
		echo "$$line" | cut -d':' -f4 >> projects/${PROJECT}/__bytes2watch; \
	done < projects/${PROJECT}/__unformatted_bytes2watch
	while read -r line; do \
		echo "wb $$line" >> projects/${PROJECT}/main.atdbg; \
	done < projects/${PROJECT}/__bytes2watch
	rm projects/${PROJECT}/__unformatted_bytes2watch
	rm projects/${PROJECT}/__bytes2watch
	# run Altirra
	echo "---------------------------------"
	echo "[Make ScriPt:] Running Altirra..."
	echo "---------------------------------"
	$(ALTIRRA) /singleinstance projects\${PROJECT}\main.xex /portable
	echo "----------------------------"
	echo "[Make ScriPt:] Done running!"
	echo "----------------------------"
