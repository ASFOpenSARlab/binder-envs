FROM ghcr.io/asfopensarlab/opensarlab-container:latest

USER root

RUN python -m pip install \
    nbgitpuller \
    ipywidgets \
    mpldatacursor \
    rise \
    hide_code \
    jupyter_nbextensions_configurator \
    pandoc==2.0a4 \
    pypandoc && \
    jupyter serverextension enable --py nbgitpuller
    #jupyter nbextensions_configurator enable --user
    #jupyter nbextension enable --py widgetsnbextension --user
    #jupyter-nbextension enable rise --py --user
    #jupyter nbextension install --py hide_code --user
    #jupyter nbextension enable --py hide_code --user
    #jupyter serverextension enable --py hide_code --user

RUN chown -R jovyan:users /opt/conda

USER jovyan