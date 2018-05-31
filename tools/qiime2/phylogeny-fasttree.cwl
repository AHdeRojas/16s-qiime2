#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool

hints:
  - $import: qiime2-docker-hint.yml

inputs:
  alignment:
    type: File
    doc: "aligned sequences to be used for phylogenetic reconstruction"
    inputBinding:
      prefix: "--i-alignment"
  tree_filename:
    type: string
    doc: "resulting phylogenetic tree filename"
    inputBinding:
      prefix: "--o-tree"
outputs:
  unrooted_tree:
    type: File
    outputBinding:
      glob: $(inputs.tree_filename)

baseCommand: ["qiime", "phylogeny", "fasttree"]
