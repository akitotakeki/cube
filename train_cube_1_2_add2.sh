#!/usr/bin/env sh

/home/takeki/caffe/build/tools/caffe train --solver=cube_1_2_add2_solver.prototxt --snapshot=snapshots/cube_1_2_add_iter_30000.solverstate --gpu=1
