#!/usr/bin/env python
# -*- coding: utf-8 -*-


@udf(
    fun_id='http://example.com/mapToSpecies',
    text='http://users.ugent.be/~bjdmeest/function/grel.ttl#valueParam')
def mapToSpecies(text = None):
    species_map = {
        "Rat" : "http://purl.uniprot.org/taxonomy/10114"
    }
    return species_map[text] if text in species_map else None
