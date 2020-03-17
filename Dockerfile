FROM jupyter/tensorflow-notebook:latest

RUN pip install opencv-python==4.1.2.30 \
                mtcnn==0.1.0 \
                keras==2.3.1 \
                scikit-learn==0.21.3
