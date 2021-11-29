FROM jupyter/scipy-notebook:latest

RUN mamba install --yes \
    contextily \
    folium \
    geopandas \
    jq \
    mapclassify \
    numpy \
    overpy \
    qwikidata \
    && mamba clean --all -f -y

RUN pip install qwikidata

RUN fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
