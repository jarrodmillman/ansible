# System wide default fmri analysis prGograms, for login setup

FMRIBIN=/usr/fmri/bin

PATH64=/usr/fmri/lib64
AFNI=${PATH64}/afni/2018_07_31_18.2.06
CARET=${PATH64}/caret/5.65/bin_linux64
MATLAB=${PATH64}/matlab/2016a/bin
SLICER=${PATH64}/slicer/3.6.3
AIR=${PATH64}/air/5.3.0
IMCONVERT=${PATH64}/imconvert


# FSL variables
export FSLDIR=${PATH64}/fsl/5.0.11
export FSL_DIR=${FSLDIR}
export FSL_BIN=${FSLDIR}/bin
export FSLCONFDIR=${FSLDIR}/config
export FSLLOCKDIR=""
export FSLMACHINELIST=""
export FSLMACHTYPE=""
export FSLMULTIFILEQUIT=TRUE
export FSLOUTPUTTYPE=NIFTI_GZ
export FSLREMOTECALL=""
export FSLTCLSH=${FSL_BIN}/fsltclsh
export FSLWISH=${FSL_BIN}/fslwish

# Freesurfer variables
export FREESURFER_HOME=${PATH64}/freesurfer/6.0.0
FREESURFER_BIN=${FREESURFER_HOME}/bin
export FIX_VERTEX_AREA=""
export FMRI_ANALYSIS_DIR=${FREESURFER_HOME}/fsfast
export FSFAST_HOME=${FREESURFER_HOME}/fsfast
FSFAST_BIN=${FSFAST_HOME}/bin
export FSF_OUTPUT_FORMAT=nii
export FS_OVERRIDE=0
export FUNCTIONALS_DIR=${FREESURFER_HOME}/sessions
export LOCAL_DIR=${FREESURFER_HOME}/local
export MINC_BIN_DIR=${FREESURFER_HOME}/mni/bin
export MINC_LIB_DIR=${FREESURFER_HOME}/mni/lib
export MNI_DATAPATH=${FREESURFER_HOME}/mni/data
export MNI_DIR=${FREESURFER_HOME}/mni
export MNI_PERL5LIB=${FREESURFER_HOME}/mni/lib/perl5/5.8.5
export OS=Linux
export PERL5LIB=${FREESURFER_HOME}/mni/lib/perl5/5.8.5
export SUBJECTS_DIR=${FREESURFER_HOME}/subjects

PATH32=/usr/fmri/lib
NPTK=${PATH32}/nptk/1.8
HAMMER=${PATH32}/hammer/oct-18-2010

if [ "$EUID" != "0" ]; then

    # Path manipulation
    pathmunge ${FMRIBIN} after
    pathmunge ${AFNI} after
    pathmunge ${CARET} after
    pathmunge ${FREESURFER_BIN} after
    pathmunge ${FSFAST_BIN} after
    pathmunge ${FSL_BIN} after
    pathmunge ${MINC_BIN_DIR} after
    pathmunge ${MATLAB} after
    pathmunge ${SLICER} after
    pathmunge ${NPTK} after
    pathmunge ${HAMMER} after
    pathmunge ${AIR} after
    pathmunge ${IMCONVERT} after

fi

export PATH

alias freesurfer43='source /usr/fmri/lib64/freesurfer/fschooser 43'
alias fsl4.1.7='source /usr/fmri/lib64/fsl/fsl4.1.7'
alias fsl5.0.8='source /usr/fmri/lib64/fsl/fsl5.0.8'

afninew () {
    AFNI=${PATH64}/afni/2011_12_21_1014-2015-04-25
    export PATH=$AFNI:$PATH
}

afniold () {
    AFNI=${PATH64}/afni/2010_10_19_1028
    export PATH=$AFNI:$PATH
}
