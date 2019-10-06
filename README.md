# EASP_project:
# Adaptive Signal Processing: Implementation and Study of different algorithms used for  telecommunication receivers

Since the telecommunication has existed, the problem of recovering the signal sent has been
the most important one. For these aim, different technologies have been used during the years,
from the analogic telecommunications to the digital ones used in the present.
Since some years ago, the capacity of developing adaptative filters in the receivers has been
growing. This kind of filters try to minimize the error of the signal applying different algorithms
to tune the filter in the receiver. This is fundamental in digital communications to recover the
original signal sent by the channel.

So, the filter for reception takes the error signal (difference between reference
signal and the obtained after filtering the received one) and try to minimize the expected value
of this for tuning the filter in the best way. For doing this, several algorithms have been
developed during the years.

The main aim of this project was to analyse some of these algorithms and to obtain some
conclusions about what the best under different situations is. These analysed algorithms are
LMS and RLS, because these are some of the most used in the telecommunication systems.
For doing this analysis, all the system has been simulated using MATLAB. For this, y[n] is created
as a random sequence of bits codified using 16-QAM; this signal is put in the channel (H[z]) which
will follow the model of a FIR filter and also AWGN will be added in the channel, after this, x[n]
is founded by receiver.
In the receiver, the necessities are to demodulate the signal and to recover the original sequence
of bits, using the different adaptative algorithms for these, so the algorithms have been
implemented for doing the needed experiments. The filter is tuned passing a training sequence
to the algorithm. We’ll obtain the output of the system and with the error signal the filter must
be able to recover the original signal, using a reference signal (obtained from a decision function)
for this aim.
So, with the different experiments, the next parameters can be obtained for each adaptative
simulation: number of wrong recovered bits, BER, filter’s coefficients and EVM. So, with these
parameters, big conclusions about the different adaptative algorithms can be obtained, which
is the aim of this project.
