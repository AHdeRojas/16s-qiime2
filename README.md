## 16S Multipart Workflows

- __Step1__: Import Demux: [16s-step1-import-demux-paired.cwl](#step1)
- __Step2__: DADA2: [16s-step2-dada2-paired.cwl](#step2)
- __Step3__: Alpha analysis: [16s-step3-alpha-beta-analysis](#step3)

Based upon https://docs.qiime2.org/2018.4/tutorials/moving-pictures/

## Details

### Step1

 - [Obtaining and importing data](https://docs.qiime2.org/2018.4/tutorials/moving-pictures/#obtaining-and-importing-data)
 - [Demultiplexing sequences](https://docs.qiime2.org/2018.4/tutorials/moving-pictures/#demultiplexing-sequences)

Visualize [16s-step1-import-demux-paired.cwl at view.commonwl.org](https://view.commonwl.org/workflows/github.com/bespin-workflows/16s-qiime2/blob/develop/16s-step1-import-demux-paired.cwl)

### Step2

Before running this step a user must determine `dada2_trunc_len_f`, `dada2_trunc_len_r` and `dada2_trim_left_f`, `dada2_trim_left_r` parameters.
This can be done based on plots you see in `demux.qzv` created in __Step1__.

- [DADA2](https://docs.qiime2.org/2018.4/tutorials/moving-pictures/#option-1-dada2)
- [FeatureTable and FeatureData summaries](https://docs.qiime2.org/2018.4/tutorials/moving-pictures/#featuretable-and-featuredata-summaries)
- [Generate a tree for phylogenetic diversity analyses](https://docs.qiime2.org/2018.4/tutorials/moving-pictures/#generate-a-tree-for-phylogenetic-diversity-analyses)
- [Taxonomic analysis](https://docs.qiime2.org/2018.4/tutorials/moving-pictures/#taxonomic-analysis)
- [Differential abundance testing with ANCOM](https://docs.qiime2.org/2018.4/tutorials/moving-pictures/#differential-abundance-testing-with-ancom)

Visualize [16s-step2-dada2-paired.cwl at view.commonwl.org](https://view.commonwl.org/workflows/github.com/bespin-workflows/16s-qiime2/blob/develop/16s-step2-dada2-paired.cwl)

### Step3

Before running this step a user must determine `diversity_sampling_depth` and `rarefaction_max_depth` parameters.
`diversity_sampling_depth` can be determined by looking at `table.qzv` from __Step2__.
`rarefaction_max_depth` can be determined by looking at `table.qzv` (Frequency per sample).

- [Alpha and beta diversity analysis](https://docs.qiime2.org/2018.4/tutorials/moving-pictures/#alpha-and-beta-diversity-analysis)
- [Alpha rarefaction plotting](https://docs.qiime2.org/2018.4/tutorials/moving-pictures/#alpha-rarefaction-plotting)

Visualize [16s-step3-alpha-beta-analysis.cwl at view.commonwl.org](https://view.commonwl.org/workflows/github.com/bespin-workflows/16s-qiime2/blob/develop/16s-step3-alpha-beta-analysis.cwl)

## Summary

Each sub-step above corresponds to a cwl sub-workflow in the  `subworkflows/` directory with the qiime2 prefix.
Each command within these sub-workflows corresponds to a CWL CommandLineTool in `tools/qime2/` directory.

Visualize [workflows](https://view.commonwl.org/workflows/github.com/bespin-workflows/16s-qiime2/blob/develop) and [subworkflows](https://view.commonwl.org/workflows/github.com/bespin-workflows/16s-qiime2/blob/develop/subworkflows) at view.commonwl.org.
