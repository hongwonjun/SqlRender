% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RenderSql.R
\name{translate}
\alias{translate}
\title{Translates SQL from one dialect to another}
\usage{
translate(sql = "", targetDialect, oracleTempSchema = NULL)
}
\arguments{
\item{sql}{The SQL to be translated}

\item{targetDialect}{The target dialect. Currently "oracle", "postgresql", "pdw", "impala", "netezza", "bigquery", and
"redshift" are supported}

\item{oracleTempSchema}{A schema that can be used to create temp tables in when using Oracle or Impala.}
}
\value{
A character string containing the translated SQL.
}
\description{
\code{translate} translates SQL from one dialect to another.
}
\details{
This function takes SQL in one dialect and translates it into another. It uses simple pattern
replacement, so its functionality is limited. Note that trailing semicolons are not removed 
for Oracle, which is required before sending a statement through JDBC. This will be done by 
\code{\link{splitSql}}.
}
\examples{
translate("USE my_schema;", targetDialect = "oracle")

}
