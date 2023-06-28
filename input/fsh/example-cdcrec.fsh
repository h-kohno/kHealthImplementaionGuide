CodeSystem: RaceAndEthnicityCDC
Id: example-cdcrec
Title: "Race & Ethnicity - CDC"
Description:  "Race & Ethnicity CodeSystem - CDC add by H.Kono."
* ^experimental = true
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^property[0].code = #abstract
* ^property[=].type = #boolean
* ^property[=].description = "True if an element is considered 'abstract' - in other words, the code is not for use..."
* #1000-9 "Race" "Race, Note that this is an abstract 'grouping' concept and not for use as a real..."
* #1000-9 ^property.code = #abstract
* #1000-9 ^property.valueBoolean = true
* #1000-9 #1002-5 "American Indian or Alaska Native" "American Indian or Alaska Native"
* #1000-9 #1002-5 #1004-1 "American Indian" "American Indian"
* #1000-9 #1002-5 #1735-0 "Alaska Native" "Alaska Native"
// ...
* #1000-9 #2028-9 "Asian" "Asian"
* #1000-9 #2028-9 #2029-7 "Asian Indian" "Asian Indian"
* #1000-9 #2028-9 #2030-5 "Bangladeshi" "Bangladeshi"
// ...
* #1000-9 #2131-1 "Other Race" "Note that this term remains in the table for completeness, even though..."
* #2133-7 "Ethnicity" "Ethnicity Note that this is an abstract 'grouping' concept and not for use as a real..."
* #2133-7 ^property.code = #abstract
* #2133-7 ^property.valueBoolean = true
* #2133-7 #2135-2 "Hispanic or Latino" "Hispanic or Latino"
* #2133-7 #2135-2 #2137-8 "Spaniard" "Spaniard"
* #2133-7 #2135-2 #2148-5 "Mexican" "Mexican"
// ...
* #2133-7 #2186-5 "Not Hispanic or Latino" "Note that this term remains in the table for completeness, even though..."
