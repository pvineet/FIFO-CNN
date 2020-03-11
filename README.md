# FIFO-CNN
Codebase for the paper - A FIFO BASED ACCELERATOR FOR CONVOLUTIONAL NEURAL NETWORKS
FIFO-CNN is an  architecture  which  takes  anovel  approach  to  compute  convolution  results  using  row-wise  inputs  as  opposed  to  traditional  tile-based  processing. We are able to exceed the results of state of the art architectures when implemented on an inexpensive PYNQ Z1 board running at 100Mhz.  The total latency to run the convolution layers in the VGG16 benchmark is nearly 1.5x lower for this architecture than state of the art architectures.
