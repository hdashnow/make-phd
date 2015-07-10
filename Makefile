# This Makefile builds an HTML "book" from source files written in
#     Markdown.

# VPATH: where to look for source files. This is a Makefile built-in
#     special variable.
VPATH = markdown

# BUILD_{HTML,NB,PDF}: where to put the output HTML files and the
#     intermediate IPython notebooks.
BUILD_HTML = build_html
BUILD_NB = build_ipynb
BUILD_PDF = build_pdf
BUILD_DOCX = build_docx

# TITLES: This should be an exhaustive list of all the chapters to be
#     built, and correspond to markdown filenames in the markdown
#     directory.
TITLES := ch1 ch2 

# CHS_, chs: some Makefile magic that prefixes all the titles with the
#     HTML build directory, then suffixes them with the .html
#     extension. chs then constitutes the full list of targets.
CHS_ := $(addprefix $(BUILD_HTML)/,$(TITLES))
chs: build_dirs $(addsuffix .html,$(CHS_))
CHS_ := $(addprefix $(BUILD_PDF)/,$(TITLES))
chs: build_dirs $(addsuffix .pdf,$(CHS_))
CHS_ := $(addprefix $(BUILD_DOCX)/,$(TITLES))
chs: build_dirs $(addsuffix .docx,$(CHS_))

# %.html: How to build an HTML file from its corresponding IPython
#     notebook.
$(BUILD_HTML)/%.html: $(BUILD_NB)/%.ipynb
	 ipython nbconvert --to html $< --stdout > $@

# %.pdf: How to build a PDF file from its corresponding IPython
#     notebook.
$(BUILD_PDF)/%.pdf: $(BUILD_NB)/%.ipynb
	ipython nbconvert --to pdf --output $(basename $@) $< 

# %.docx: How to build a Word Doc docx file from its corresponding html.
$(BUILD_DOCX)/%.docx: $(BUILD_HTML)/%.html
	pandoc $< -o $@

# %.ipynb: How to build an IPython notebook from a source Markdown
#     file.
$(BUILD_NB)/%.ipynb: %.markdown
	 notedown --match fenced --run $< --output $@

# .SECONDARY: Ensure ipynb files are not deleted after being generated.
NBS_ := $(addprefix $(BUILD_NB)/,$(TITLES))
nbs: $(addsuffix .ipynb,$(NBS_))
.SECONDARY: nbs

# .PHONY: Special Makefile variable specifying targets that don't
#     correspond to any actual files.
.PHONY: all build_dirs

# build_dirs: directories for build products
build_dirs: $(BUILD_HTML) $(BUILD_NB) $(BUILD_PDF) $(BUILD_DOCX)
$(BUILD_HTML):
	 mkdir -p $(BUILD_HTML)
$(BUILD_NB):
	 mkdir -p $(BUILD_NB)
$(BUILD_PDF):
	 mkdir -p $(BUILD_PDF)
$(BUILD_DOCX):
	 mkdir -p $(BUILD_DOCX)

# all: build the book.
all: chs

# clean: remove intermediate products (IPython notebooks)
clean:
	 rm -rf $(BUILD_NB)

clobber: clean
	 rm -rf $(BUILD_HTML)
