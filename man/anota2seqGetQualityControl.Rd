% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/anota2seqAllGenerics.R, R/anota2seqMethods.R
\docType{methods}
\name{anota2seqGetQualityControl}
\alias{anota2seqGetQualityControl}
\alias{anota2seqGetQualityControl,Anota2seqDataSet-method}
\title{Retrieve the anota2seqPerformQC output from the Anota2seqDataSet}
\usage{
anota2seqGetQualityControl(object)

\S4method{anota2seqGetQualityControl}{Anota2seqDataSet}(object)
}
\arguments{
\item{object}{An Anota2seqDataSet.}
}
\value{
The function outputs a list containing the following data:
\itemize{
\item omniIntStats: A matrix with a summary of the statistics from the omnibus
interaction analysis containing the following columns: 
\itemize{
\item intMS: the mean square for the interaction; 
\item intDf: the degrees of freedom for the interaction; 
\item residMS: the residual error mean square; 
\item residDf: the degrees of freedom for the residual error; 
\item residMSRvm: the mean square for the residual error after applying RVM; 
\item residDfRvm: the degrees of freedom for the residual error after 
applying RVM; 
\item intRvmFval: the F-value for the RVM statistics; 
\item intP: the p-value for the interaction;
\item intRvmP: the p-value for the interaction using RVM statistics; 
\item intPAdj: the adjusted [for multiple testing using the selected multiple
testing correction method] p-value of the interaction; 
\item intRvmPAdj: the adjusted [for multiple testing using the selected 
multiple testing correction method] p-value of the interaction using RVM 
statistics).
}
\item omniGroupStats:
A matrix with a summary of the statistics from the omnibus
treatment analysis containing the following columns:
\itemize{
\item groupSlope: the common slope used in APV; 
\item groupSlopeP: if the slope is <0 or >1 a p-value for the slope being <0 
or >1 is calculated; if the slope is >=0 & <=1 this value
is set to 1; 
\item groupMS: the mean square for treatments;
\item groupDf: the degrees of freedom for the treatments; 
\item groupResidMS: the residual error mean square); 
\item groupResidDf: the degrees of freedom for the residual error;
\item residMSRvm: the mean square for the residual error after applying RVM;
\item groupResidDfRvm: the degrees of freedom for the residual error after
applying RVM;
\item groupRvmFval: the F-value for the RVM statistics;
\item groupP: the p-value for the sample class effect;
\item groupRvmP: the p-value for the sample class effect using RVM 
statistics;
\item groupPAdj: the adjusted [for multiple testing using the selected 
multiple testing correction method] p-value of the sample class effect);
\item groupRvmPAdj: the adjusted [for multiple testing using the selected 
multiple testing correction method] p-value of the sample class effect using 
RVM statistics).
}
\item groupIntercepts A matrix with the group intercepts, i.e. the 
translational activity for each group independent of cytosolic mRNA level. 
Can be used for e.g. clustering of translational activity.  
\item correctionMethod: The multiple testing correction method used to adjust the
nominal p-values.
\item dsfSummary: A vector with the obtained frequencies of outlier dfbetas without
the interaction term in the model.
\item dfbetas: A matrix with the dfbetas from the model without the interaction
term in the model.
\item residuals: The residuals from the regressions without the interaction term in
the model.
\item fittedValues: A matrix with the fitted values from the regressions without
the interaction term in the model.
\item phenoClasses: The sample classes used in the analysis. The sample class order
can be used to create the contrast matrix when using anota2seqRun or
anota2seqAnalyze.
\item sampleNames: A vector with the sample names (from the translated mRNA [e.g.
polysome-associated mRNA or RPF] samples).
\item abParametersInt: The ab parameters for the inverse gamma fit for the
interactions within RVM.
\item abParametersGroup: The ab parameters for the inverse gamma fit for treatments
within RVM.
}
}
\description{
Retrieves the anota2seqPerformQC output from the Anota2seqDataSet
}
\examples{

data(anota2seq_data)
#Initialize Anota2seqDataSet
Anota2seqDataSet <- anota2seqDataSetFromMatrix(
    dataP = anota2seq_data_P[1:100,],
    dataT = anota2seq_data_T[1:100,],
    phenoVec = anota2seq_pheno_vec,
    dataType = "RNAseq",
    normalize = TRUE)
#Run QC
Anota2seqDataSet <- anota2seqPerformQC(Anota2seqDataSet)

#Get QC
qc <- anota2seqGetQualityControl(Anota2seqDataSet)

}
\seealso{
See Also as \code{\link{anota2seqPerformQC}}
}
