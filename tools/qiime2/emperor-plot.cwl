#!/usr/bin/env cwl-runner
# https://github.com/IGS/Chiron/blob/master/pipelines/qiime2/emperor_plot.cwl
cwlVersion: v1.0
label: "qiime2: emperor visualization and ordination"
class: CommandLineTool

hints:
  - $import: qiime2-docker-hint.yml

inputs:
  pcoa:
    inputBinding:
      prefix: --i-pcoa
    label: The principal coordinates matrix to be plotted
    type: File
  metadata_file:
    inputBinding:
      prefix: --m-metadata-file
    label: Metadata file or artifact viewable as metadata
    type: File
  custom_axes:
    label: Name for custom axis label
    inputBinding:
      prefix: --p-custom-axes
    type: string
  out_visualization:
    label: resulting visualization filename
    inputBinding:
      prefix: --o-visualization
    type: string

outputs:
  pcoa_visual:
    type: File
    outputBinding:
      glob: $(inputs.out_visualization)

baseCommand: ["qiime", "emperor", "plot"]
