# Assingment 3
Directory for Assignment 3

## Contents
This repository has a couple of supporting file and directories with the assignments

|Directory             |Contains                                       |
|---                   |---                                            |
|config                |Contains configuration file                    |
|images                |Contains DAG image                             |
|results               |Output folder of snakefile                     |
|workflow              |Contains Snakemake file, with rules subfolder  |
|---                   |                                               |
|Files                 |                                               |
|---                   |                                               |
|questions_answers.txt | Answer to exercise questions         |

## About the Directory
This directory contains files and subfolders for using and executing assignment 3. 


## Usage 

**Important** execute all commands from the root of this assignment *../assignment3*, This is because the snakefile contains paths that runs from the dirroot. 

To use this directory, simply execute the following command:

```bash
snakemake -c<number of cores to use>
```

This will execute the snakemake file and directs the output to the /results folder. Each rule can also be executed separately, just execute the command:

```bash
snakemake --list
```

This will generate a list of all the rule in the file. Rules can be executed by the following command:


```bash
snakemake -c<number of cores> <name of the rule>
```

## Contact

For support or other questions

* Pascal Visser
  * p.visser@st.hanze.nl