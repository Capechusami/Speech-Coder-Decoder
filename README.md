# 🎙️ Speech Coder and Decoder (MATLAB)

This repository contains a **Speech Coder and Decoder** implementation developed using **MATLAB** as part of the **Multimedia Technologies (CSE4305)** laboratory course. The project demonstrates basic speech compression and reconstruction techniques used in multimedia data transmission.

---

## 📌 Project Overview

Speech coding is a core concept in multimedia communication systems. This project focuses on compressing a speech signal to reduce data size and reconstructing it at the receiver while maintaining acceptable speech quality.

The system uses:

* **Downsampling** for speech compression (encoding)
* **Upsampling and low-pass filtering** for speech reconstruction (decoding)

This experiment highlights the trade-off between **compression efficiency** and **signal quality**.

---

## 🎯 Objective

To implement and analyze a basic **speech coder (encoder)** and **speech decoder** using MATLAB for efficient multimedia data transmission.

---

## 🧠 Background / Theory

* Speech signals are represented digitally as discrete-time signals obtained by sampling analog audio waveforms.
* A **speech coder** compresses the signal by reducing redundancy. In this project, compression is achieved using downsampling.
* A **speech decoder** reconstructs the signal by restoring the sampling rate using upsampling.
* Upsampling introduces unwanted high-frequency components, which are removed using a **low-pass FIR filter**.

This process demonstrates the balance between reducing data rate and preserving speech quality.

---

## 🛠️ Tools & Requirements

* MATLAB software
* Personal computer
* Input speech file: `ahem_x.wav`
* MATLAB built-in functions:

  * `audioread`
  * `downsample`
  * `upsample`
  * `designfilt`

---

## ⚙️ Methodology (Code Structure)

The MATLAB program is organized into sections using `%%` as follows:

### 1️⃣ Load Speech Signal

* Loads the input speech file
* Stores audio samples and sampling frequency

### 2️⃣ Speech Compression (Encoding)

* Applies downsampling with a factor of 2
* Reduces the number of samples to simulate compression

### 3️⃣ Speech Reconstruction (Decoding)

* Upsamples the compressed signal
* Applies a low-pass FIR filter to remove distortion

### 4️⃣ Listening Test

* Plays both original and reconstructed signals
* Allows auditory comparison of quality

### 5️⃣ Time-Domain Visualization

* Plots original and reconstructed signals separately

### 6️⃣ Save Reconstructed Speech

* Saves the reconstructed signal as a `.wav` file

### 7️⃣ Combined Signal Comparison

* Overlays original and reconstructed signals on one graph

---

## 📊 Results & Analysis

* The compressed signal required fewer samples, confirming effective speech compression.
* The reconstructed signal preserved intelligibility but showed slight smoothing and amplitude differences.
* Low-pass filtering significantly improved reconstruction quality.
* Listening tests confirmed that the reconstructed speech remained understandable.
![image alt](https://github.com/Capechusami/Speech-Coder-Decoder/blob/b69a889bc48e5edc0c516c9e211e326fb5b44955/Output%20Figure%201.png)
![image alt](https://github.com/Capechusami/Speech-Coder-Decoder/blob/415161e7f7199656cbddfc5e177bca3604033ece/Output%20Figure%202.png)
---

## ⚠️ Challenges & Observations

* Increasing the downsampling factor caused noticeable degradation in speech quality.
* Low-pass filtering is essential after upsampling to minimize distortion.
* The experiment demonstrated the importance of balancing compression and quality.

---

## ✅ Conclusion

This project successfully implemented a basic speech coder and decoder using MATLAB. Speech compression was achieved through downsampling, and reconstruction was performed using upsampling and low-pass filtering. The results clearly demonstrate fundamental principles of multimedia data transmission.

---

## 📂 Output Files

* **Audio Output**

  * `reconstructed_speech.wav`
* **Generated Figures**

  * Time-domain plot of original speech signal
  * Time-domain plot of reconstructed speech signal
  * Combined comparison plot



## 👨‍💻 Authors

* Samuel Tesfachew
