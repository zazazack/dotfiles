function office
	set -l office /Applications/LibreOffice.app/Contents/MacOS/soffice
	eval $office --headless --convert-to $argv[1] --outdir (pwd) $argv[2]
end
