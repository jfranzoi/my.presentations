function clean_old_files() {
	echo "cleaning ..."
	rm -rf *.aux *.log *.out *.pdf
}

function process_tex_files() {
	for file in *.tex; do
		echo "processing '$file' ..."
		pdflatex "$file" 1> /dev/null
	done
}

clean_old_files
process_tex_files

echo "done."