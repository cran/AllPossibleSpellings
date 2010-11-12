\name{possSpells.fnc}
\alias{possSpells.fnc}
\title{Get all of a word's possible spellings.}
\description{For every word in the input list, the function will return the number of possible spellings as well as the actual spellings.}
\usage{
possSpells.fnc(words)
}
\arguments{
  \item{words}{Note that the words have to be in Sampa phonetic notation. Also note that the Sampa symbols \code{left curly bracket} and \code{@ prime} (where \code{prime} is an actual prime symbol) have to replaced by \code{ZZZ} and \code{RRR} respectively. Further note that the individual phonemes of a word have to be separated by an underscore \code{_}.}
}
\details{The function returns a vector containing all of a word's possible spellings.}

\author{Antoine Tremblay, IWK Health Center, <trea26@gmail.com>}

\seealso{
\code{\link{batch.possSpells.fnc}}
}
\examples{
# create a list of words
word.list<-c("d_ZZZ_s_t_I_t",
	     "j_u_l_o",
	     "f_A_m"
)
(as.matrix(word.list))

# process the words
x<-possSpells.fnc(word.list)
(matrix(x,ncol=4,nrow=29))
}
