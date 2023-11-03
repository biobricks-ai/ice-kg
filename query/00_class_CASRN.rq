## DESCRIPTION
##
## Replaces any columns named "CASRN" with IRI from identifiers.org .

PREFIX rr: <http://www.w3.org/ns/r2rml#>
PREFIX rml: <http://semweb.mmlab.be/ns/rml#>

PREFIX cheminf: <http://semanticscience.org/resource/CHEMINF_>

DELETE {
                            ?objMap_S rr:objectMap  ?objMap_O .
                                                    ?objMap_O rml:reference "CASRN" .
}
INSERT {
  ?objMap_S rr:objectMap [
     rr:template ?casTemplate
  ] .

  []  a                 rr:TriplesMap;
      rml:logicalSource ?ls;
      rr:subjectMap [
        rr:template ?casTemplate;
        rr:class    cheminf:000000, cheminf:000446 ;
      ]
}
WHERE
{
  ?tm a                 rr:TriplesMap;
      rml:logicalSource ?ls;
      rr:predicateObjectMap ?objMap_S .
                            ?objMap_S rr:objectMap  ?objMap_O .
                                                    ?objMap_O rml:reference "CASRN" .

  VALUES (
    ?casTemplate
  ) {
    (
      "http://identifiers.org/cas/{CASRN}"
    )
  }
}
