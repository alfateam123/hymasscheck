#set FOLDER_PATH "$HOME/exthdd/serie_tv/Bikini Warriors"

all:
	hy2py mass_crc32.hy > py_mass_crc32.py && python py_mass_crc32.py $(FOLDERPATH)

