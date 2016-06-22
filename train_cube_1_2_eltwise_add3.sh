#!/usr/bin/env sh

/home/takeki/caffe/build/tools/caffe train --solver=cube_1_2_eltwise_add3_solver.prototxt --snapshot=snapshots/cube_1_2_eltwise_add2_iter_60000.solverstate --gpu=0
