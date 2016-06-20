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
plot "cube_1_2.log.train" using 1:3 title "concat_train" lt 0 lc rgb "red"
replot "cube_1_2.log.test" using 1:4 title "concat_test" lc rgb "red"
replot "cube_1_2_eltwise.log.train" using 1:3 title "eltwise_train" lt 0 lc rgb "blue"
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
