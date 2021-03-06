% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/az_object.R
\docType{class}
\name{az_object}
\alias{az_object}
\title{Azure Active Directory object}
\format{An R6 object of class \code{az_object}.}
\usage{
az_object
}
\description{
Base class representing a directory object in Microsoft Graph.
}
\section{Fields}{

\itemize{
\item \code{token}: The token used to authenticate with the Graph host.
\item \code{tenant}: The Azure Active Directory tenant for this object.
\item \code{type}: The type of object: user, group, application or service principal.
\item \code{properties}: The object properties.
}
}

\section{Methods}{

\itemize{
\item \code{new(...)}: Initialize a new directory object. Do not call this directly; see 'Initialization' below.
\item \code{delete(confirm=TRUE)}: Delete an object. By default, ask for confirmation first.
\item \code{update(...)}: Update the object information in Azure Active Directory.
\item \code{do_operation(...)}: Carry out an arbitrary operation on the object.
\item \code{sync_fields()}: Synchronise the R object with the data in Azure Active Directory.
\item \code{list_group_memberships()}: Return the IDs of all groups this object is a member of.
\item \code{list_object_memberships()}: Return the IDs of all groups, administrative units and directory roles this object is a member of.
}
}

\section{Initialization}{

Objects of this class should not be created directly. Instead, create an object of the appropriate subclass: \link{az_app}, \link{az_service_principal}, \link{az_user}, \link{az_group}.
}

\seealso{
\link{ms_graph}, \link{az_app}, \link{az_service_principal}, \link{az_user}, \link{az_group}

\href{https://docs.microsoft.com/en-us/graph/overview}{Microsoft Graph overview},
\href{https://docs.microsoft.com/en-us/graph/api/overview?view=graph-rest-beta}{REST API reference}
}
\keyword{datasets}
