## DESCRIPTION
##
## Replaces any columns named "DTXSID" with CompTox Chemical Dashboard IRI / URL

PREFIX rr: <http://www.w3.org/ns/r2rml#>
PREFIX rml: <http://semweb.mmlab.be/ns/rml#>

PREFIX cheminf: <http://semanticscience.org/resource/CHEMINF_>

DELETE {
                            ?objMap_S rr:objectMap  ?objMap_O .
                                                    ?objMap_O rml:reference "DTXSID" .
}
INSERT {
  ?objMap_S rr:objectMap [
     rr:template ?dtxsidTemplate
  ] .

  []  a                 rr:TriplesMap;
      rml:logicalSource ?ls;
      rr:subjectMap [
        rr:template ?dtxsidTemplate ;
        rr:class    cheminf:000000 , cheminf:000568
      ]
} WHERE
{
  ?tm a                 rr:TriplesMap;
      rml:logicalSource ?ls;
      rr:predicateObjectMap ?objMap_S .
                            ?objMap_S rr:objectMap  ?objMap_O .
                                                    ?objMap_O rml:reference "DTXSID" .

  VALUES (
    ?dtxsidTemplate
  ) {
    (
      "https://comptox.epa.gov/dashboard/chemical/details/{DTXSID}"
    )
  }
}
