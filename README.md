# Signals and Systems
## Overview
This repository contains MATLAB code and documentation for the Signals and Systems lab exercises, covering continuous signals, even/odd decomposition, periodic signals, energy/power calculations, signal transformations, musical note generation, Fourier series, and signal filtering.
Contents
**1. Continuous Signals**

Unit Step and Ramp Functions:

ustep(t, m): Generates a unit step function.
uramp(t, m): Generates a ramp function.
Plots for signals like 5u(t-2), 3r(t+5), and composite signals on [-10, 10].


Example Plots:

y(t) = 2r(t+2.5) - 5r(t) + 3r(t-2) + u(t-4)
y(t) = sin(t) * [u(t+3) - u(t-3)]
Custom signal plots combining step and ramp functions.



**2. Even and Odd Decomposition**

Function: [ye, yo] = evenodd(y) to compute even and odd components of a signal.
Plots for signal y(t) = 2r(t+2.5) - 5r(t) + 3r(t-2) + u(t-4) with even/odd components.

**3. Sum of Periodic Signals**

Analysis of signals:
x1(t) = 1 + 1.5cos(2πΩ₀t) - 0.6cos(4Ω₀t), Ω₀ = π/10 (non-periodic).
x2(t) = 1 + 1.5cos(6πt) - 0.6cos(4Ω₀t) (periodic, T₀ = 5s).


MATLAB code for plotting and periodicity analysis.

**4. Energy and Power of Signals**

Signal: x(t) = e^(-t)cos(2πt)u(t) on [-10, 10].
Energy: E = 0.2562, Power: P = 0.0128 using symbolic integration in MATLAB.

**5. Signal Transformations**

Plots for:
Time shifting: x(t) = e^(-|t|), x(t-2), x(t+2).
Time scaling: x(t), x(2t), x(0.5t).
Time reversal: x(t), x(-t).



**6. Musical Notes**

Generates the ABC song using sinusoidal signals with note frequencies (e.g., C=262 Hz, D=294 Hz).
Two implementations: damped cosine waves and pure tones.
Sampling frequency: 8000 Hz.

**7. Fourier Series (Trumpet)**

Synthesizes a trumpet note (B, 494 Hz) using Fourier series.
Compares signals with and without phase shifts.
Observation: Phase changes affect the waveform but not the perceived sound.

**8. Convolution and Signal Filtering**

Low-Pass Filter:
Processes audio (female_voice.wav) with a 1500 Hz cutoff ideal low-pass filter.
Uses convolution with sinc function and normalizes output.


Fourier Transform and Butterworth Filter:
Custom FourierTransform and IFourierTransform functions.
ECG signal analysis with a 5th-order Butterworth low-pass filter (0-100 Hz).
Observations: Filter reduces high-frequency noise in ECG signals.

