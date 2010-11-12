\name{AllPossibleSpellings-package}
\alias{AllPossibleSpellings-package}
\alias{AllPossibleSpellings}
\docType{package}
\title{Finds all of word's possible spellings.}
\description{There are two functions: \code{possSpells.fnc} and \code{batch.possSpells.fnc}.
\code{possSpells.fnc}: For each word supplied to the \code{possSpells.fnc} function, all possible spellings for each word will be returned as well as the number of possible spellings for that word.
\code{batch.possSpells.fnc}: For every word list contained in each of the \code{.rda} files, the names of which are stored in the object \code{files}, computes all of the words' possible spellings and writes the output to a \code{.txt} file.}
\details{
\tabular{ll}{
Package: \tab AllPossibleSpellings\cr
Type: \tab Package\cr
Version: \tab 1.1\cr
Date: \tab 2010-11-12\cr
License: \tab GPL-2\cr
LazyLoad: \tab yes\cr
}
The package contains the function \code{possSpells.fnc} and \code{batch.possSpells.fnc}.
}
\author{
Antoine Tremblay, IWK Health Center

Maintainer: Antoine Tremblay <trea26@gmail.com>
}

\keyword{AllPossibleSpellings}
\seealso{
\code{\link{possSpells.fnc}}
\code{\link{batch.possSpells.fnc}}
}
\examples{
################################
#        possSpells.fnc        #
################################

# create a list of words
word.list<-c("d_ZZZ_s_t_I_t",
             "j_u_l_o",
             "f_A_m"
)
(as.matrix(word.list))

# process the words
x<-possSpells.fnc(word.list)
(matrix(x,ncol=4,nrow=29))

################################
#     batch.possSpells.fnc     #
################################

# create and save first word list
words<-c("d_ZZZ_s_t_I_t",
         "j_u_l_o",
         "f_A_m"
)
save(words,file="some.words.rda")

# create and sve second word list
words<-c("ZZZ_k_s_@_d_O_f_t",
         "b_E_N",
         "b_r_I_l_t"
)
save(words,file="other.words.rda")

# create and save third word list
words<-c("g_r_ZZZ_dZ",
         "k_e_v_I_t",
         "k_o_l_E_p"
)
save(words,file="more.words.rda")

# create and save fourth word list
words<-c("k_l_u_t_l",
         "d_ZZZ_g_o_s_o",
         "d_r_i_g_b_l_A_m"
)
save(words,file="yet.more.words.rda")

# create the vector of file names
files=c("some.words.rda",
        "other.words.rda",
        "more.words.rda",
        "yet.more.words.rda"
)

# process the files
# The list of possible spellings for each 
# word list are saved as a '.txt' file 
# in the current directory, e.g., 'some.words.txt'.
batch.possSpells.fnc(fn=files)
}



