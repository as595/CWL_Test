#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
label: Run RM Synthesis on FITS files
baseCommand: python

requirements:
  InitialWorkDirRequirement:
    listing:
      - $(inputs.FITSfiles)
      - $(inputs.RMparfile)

inputs:
  script:
    type: File
    inputBinding: {position: 1}
    default:
      class: File
      location: /Users/annascaife/SRC/PYRMSYNTH/pyrmsynth/rmsynthesis.py
  flag:
    type: string
    inputBinding: {position: 2}
  RMparfile:
    type: File
    inputBinding: {position: 3}
  FITSfiles:
    type: Directory


outputs:
  pfits:
    type: File
    outputBinding:
      glob: "*_p.fits"
  qfits:
    type: File
    outputBinding:
      glob: "*_q.fits"
  ufits:
    type: File
    outputBinding:
      glob: "*_u.fits"
  phifits:
    type: File
    outputBinding:
      glob: "*_phi.fits"
  polfits:
    type: File
    outputBinding:
      glob: "*_polint.fits"
  qmapfits:
    type: File
    outputBinding:
      glob: "*_qmap.fits"
  umapfits:
    type: File
    outputBinding:
      glob: "*_umap.fits"
  rmsf:
    type: File
    outputBinding:
      glob: "*_rmsf.txt"
