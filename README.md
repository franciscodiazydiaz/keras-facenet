# Facenet: Face Recognition using Keras

This is a high-level implementation of the face recognizer described
in the paper ["FaceNet: A Unified Embedding for Face Recognition and Clustering"](http://arxiv.org/abs/1503.03832)
using the pre-trained model by [davidsandberg](https://github.com/davidsandberg/facenet)
The code was initially written by nyoki-mtl and forked from his
repository [keras-facenet](https://github.com/nyoki-mtl/keras-facenet).

## Getting started

1. Follow Pretrained model [instructions](#pretrained-model) to download the Facenet model
2. Run Jupiter Notebook either using Docker compose or your local
   environment.
    - For Docker compose execute: `docker-compose up`
    - For the local environment (Python 3): `run.sh`
3. A sample dataset is provided in `data/images` but it can be replaced
   with your own.
4. Preprocess the dataset
   [pre-process-dataset.ipynb](notebook/pre-process-dataset.ipynb)
5. Train the SVM model [svm-classification.ipynb](svm-classification/svm.ipynb)
6. Run a webcam demo using the trained model
   [demo-webcam.ipynb](demo-webcam.ipynb)

## Pretrained model

### Keras by nyoki-mtl

You can quickly start facenet with pretrained Keras model (trained by MS-Celeb-1M dataset).
- Download model from [here](https://drive.google.com/open?id=1pwQ3H4aJ8a6yyJHZkTwtjcL4wYWQb7bn) and save it in `model/keras/`

### Tensorflow by David Sandberg

You can also convert the Tensorflow model to Keras from the pretrained models:

- Download model from [here](https://github.com/davidsandberg/facenet) and save it in `model/tf/` (keep the model version for further reference)
- Open [tf-to-keras.ipynb](notebook/tf-to-keras.ipynb) to convert the model for Keras
- Update the variable `model_version`
- Execute the Notebook.

Note: Latest version of pre-train models have an output layer of 512
instead of 128. If you are converting the model from Tensorflow to Keras
you should specify this on the inicialization of the class `InceptionResNetV1`.

```python
model = InceptionResNetV1(classes=512)
```

## AWS Rekognition

For evaluation proposes is also included the code to test the AWS
Rekognition service. Take into account that using this service may
incur in costs.
