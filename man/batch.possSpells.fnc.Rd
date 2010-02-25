\name{batch.possSpells.fnc}
\alias{batch.possSpells.fnc}
\title{Batch processing function for possSpells.fnc.}
\description{Load each \code{FILE_NAME.rda} file whose name appears in the vector \code{file}, loads the file and passes the object \code{words} contained in the file to the function \code{possSpells.fnc}.}
\usage{batch.possSpells.fnc(fn = list.files(pattern = ".*\\\.rda"))}
\arguments{
  \item{fn}{A vector containing the names of the files that contain the object \code{words}, which will be loaded and passed to \code{possSpells.fnc}. If you do not supply an object name to the \code{fn} argument ofthe function, the names of all \code{FILE_NAME.rda} files existing in the current directory will be supplied to \code{batch.possSeplls.fnc}.}
}
\details{The files have to be in \code{.rda} format and must contain an object named \code{words}, which is a vector of words in Sampa phonetic script.}
\value{Saves (i) a log of the process activities to a \code{FILE_NAME_log.doc} file and (ii) all of the words' possible spellings to a \code{FILE_NAME.doc} file.}
\references{
}
\author{Antoine Tremblay <trea26@gmail.com>}
\note{
}

\seealso{
\code{\link{possSpells.fnc}}
}
\examples{
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
