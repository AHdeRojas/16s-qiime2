#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
label: "qiime2: Filter samples from table based on frequency and/or metadata"

hints:
  - $import: qiime2-docker-hint.yml

inputs:
  table:
    type: File
    label: "feature table to be summarized"
    inputBinding:
      prefix: "--i-table"
  sample_metadata_file:
    type: File
    label: "metadata file or artifact viewable as metadata"
    inputBinding:
      prefix: "--m-metadata-file"
  filter_where:
    type: string
    label: Filter string to filter samples by
    default: "BodySite='gut'"
    inputBinding:
      prefix: "--p-where"
  filtered_table_filename:
    type: string
    label: "resulting filtered table filename"
    inputBinding:
      prefix: "--o-filtered-table"

outputs:
  filtered_table:
    type: File
    outputBinding:
      glob: $(inputs.filtered_table_filename)

baseCommand: ["qiime", "feature-table", "filter-samples"]
