#!/usr/bin/env sh

/home/takeki/caffe/build/tools/caffe train --solver=cube_1_2_eltwise_add_solver.prototxt --snapshot=cube_1_2_eltwise_iter_30000.solverstate --gpu=1
