reset
set terminal png
set output "graph_cube_1_2_eltwise.png"
set style data lines
set key right

###### Fields in the data file your_log_name.log.train are
###### Iters Seconds TrainingLoss LearningRate

# Training loss vs. training iterations
set title "Loss (Concatnation v.s. Elementwise)"
set xlabel "Iterations"
set ylabel "Loss"
plot "cube_1_2.log.train" using 1:3 title "concat_lr_0.1_train" lt 0 lc rgb "red"
replot "cube_1_2.log.test" using 1:4 title "concat_lr_0.1_test" lc rgb "red"
replot "res_ide8.log.train" using 1:3 title "res_ide8_train" lt 0 lc rgb "light-green"
replot "res_ide8.log.test" using 1:4 title "res_ide8_test" lc rgb "light-green"
replot "res_ide16.log.train" using 1:3 title "res_ide14_train" lt 0 lc rgb "green"
replot "res_ide16.log.test" using 1:4 title "res_ide14_test" lc rgb "green"
replot "res_ide20.log.train" using 1:3 title "res_ide20_train" lt 0 lc rgb "dark-green"
replot "res_ide20.log.test" using 1:4 title "res_ide20_test" lc rgb "dark-green"
replot "cube_1_2_add.log.train" using 1:3 title "concat_lr_0.01train" lt 0 lc rgb "magenta"
replot "cube_1_2_add.log.test" using 1:4 title "concat_lr_0.01_test" lc rgb "magenta"
#replot "cube_1_2_add2.log.train" using 1:3 title "concat_lr_0.01train" lt 0 lc rgb "orange"
#replot "cube_1_2_add2.log.test" using 1:4 title "concat_lr_0.01_test" lc rgb "orange"
replot "cube_1_2_eltwise.log.train" using 1:3 title "eltwise_train" lt 0 lc rgb "blue"
replot "cube_1_2_eltwise_add.log.test" using 1:4 title "eltwise_test" lc rgb "turquoise"
replot "cube_1_2_eltwise_add.log.train" using 1:3 title "eltwise_train" lt 0 lc rgb "turquoise"
#replot "cube_1_2_eltwise_add_2.log.test" using 1:4 title "eltwise_test" lc rgb "cyan"
#replot "cube_1_2_eltwise_add_2.log.train" using 1:3 title "eltwise_train" lt 0 lc rgb "cyan"
#replot "cube_1_2_eltwise_add_3.log.test" using 1:4 title "eltwise_test" lc rgb "blue"
#replot "cube_1_2_eltwise_add_3.log.train" using 1:3 title "eltwise_train" lt 0 lc rgb "blue"
#replot "cube_1_2_eltwise_add_4.log.test" using 1:4 title "eltwise_test" lc rgb "pink"
#replot "cube_1_2_eltwise_add_4.log.train" using 1:3 title "eltwise_train" lt 0 lc rgb "pink"
replot "cube_1_2_eltwise_add_5.log.test" using 1:4 title "eltwise_test" lc rgb "purple"
replot "cube_1_2_eltwise_add_5.log.train" using 1:3 title "eltwise_train" lt 0 lc rgb "purple"
set output "graph_cube_1_2_eltwise.png"
replot "cube_1_2_eltwise.log.test" using 1:4 title "eltwise_test" lc rgb "blue"



# Training loss vs. training time
# plot "mnist.log.train" using 2:3 title "mnist"

# Learning rate vs. training iterations;
# plot "mnist.log.train" using 1:4 title "mnist"

# Learning rate vs. training time;
# plot "mnist.log.train" using 2:4 title "mnist"


###### Fields in the data file your_log_name.log.test are
###### Iters Seconds TestAccuracy TestLoss

# Test loss vs. training iterations
# plot "mnist.log.test" using 1:4 title "mnist"

# Test accuracy vs. training iterations
# plot "mnist.log.test" using 1:3 title "mnist"

# Test loss vs. training time
# plot "mnist.log.test" using 2:4 title "mnist"

# Test accuracy vs. training time
# plot "mnist.log.test" using 2:3 title "mnist"
