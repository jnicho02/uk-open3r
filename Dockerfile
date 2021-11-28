FROM jupyter/scipy-notebook:latest

RUN mamba install --yes \
    folium \
    geopandas \
    jq \
    mapclassify \
    numpy \
    overpy \
    && mamba clean --all -f -y

RUN fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
