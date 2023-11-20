## DESCRIPTION
##
## Turns the DART results into separate relationship

PREFIX rr: <http://www.w3.org/ns/r2rml#>
PREFIX rml: <http://semweb.mmlab.be/ns/rml#>

PREFIX cheminf: <http://semanticscience.org/resource/CHEMINF_>

PREFIX ex:      <http://example.com/>
PREFIX ex-base: <http://example.com/base/>

DELETE {
                        ?subMap_S rr:class ?old_dart_class .

  ?tm
      rr:predicateObjectMap ?objMap_S_Route ;
      rr:predicateObjectMap ?objMap_S_Critical_Effect ;
      rr:predicateObjectMap ?objMap_S_Assay ;
      rr:predicateObjectMap ?objMap_S_Endpoint ;
      rr:predicateObjectMap ?objMap_S_Response ;
      rr:predicateObjectMap ?objMap_S_Response_Unit .
}
INSERT {
                        ?subMap_S rr:class ?new_dart_class .

  ?tm rr:predicateObjectMap [
        rr:objectMap [
             rr:template ?endPointTemplate
        ];
        rr:predicate ex:relation-endpoint
      ] .

  []  a                 rr:TriplesMap;
      rml:logicalSource ?ls;
      rr:subjectMap [
        rr:template ?endPointTemplate;
        rr:class    ex:DART_Data-Endpoint ;
      ] ;
      rr:predicateObjectMap ?objMap_S_Route ;
      rr:predicateObjectMap ?objMap_S_Critical_Effect ;
      rr:predicateObjectMap ?objMap_S_Assay ;
      rr:predicateObjectMap ?objMap_S_Endpoint ;
      rr:predicateObjectMap ?objMap_S_Response ;
      rr:predicateObjectMap ?objMap_S_Response_Unit ;
      
}
WHERE
{
  ?tm a                 rr:TriplesMap;
      rml:logicalSource ?ls .

  ?tm rr:subjectMap     ?subMap_S .
                        ?subMap_S rr:class ?old_dart_class .

  ?tm rr:predicateObjectMap ?objMap_S_Route .
                            ?objMap_S_Route rr:objectMap  ?objMap_O_Route .
                                                          ?objMap_O_Route rml:reference "Route" .

  ?tm rr:predicateObjectMap ?objMap_S_Critical_Effect .
                            ?objMap_S_Critical_Effect rr:objectMap  ?objMap_O_Critical_Effect .
                                                                    ?objMap_O_Critical_Effect rml:reference "Critical Effect" .
  ?tm rr:predicateObjectMap ?objMap_S_Assay .
                            ?objMap_S_Assay rr:objectMap  ?objMap_O_Assay .
                                                          ?objMap_O_Assay rml:reference "Assay" .

  ?tm rr:predicateObjectMap ?objMap_S_Endpoint .
                            ?objMap_S_Endpoint rr:objectMap  ?objMap_O_Endpoint .
                                                             ?objMap_O_Endpoint rml:reference "Endpoint" .

  ?tm rr:predicateObjectMap ?objMap_S_Response .
                            ?objMap_S_Response rr:objectMap  ?objMap_O_Response .
                                                             ?objMap_O_Response rml:reference "Response" .

  ?tm rr:predicateObjectMap ?objMap_S_Response_Unit .
                            ?objMap_S_Response_Unit rr:objectMap  ?objMap_O_Response_Unit .
                                                                  ?objMap_O_Response_Unit rml:reference "Response Unit" .

  VALUES (
    ?ls
    ?new_dart_class
    ?endPointTemplate
  ) {
    (
      ex-base:ls_DART_Data
      ex:DART_Data_Record
      "http://example.com/ice/DART_Data/record_id/{Record ID}/dtxsid/{DTXSID}/{_ROW_NUMBER}/Relation-Endpoint"
    )
  }
}
