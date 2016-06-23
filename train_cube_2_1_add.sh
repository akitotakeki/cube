#!/usr/bin/env sh

/home/takeki/caffe/build/tools/caffe train --solver=cube_2_1_add_solver.prototxt --snapshot=snapshots/cube_2_1_iter_80000.solverstate --gpu=0,1
