stages/ice.rml.ttl: model/ice.rml.ttl    \
		model/00_class_CASRN.rq  \
		model/00_class_DTXSID.rq \
		model/01_DART_result.rq
	$(JENA_HOME)/bin/jena arq.update --dump           \
			--data model/ice.rml.ttl          \
			--update model/00_class_CASRN.rq  \
			--update model/00_class_DTXSID.rq \
			--update model/01_DART_result.rq  \
		| grep -v 'ERROR StatusConsoleListener'   \
		> stages/ice.rml.ttl
