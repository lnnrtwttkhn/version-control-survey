
SURVEY_TARGETS := intro installation codeword test1 test2 cli basics versioncontrol branches github


all: $(SURVEY_TARGETS)

$(SURVEY_TARGETS):
	Rscript code/table.R --survey $@

.PHONY: $(SURVEY_TARGETS)