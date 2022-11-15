<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile CarePlan
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:CarePlan</sch:title>
    <sch:rule context="f:CarePlan">
      <sch:assert test="count(f:extension[@url = 'http://example.com/fhir/example/StructureDefinition/art-status']) &gt;= 1">extension with URL = 'http://example.com/fhir/example/StructureDefinition/art-status': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.com/fhir/example/StructureDefinition/art-status']) &lt;= 1">extension with URL = 'http://example.com/fhir/example/StructureDefinition/art-status': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:activity) &gt;= 1">activity: minimum cardinality of 'activity' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.meta</sch:title>
    <sch:rule context="f:CarePlan/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.implicitRules</sch:title>
    <sch:rule context="f:CarePlan/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.language</sch:title>
    <sch:rule context="f:CarePlan/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.text</sch:title>
    <sch:rule context="f:CarePlan/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.extension</sch:title>
    <sch:rule context="f:CarePlan/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.modifierExtension</sch:title>
    <sch:rule context="f:CarePlan/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.identifier</sch:title>
    <sch:rule context="f:CarePlan/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.instantiatesCanonical</sch:title>
    <sch:rule context="f:CarePlan/f:instantiatesCanonical">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.instantiatesUri</sch:title>
    <sch:rule context="f:CarePlan/f:instantiatesUri">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.basedOn</sch:title>
    <sch:rule context="f:CarePlan/f:basedOn">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.replaces</sch:title>
    <sch:rule context="f:CarePlan/f:replaces">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.partOf</sch:title>
    <sch:rule context="f:CarePlan/f:partOf">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.status</sch:title>
    <sch:rule context="f:CarePlan/f:status">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.intent</sch:title>
    <sch:rule context="f:CarePlan/f:intent">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.category</sch:title>
    <sch:rule context="f:CarePlan/f:category">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.title</sch:title>
    <sch:rule context="f:CarePlan/f:title">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.description</sch:title>
    <sch:rule context="f:CarePlan/f:description">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.subject</sch:title>
    <sch:rule context="f:CarePlan/f:subject">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.encounter</sch:title>
    <sch:rule context="f:CarePlan/f:encounter">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CarePlan/f:period</sch:title>
    <sch:rule context="f:CarePlan/f:period">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:start) &gt;= 1">start: minimum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:start) &lt;= 1">start: maximum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:end) &lt;= 1">end: maximum cardinality of 'end' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.period.extension</sch:title>
    <sch:rule context="f:CarePlan/f:period/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.period.start</sch:title>
    <sch:rule context="f:CarePlan/f:period/f:start">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.period.end</sch:title>
    <sch:rule context="f:CarePlan/f:period/f:end">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.created</sch:title>
    <sch:rule context="f:CarePlan/f:created">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.author</sch:title>
    <sch:rule context="f:CarePlan/f:author">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.contributor</sch:title>
    <sch:rule context="f:CarePlan/f:contributor">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.careTeam</sch:title>
    <sch:rule context="f:CarePlan/f:careTeam">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.addresses</sch:title>
    <sch:rule context="f:CarePlan/f:addresses">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.supportingInfo</sch:title>
    <sch:rule context="f:CarePlan/f:supportingInfo">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.goal</sch:title>
    <sch:rule context="f:CarePlan/f:goal">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CarePlan/f:activity</sch:title>
    <sch:rule context="f:CarePlan/f:activity">
      <sch:assert test="count(f:outcomeCodeableConcept) &lt;= 1">outcomeCodeableConcept: maximum cardinality of 'outcomeCodeableConcept' is 1</sch:assert>
      <sch:assert test="count(f:detail) &gt;= 1">detail: minimum cardinality of 'detail' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity</sch:title>
    <sch:rule context="f:CarePlan/f:activity">
      <sch:assert test="not(exists(f:detail)) or not(exists(f:reference))">Provide a reference or detail, not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.extension</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.modifierExtension</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.outcomeCodeableConcept</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:outcomeCodeableConcept">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.outcomeReference</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:outcomeReference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.progress</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:progress">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.reference</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:reference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CarePlan/f:activity/f:detail</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail">
      <sch:assert test="count(f:extension[@url = 'http://example.com/fhir/example/StructureDefinition/art-regimen-line']) &gt;= 1">extension with URL = 'http://example.com/fhir/example/StructureDefinition/art-regimen-line': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.com/fhir/example/StructureDefinition/art-regimen-line']) &lt;= 1">extension with URL = 'http://example.com/fhir/example/StructureDefinition/art-regimen-line': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.extension</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.modifierExtension</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.kind</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:kind">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.instantiatesCanonical</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:instantiatesCanonical">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.instantiatesUri</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:instantiatesUri">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.code</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.reasonCode</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:reasonCode">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.reasonReference</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:reasonReference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.goal</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:goal">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.status</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:status">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.statusReason</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:statusReason">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.doNotPerform</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:doNotPerform">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.scheduled[x] 1</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:scheduled[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.scheduled[x].extension 1</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:scheduled[x]/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.scheduled[x].start 1</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:scheduled[x]/f:start">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.scheduled[x].end 1</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:scheduled[x]/f:end">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.location</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:location">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.performer</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:performer">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.product[x] 1</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:product[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.dailyAmount</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:dailyAmount">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.quantity</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:quantity">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.activity.detail.description</sch:title>
    <sch:rule context="f:CarePlan/f:activity/f:detail/f:description">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>CarePlan.note</sch:title>
    <sch:rule context="f:CarePlan/f:note">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
