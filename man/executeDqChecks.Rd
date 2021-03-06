% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/execution.R
\name{executeDqChecks}
\alias{executeDqChecks}
\title{Execute DQ checks}
\usage{
executeDqChecks(
  connectionDetails,
  cdmDatabaseSchema,
  resultsDatabaseSchema,
  cdmSourceName,
  numThreads = 1,
  sqlOnly = FALSE,
  outputFolder = "output",
  verboseMode = FALSE,
  writeToTable = TRUE,
  checkLevels = c("TABLE", "FIELD", "CONCEPT"),
  checkNames = c(),
  tablesToExclude = c(),
  cdmVersion = "5.3.1"
)
}
\arguments{
\item{connectionDetails}{A connectionDetails object for connecting to the CDM database}

\item{cdmDatabaseSchema}{The fully qualified database name of the CDM schema}

\item{resultsDatabaseSchema}{The fully qualified database name of the results schema}

\item{cdmSourceName}{The name of the CDM data source}

\item{numThreads}{The number of concurrent threads to use to execute the queries}

\item{sqlOnly}{Should the SQLs be executed (FALSE) or just returned (TRUE)?}

\item{outputFolder}{The folder to output logs and SQL files to}

\item{verboseMode}{Boolean to determine if the console will show all execution steps. Default = FALSE}

\item{writeToTable}{Boolean to indicate if the check results will be written to the dqdashboard_results table
in the resultsDatabaseSchema. Default is TRUE.}

\item{checkLevels}{Choose which DQ check levels to execute. Default is all 3 (TABLE, FIELD, CONCEPT)}

\item{checkNames}{(OPTIONAL) Choose which check names to execute. Names can be found in inst/csv/OMOP_CDM_v[cdmVersion]_Check_Desciptions.csv}

\item{tablesToExclude}{(OPTIONAL) Choose which CDM tables to exclude from the execution.}

\item{cdmVersion}{The CDM version to target for the data source. By default, 5.3.1 is used.}
}
\value{
If sqlOnly = FALSE, a list object of results
}
\description{
Execute DQ checks
}
