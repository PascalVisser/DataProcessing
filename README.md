# Dataprocessing 
Repository for the Dataprocessing course (2022-2023)

## Contents
This repository has a couple of supporting file and directories with the assignments

|File/Directory    |Contains                                              |
|---               |---                                                   |
|Assignments       |Assignment directory                                  |
|Requirements.txt  |File with venv packages                               |
|LICENSE           |For usage and distribution of software                |
|.gitignore        |For ignoring python, R, venv and snakemake junk files |

## About the repository
This repository is about the Dataprocessing course, with teaches how to perform high-performance bio-informatics data analysis workflows. The course exists of 5 tutorial assignments and a final assignment.

Each assignment has its own subdirectory with a pipeline structure, included with there own readme file.

## Installation 
This project is run on a Unix-based system (LInux/macOS), users on a Windows system cannot use this project due packages that are not available for Windows. Also Python 3.0+ and pip are reqiured. 

This course uses mainly the workflow tool *Snakemake*. Snakemake is a tool used in bioinformatics and data science to create and manage computational workflows. A workflow is a series of steps or processes that need to be performed in a specific order to obtain a result. Snakemake allows you to define these steps as rules in a file, along with their inputs and outputs, and then automatically executes them in the correct order to produce the desired output.

To use the project + tools effective, a Virtual environment (venv) is desired. To create a venv, open a terminal and make sure that the working directory is the root of this repository and execute the following command:

```bash
Python3 -m venv path/to/new/venv
```

A venv is now created, Run the following command to activate the venv:

```bash
Source path/to/new/venv/bin/activate
```

With a secure and protected environment active, run the next command to install all the packages for this project:

```bash
pip install -r requirements.txt
```

Now all the packages are install into the venv. and is the repository ready to use. 




## Contact

For support or other questions

* Pascal Visser
  * p.visser@st.hanze.nl