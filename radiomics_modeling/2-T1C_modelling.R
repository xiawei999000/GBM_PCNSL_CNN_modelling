# author: Xia Wei, xiaw@sibet.ac.cn
# paper: Deep Learning for Automatic Differential Diagnosis of 
# Primary Central Nervous System Lymphoma and
# Glioblastoma: Multi-parametric MRI based Convolutional
# Neural Network Model
# date: 02/13/2021

# T1C radiomics model building and test
# for each fold in CV

# fold -- f1
# list(x_train, y_train, x_test, y_test)
data_T1C_f1 <- training_test_set_split(label, Fea_T1C, all_info$fold1)
# list(cvfit, colnames(x_train))
T1C_rads_model_f1 <- radiomics_model_training(data_T1C_f1[[1]], data_T1C_f1[[2]])
# (rad_model, fea_names, x_test, y_test)
T1C_rads_model_f1_training_preds <- radiomics_model_test(T1C_rads_model_f1[[1]], T1C_rads_model_f1[[2]],
                                                     data_T1C_f1[[1]], data_T1C_f1[[2]])
T1C_rads_model_f1_test_preds <- radiomics_model_test(T1C_rads_model_f1[[1]], T1C_rads_model_f1[[2]],
                                             data_T1C_f1[[3]], data_T1C_f1[[4]])

# fold -- f2
# list(x_train, y_train, x_test, y_test)
data_T1C_f2 <- training_test_set_split(label, Fea_T1C, all_info$fold2)
# list(cvfit, colnames(x_train))
T1C_rads_model_f2 <- radiomics_model_training(data_T1C_f2[[1]], data_T1C_f2[[2]])
# (rad_model, fea_names, x_test, y_test)
T1C_rads_model_f2_training_preds <- radiomics_model_test(T1C_rads_model_f2[[1]], T1C_rads_model_f2[[2]],
                                                         data_T1C_f2[[1]], data_T1C_f2[[2]])
T1C_rads_model_f2_test_preds <- radiomics_model_test(T1C_rads_model_f2[[1]], T1C_rads_model_f2[[2]],
                                                     data_T1C_f2[[3]], data_T1C_f2[[4]])


# fold -- f3
# list(x_train, y_train, x_test, y_test)
data_T1C_f3 <- training_test_set_split(label, Fea_T1C, all_info$fold3)
# list(cvfit, colnames(x_train))
T1C_rads_model_f3 <- radiomics_model_training(data_T1C_f3[[1]], data_T1C_f3[[2]])
# (rad_model, fea_names, x_test, y_test)
T1C_rads_model_f3_training_preds <- radiomics_model_test(T1C_rads_model_f3[[1]], T1C_rads_model_f3[[2]],
                                                         data_T1C_f3[[1]], data_T1C_f3[[2]])
T1C_rads_model_f3_test_preds <- radiomics_model_test(T1C_rads_model_f3[[1]], T1C_rads_model_f3[[2]],
                                                     data_T1C_f3[[3]], data_T1C_f3[[4]])


# fold -- f4
# list(x_train, y_train, x_test, y_test)
data_T1C_f4 <- training_test_set_split(label, Fea_T1C, all_info$fold4)
# list(cvfit, colnames(x_train))
T1C_rads_model_f4 <- radiomics_model_training(data_T1C_f4[[1]], data_T1C_f4[[2]])
# (rad_model, fea_names, x_test, y_test)
T1C_rads_model_f4_training_preds <- radiomics_model_test(T1C_rads_model_f4[[1]], T1C_rads_model_f4[[2]],
                                                         data_T1C_f4[[1]], data_T1C_f4[[2]])
T1C_rads_model_f4_test_preds <- radiomics_model_test(T1C_rads_model_f4[[1]], T1C_rads_model_f4[[2]],
                                                     data_T1C_f4[[3]], data_T1C_f4[[4]])



# fold -- f5
# list(x_train, y_train, x_test, y_test)
data_T1C_f5 <- training_test_set_split(label, Fea_T1C, all_info$fold5)
# list(cvfit, colnames(x_train))
T1C_rads_model_f5 <- radiomics_model_training(data_T1C_f5[[1]], data_T1C_f5[[2]])
# (rad_model, fea_names, x_test, y_test)
T1C_rads_model_f5_training_preds <- radiomics_model_test(T1C_rads_model_f5[[1]], T1C_rads_model_f5[[2]],
                                                         data_T1C_f5[[1]], data_T1C_f5[[2]])
T1C_rads_model_f5_test_preds <- radiomics_model_test(T1C_rads_model_f5[[1]], T1C_rads_model_f5[[2]],
                                                     data_T1C_f5[[3]], data_T1C_f5[[4]])


# the mean metric of CV
T1C_rads_CV_mean_metric <- (T1C_rads_model_f1_test_preds[[1]]
                            +T1C_rads_model_f2_test_preds[[1]]
                            +T1C_rads_model_f3_test_preds[[1]]
                            +T1C_rads_model_f4_test_preds[[1]]
                            +T1C_rads_model_f5_test_preds[[1]])/5
T1C_rads_CV_mean_metric






