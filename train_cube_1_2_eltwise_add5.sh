#!/usr/bin/env sh

/home/takeki/caffe/build/tools/caffe train --solver=cube_1_2_eltwise_add5_solver.prototxt --snapshot=snapshots/cube_1_2_eltwise_add_iter_42000.solverstate --gpu=1
