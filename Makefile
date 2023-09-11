SURVEY_TARGETS := intro installation codeword

all: $(SURVEY_TARGETS)

$(SURVEY_TARGETS):
	Rscript code/table.R --survey $@

.PHONY: $(SURVEY_TARGETS)