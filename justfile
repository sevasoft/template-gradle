alias inp := init-new-project

alias b := build
alias r := run
alias t := test
alias c := check
alias cln := clean

alias ug := update-gradle
#alias ig := install-gradle

default:
    @just --list

#
# 🪄 STARTING A NEW PROJECT
#

# Creates a new Gradle project in your current directory.
init-new-project:
    gradle init

#
# 🛠 GENERAL
#

# Builds your Gradle project.
build:
    gradle build

# Executes your Gradle project.
run:
    gradle run

# Executes the tests of your Gradle project.
test:
    gradle test

# Checks for errors in your Gradle project.
check:
    gradle check

# Creates your Rust project documentation (use `cargo doc --open` to open it).
doc:
    cargo doc

# Cleans outputs
clean:
    gradle clean

#
# 🐘 INSTALLING/UPDATING GRADLE
#

update-gradle:
    brew upgrade gradle

install-gradle:
    brew install gradle