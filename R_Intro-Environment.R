# R_Intro-Environment.R
#
# Purpose: Familiarize yourself with the R environment, in particular as
#          presented through RStudio.
#
# Version: 1.1
#
# Date:    2016  09  13
# Author:  Boris Steipe (boris.steipe@utoronto.ca)
#
# V 1.1    Minor update
# V 1.0    First code
#
# TODO:
#
#
# == HOW TO WORK WITH THIS FILE ======================================
#
#  Go through this script line by line to read and understand the
#  code. Execute code by typing <cmd><enter>. When nothing is
#  selected, <cmd><enter> will execute the current line and move the cursor to
#  the next line. You can also select more than one line, e.g. to
#  execute a block of code, or less than one line, e.g. to execute
#  only the core of a nested expression.
#
#  Edit code, as required, experiment with options, or just play.
#  Especially play.
#
#  DO NOT simply source() this whole file!
#
#  If there are portions you don't understand, use R's help system,
#  Google for an answer, or ask me. Don't continue if you don't
#  understand what's going on. That's not how it works ...
#
#  This is YOUR file. Write your notes in here and add as many
#  comments as you need to understand what's going on here when you
#  come back to it in a year. That's the right way: keep code, data
#  and notes all in one place.
#
# ====================================================================



# ====================================================================
#        PART ONE: ENVIRONMENT
# ====================================================================

#  == The RStudio GUI/IDE ============================================

# Four "panes": Script - Console - Environment - Assets
# Note:
#    - Don't "Source on Save"
#    - Don't use the "Run" button (or re-run)
#    - Don't "Source" this file


# == Command completion
# Try command completion: slowly type getwd() in the console pane.

getwd()   # is this the correct directory?

# Once the command you are typing is identified, use <tab> to produce it.

# TASK: type "sys" in the console to get a list of system-
#       related functions. Find Sys.time(), and use the tab
#       to autocomplete. Execute it.
#       -  What does it do?


# ==== CHECKPOINT =========================
# Tell your instructor if you are stuck
# at this point.
# =========================================


#  == Files and Paths ================================================


# syntax to set the working directory...
setwd("/path/of/your/directory") # the argument is a string
setwd("/path/of/your/course\ directory") # "escape" blank spaces
list.files()

# A note for Windows: the "\" (backslash) has a particular
# meaning in strings: it "escapes" the following character.
# Therefore something like setwd("C:\My\R\files\") will NOT
# work. You have to "escape the escape character" to turn it
# into a "literal" backslash: setwd("C:\\My\\R\\files\\") or
# R will translate for you: setwd("C:/My/R/files/")

# I usually write setwd("whatever/path") as the first command
# in my scripts.

# But how do you know what the full path for the working
# directory is?

# There is a neat trick to get the path for a file (on the Mac).
# Drag and drop a file into a script. This will put the full path
# of the file into your script (... as the argument to a source()
# command).

# But unfortunately this does not work in R-Studio. There, you can
# use the menu to change the working directory. Then copy the
# command, which includes the path, into your script.


# == Typing in console and editor ====================================

# Note when you type a " or (, R automatically adds the
# corresponding closing element. Similar, if you select
# characters and type a quotation mark or bracket
# your text is not overwritten but enclosed.


# Sometimes you get stuck when the console tries to
# break a statement over several lines and you don't
# supply the correct closing element...

# Try using the escape character to break out of this.


# == History ========================================================

# In the console, use the up-arrow or down-arrow keys to navigate through your
# command history.

# TASK: Click on the History tab in the Environment pane. You can see recently
#       executed commands. Figure out how to execute a previous line without
#       having to retype it.



# ==================================================
# Using scripts
# ==================================================

# You can simply type R commands in the console and work this way.
# This is convenient, since you can view
# your command history (how?) and use <up-arrow>, <left-arrow>
# etc. to retrieve and edit previous commands.

# But it's much better to use scripts for everything.
# In fact:

# ALL YOUR R WORK SHOULD ALWAYS GO INTO SCRIPTS.

# This way you are on a good path to robust, reproducible
# work habits.

# This project contains a sample script.
# TASK: save a copy to an R resources folder

# When working with a script, you simply type your commands in the script, as
# you would type them into the console. Then, put the cursor in any line, or
# select a block of code and press
#    <command><return> (Mac)
#    <ctrl><r> (Win)
# to execute it in the console.

# Try:

length(dir(pattern = ".R"))

# Now select only what's between the outer brackets,
# and execute this portion of code.

# Select multiple lines to execute a whole block.

for (i in 1:length(dir())) {
    print(dir()[i])
}


# You can use source("<filename>") to execute an entire
# script at once.

# TASK: open and study the file scriptTemplate.R .
#       Make a copy in your R resources directory.
#

# ==== CHECKPOINT =========================
# Tell your instructor if you are stuck
# at this point.
# =========================================


# The idea is to have your notes and your R code in
# the same place. This is a first step towards
# "literate programming".


# ==================================================
# Help, documentation other information
# ==================================================

# Recapitulate ...
?dir    # help("dir")
??dir   # same as help.search("dir")

apropos("^dir")

# the "sos" package to look for functions everywhere
if (!require(sos, quietly=TRUE)) {
    install.packages("sos")
    library(sos)
}

ls("package:sos")         # contents of "sos"
browseVignettes("sos")    # documentation

# use "sos" to find more functions...
findFn("timeseries")

# The project directory contains a file "R_refcard.pdf" - a short reference of essential R functions.


# == Help Resources =================================================
#
# The R help mailing list:
#     https://stat.ethz.ch/mailman/listinfo/r-help
# Rseek: the specialized search engine for R topics:
#     http://rseek.org/
# R questions on stackoverflow:
#     http://stackoverflow.com/questions/tagged/r
# The Comprehensive R Archive Network CRAN:
#     http://cran.r-project.org/
# The CRAN task-view collection:
#     http://cran.r-project.org/web/views/
# Bioconductor task views:
#     http://www.bioconductor.org/packages/release/BiocViews.html

# Explore!


# [END]
