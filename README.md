# donkeycar-vertex-ai-workbench
A docker image containing the donkey framework, which can be utilized as a custom docker image in a Vertex AI Workbench Managed Notebook.

# Description
The Vertex AI Workbench in Google Cloud (https://cloud.google.com/vertex-ai) offers a service called "Managed notebooks". Managed notebooks instances are Google-managed JupyterLab environments with integrations and capabilities that help you set up and work in an end-to-end Jupyter notebook-based production environment.

Managed notebooks support adding custom container images to the instances, which will be available as kernels that can run the notebook files.

This repo contains such a custom container image which contains the Donkeycar framework:
https://github.com/autorope/donkeycar/

# Image explanation
### Base image
The custom image requirements recommend creating a derivative container based on one of the standard available Deep Learning Containers images.
https://cloud.google.com/vertex-ai/docs/workbench/managed/custom-container#requirements

Since this container image is mainly meant to be used to run simple donkey commands, the CPU base image was selected since this was the most simple image available.
gcr.io/deeplearning-platform-release/base-cpu

### Donkeycar framework
The Donkeycar framework is installed utilizing the GitHub releases made in the official Donkeycar repo:
https://github.com/autorope/donkeycar/releases
