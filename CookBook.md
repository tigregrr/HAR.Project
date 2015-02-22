==================================================================
Getting and Cleaning Data Course Project
==================================================================
Student: Luis E. Urbina;
Professors: by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD;
Course: Getting and Cleaning Data; 
Johns Hopkins University;
February, 2015.


==================================================================
Data Set and Experiment Description
==================================================================

It is given the HUMAN ACTIVITY RECOGNITION USING SMARTPHONES DATA
SET, experiment carried out for one of the SmartLab team of the 
Università degli Studi di Genova. The data recorded and the experiment 
is organized as follow:  

a) A group of 30 volunteers (subject)
b) Each volunteer perform 6 different activities (activity_labels.txt). 
c) Sensors signals from an accelerometer and a gyroscope devices are recorded
   (features.txt and features_info.txt). There are in total 561 variables which
   shows some illegal symbols for name variables in R, and them require to be clean.   
d) Volunteers are divided into two groups: one for training (70%) and 
   one for testing (30%)
e) Training volunteer group is generating "x" and "y" data sets (subject_train.txt,
   X_train.txt, Y_train.txt)
f) Testing volunteer group is generating "x" and "y" data sets (subject_test.txt,
   X_test.txt, Y_test.txt)

==================================================================
Data Set and Experiment Description
==================================================================

Volunteer
	1	Train Group
	2	Test Group
	3	Train Group
	4	Test Group
	5	Train Group
	6	Train Group
	7	Train Group
	8	Train Group
	9	Test Group
	10	Test Group 
	11	Train Group
	12	Test Group
	13	Test Group 
	14	Train Group
	15	Train Group
	16	Train Group
	17	Train Group
	18	Test Group 
	19	Train Group
	20	Test Group 
	21	Train Group
	22	Train Group
	23	Train Group
	24	Test Group 
	25	Train Group
	26	Train Group
	27	Train Group
	28	Train Group
	29	Train Group
	30	Train Group

Activity
   a)	"WALKING"
   b)	"WALKING_UPSTAIRS"
   c)	"WALKING_DOWNSTAIRS"
   d)	"SITTING"
   e)	"STANDING"
   f)	"LAYING"

time_BodyAcc_mean()_X
	Mean of Body Accuracy of X in Time domain

time_BodyAcc_mean()_Y
	Mean of Body Accuracy of Y in Time domain

time_BodyAcc_mean()_Z
	Mean of Body Accuracy of Z in Time domain

time_GravityAcc_mean()_X
	Mean of Gravity Accuracy of X in Time domain

time_GravityAcc_mean()_Y
	Mean of Gravity Accuracy of Y in Time domain

time_GravityAcc_mean()_Z
	Mean of Gravity Accuracy of Z in Time domain

time_BodyAccJerk_mean()_X
	Mean of Body Accuracy Jerk of X in Time domain

time_BodyAccJerk_mean()_Y
	Mean of Body Accuracy Jerk of Y in Time domain

time_BodyAccJerk_mean()_Z
	Mean of Body Accuracy Jerk of Z in Time domain

time_BodyGyro_mean()_X
	Mean of Body Gyroscope of X in Time domain

time_BodyGyro_mean()_Y
	Mean of Body Gyroscope of Y in Time domain

time_BodyGyro_mean()_Z
	Mean of Body Gyroscope of Z in Time domain

time_BodyGyroJerk_mean()_X
	Mean of Body Gyroscope Jerk of X in Time domain

time_BodyGyroJerk_mean()_Y
	Mean of Body Gyroscope Jerk of Y in Time domain

time_BodyGyroJerk_mean()_Z
	Mean of Body Gyroscope Jerk of Z in Time domain

freq_BodyAcc_mean()_X
	Mean of Body Accuracy of X in Frequency domain

freq_BodyAcc_mean()_Y
	Mean of Body Accuracy of Y in Frequency domain

freq_BodyAcc_mean()_Z
	Mean of Body Accuracy of Z in Frequency domain

freq_BodyAccJerk_mean()_X
	Mean of Body Accuracy Jerk of X in Frequency domain

freq_BodyAccJerk_mean()_Y
	Mean of Body Accuracy Jerk of Y in Frequency domain

freq_BodyAccJerk_mean()_Z
	Mean of Body Accuracy Jerk of Z in Frequency domain

freq_BodyGyro_mean()_X
	Mean of Body Gyroscope of X in Frequency domain

freq_BodyGyro_mean()_Y
	Mean of Body Gyroscope of Y in Frequency domain

freq_BodyGyro_mean()_Z
	Mean of Body Gyroscope of Z in Frequency domain

time_BodyAcc_std()_X
	Standard Deviation of Body Accuracy of X in Time domain

time_BodyAcc_std()_Y
	Standard Deviation of Body Accuracy of Y in Time domain

time_BodyAcc_std()_Z
	Standard Deviation of Body Accuracy of Z in Time domain

time_GravityAcc_std()_X
	Standard Deviation of Gravity Accuracy of X in Time domain

time_GravityAcc_std()_Y
	Standard Deviation of Gravity Accuracy of Y in Time domain

time_GravityAcc_std()_Z
	Standard Deviation of Gravity Accuracy of Z in Time domain

time_BodyAccJerk_std()_X
	Standard Deviation of Gravity Accuracy Jerk of X in Time domain

time_BodyAccJerk_std()_Y
	Standard Deviation of Gravity Accuracy Jerk of Y in Time domain

time_BodyAccJerk_std()_Z
	Standard Deviation of Gravity Accuracy Jerk of Z in Time domain

time_BodyGyro_std()_X
	Standard Deviation of Body Gyroscope of X in Time domain

time_BodyGyro_std()_Y
	Standard Deviation of Body Gyroscope of Y in Time domain

time_BodyGyro_std()_Z
	Standard Deviation of Body Gyroscope of Z in Time domain

time_BodyGyroJerk_std()_X
	Standard Deviation of Body Gyroscope Jerk of X in Time domain

time_BodyGyroJerk_std()_Y
	Standard Deviation of Body Gyroscope Jerk of Y in Time domain

time_BodyGyroJerk_std()_Z
	Standard Deviation of Body Gyroscope Jerk of Z in Time domain

freq_BodyAcc_std()_X
	Standard Deviation of Body Accuracy of X in Frequency domain

freq_BodyAcc_std()_Y
	Standard Deviation of Body Accuracy of Y in Frequency domain

freq_BodyAcc_std()_Z
	Standard Deviation of Body Accuracy of Z in Frequency domain

freq_BodyAccJerk_std()_X
	Standard Deviation of Body Accuracy Jerk of X in Frequency domain

freq_BodyAccJerk_std()_Y
	Standard Deviation of Body Accuracy Jerk of Y in Frequency domain

freq_BodyAccJerk_std()_Z
	Standard Deviation of Body Accuracy Jerk of Z in Frequency domain

freq_BodyGyro_std()_X
	Standard Deviation of Body Gyroscope of X in Frequency domain
	
freq_BodyGyro_std()_Y
	Standard Deviation of Body Gyroscope of Y in Frequency domain

freq_BodyGyro_std()_Z
	Standard Deviation of Body Gyroscope of Z in Frequency domain
   
  
   
   
==================================================================
Variables Estimated from the Device signals.
==================================================================   
   
	a) mean(): Mean value
	b) std(): Standard deviation
	c) mad(): Median absolute deviation 
	d) max(): Largest value in array
	e) min(): Smallest value in array
	f) sma(): Signal magnitude area
	g) energy(): Energy measure. Sum of the squares divided by the number of values
	h) iqr(): Interquartile range 
	i) entropy(): Signal entropy
	j) arCoeff(): Autorregresion coefficients with Burg order equal to 4
	k) correlation(): correlation coefficient between two signals
	l) maxInds(): index of the frequency component with largest magnitude
	m) meanFreq(): Weighted average of the frequency components to obtain a mean frequency
	n) skewness(): skewness of the frequency domain signal 
	o) kurtosis(): kurtosis of the frequency domain signal 
	p) bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
	q) angle(): Angle between to vectors.

	Additional vectors obtained by averaging the signals in a signal 
	window sample. These are used on the angle() variable:

	r) gravityMean
	s) tBodyAccMean
	t) tBodyAccJerkMean
	u) tBodyGyroMean
	w) tBodyGyroJerkMean
   
==================================================================
Total Variables Name for Columns * Features 
================================================================== 

	1	tBodyAcc_mean()_X
	2	tBodyAcc_mean()_Y
	3	tBodyAcc_mean()_Z
	4	tBodyAcc_std()_X
	5	tBodyAcc_std()_Y
	6	tBodyAcc_std()_Z
	7	tBodyAcc_mad()_X
	8	tBodyAcc_mad()_Y
	9	tBodyAcc_mad()_Z
	10	tBodyAcc_max()_X
	11	tBodyAcc_max()_Y
	12	tBodyAcc_max()_Z
	13	tBodyAcc_min()_X
	14	tBodyAcc_min()_Y
	15	tBodyAcc_min()_Z
	16	tBodyAcc_sma()
	17	tBodyAcc_energy()_X
	18	tBodyAcc_energy()_Y
	19	tBodyAcc_energy()_Z
	20	tBodyAcc_iqr()_X
	21	tBodyAcc_iqr()_Y
	22	tBodyAcc_iqr()_Z
	23	tBodyAcc_entropy()_X
	24	tBodyAcc_entropy()_Y
	25	tBodyAcc_entropy()_Z
	26	tBodyAcc_arCoeff()_X.1
	27	tBodyAcc_arCoeff()_X.2
	28	tBodyAcc_arCoeff()_X.3
	29	tBodyAcc_arCoeff()_X.4
	30	tBodyAcc_arCoeff()_Y.1
	31	tBodyAcc_arCoeff()_Y.2
	32	tBodyAcc_arCoeff()_Y.3
	33	tBodyAcc_arCoeff()_Y.4
	34	tBodyAcc_arCoeff()_Z.1
	35	tBodyAcc_arCoeff()_Z.2
	36	tBodyAcc_arCoeff()_Z.3
	37	tBodyAcc_arCoeff()_Z.4
	38	tBodyAcc_correlation()_X.Y
	39	tBodyAcc_correlation()_X.Z
	40	tBodyAcc_correlation()_Y.Z
	41	tGravityAcc_mean()_X
	42	tGravityAcc_mean()_Y
	43	tGravityAcc_mean()_Z
	44	tGravityAcc_std()_X
	45	tGravityAcc_std()_Y
	46	tGravityAcc_std()_Z
	47	tGravityAcc_mad()_X
	48	tGravityAcc_mad()_Y
	49	tGravityAcc_mad()_Z
	50	tGravityAcc_max()_X
	51	tGravityAcc_max()_Y
	52	tGravityAcc_max()_Z
	53	tGravityAcc_min()_X
	54	tGravityAcc_min()_Y
	55	tGravityAcc_min()_Z
	56	tGravityAcc_sma()
	57	tGravityAcc_energy()_X
	58	tGravityAcc_energy()_Y
	59	tGravityAcc_energy()_Z
	60	tGravityAcc_iqr()_X
	61	tGravityAcc_iqr()_Y
	62	tGravityAcc_iqr()_Z
	63	tGravityAcc_entropy()_X
	64	tGravityAcc_entropy()_Y
	65	tGravityAcc_entropy()_Z
	66	tGravityAcc_arCoeff()_X.1
	67	tGravityAcc_arCoeff()_X.2
	68	tGravityAcc_arCoeff()_X.3
	69	tGravityAcc_arCoeff()_X.4
	70	tGravityAcc_arCoeff()_Y.1
	71	tGravityAcc_arCoeff()_Y.2
	72	tGravityAcc_arCoeff()_Y.3
	73	tGravityAcc_arCoeff()_Y.4
	74	tGravityAcc_arCoeff()_Z.1
	75	tGravityAcc_arCoeff()_Z.2
	76	tGravityAcc_arCoeff()_Z.3
	77	tGravityAcc_arCoeff()_Z.4
	78	tGravityAcc_correlation()_X.Y
	79	tGravityAcc_correlation()_X.Z
	80	tGravityAcc_correlation()_Y.Z
	81	tBodyAccJerk_mean()_X
	82	tBodyAccJerk_mean()_Y
	83	tBodyAccJerk_mean()_Z
	84	tBodyAccJerk_std()_X
	85	tBodyAccJerk_std()_Y
	86	tBodyAccJerk_std()_Z
	87	tBodyAccJerk_mad()_X
	88	tBodyAccJerk_mad()_Y
	89	tBodyAccJerk_mad()_Z
	90	tBodyAccJerk_max()_X
	91	tBodyAccJerk_max()_Y
	92	tBodyAccJerk_max()_Z
	93	tBodyAccJerk_min()_X
	94	tBodyAccJerk_min()_Y
	95	tBodyAccJerk_min()_Z
	96	tBodyAccJerk_sma()
	97	tBodyAccJerk_energy()_X
	98	tBodyAccJerk_energy()_Y
	99	tBodyAccJerk_energy()_Z
	100	tBodyAccJerk_iqr()_X
	101	tBodyAccJerk_iqr()_Y
	102	tBodyAccJerk_iqr()_Z
	103	tBodyAccJerk_entropy()_X
	104	tBodyAccJerk_entropy()_Y
	105	tBodyAccJerk_entropy()_Z
	106	tBodyAccJerk_arCoeff()_X.1
	107	tBodyAccJerk_arCoeff()_X.2
	108	tBodyAccJerk_arCoeff()_X.3
	109	tBodyAccJerk_arCoeff()_X.4
	110	tBodyAccJerk_arCoeff()_Y.1
	111	tBodyAccJerk_arCoeff()_Y.2
	112	tBodyAccJerk_arCoeff()_Y.3
	113	tBodyAccJerk_arCoeff()_Y.4
	114	tBodyAccJerk_arCoeff()_Z.1
	115	tBodyAccJerk_arCoeff()_Z.2
	116	tBodyAccJerk_arCoeff()_Z.3
	117	tBodyAccJerk_arCoeff()_Z.4
	118	tBodyAccJerk_correlation()_X.Y
	119	tBodyAccJerk_correlation()_X.Z
	120	tBodyAccJerk_correlation()_Y.Z
	121	tBodyGyro_mean()_X
	122	tBodyGyro_mean()_Y
	123	tBodyGyro_mean()_Z
	124	tBodyGyro_std()_X
	125	tBodyGyro_std()_Y
	126	tBodyGyro_std()_Z
	127	tBodyGyro_mad()_X
	128	tBodyGyro_mad()_Y
	129	tBodyGyro_mad()_Z
	130	tBodyGyro_max()_X
	131	tBodyGyro_max()_Y
	132	tBodyGyro_max()_Z
	133	tBodyGyro_min()_X
	134	tBodyGyro_min()_Y
	135	tBodyGyro_min()_Z
	136	tBodyGyro_sma()
	137	tBodyGyro_energy()_X
	138	tBodyGyro_energy()_Y
	139	tBodyGyro_energy()_Z
	140	tBodyGyro_iqr()_X
	141	tBodyGyro_iqr()_Y
	142	tBodyGyro_iqr()_Z
	143	tBodyGyro_entropy()_X
	144	tBodyGyro_entropy()_Y
	145	tBodyGyro_entropy()_Z
	146	tBodyGyro_arCoeff()_X.1
	147	tBodyGyro_arCoeff()_X.2
	148	tBodyGyro_arCoeff()_X.3
	149	tBodyGyro_arCoeff()_X.4
	150	tBodyGyro_arCoeff()_Y.1
	151	tBodyGyro_arCoeff()_Y.2
	152	tBodyGyro_arCoeff()_Y.3
	153	tBodyGyro_arCoeff()_Y.4
	154	tBodyGyro_arCoeff()_Z.1
	155	tBodyGyro_arCoeff()_Z.2
	156	tBodyGyro_arCoeff()_Z.3
	157	tBodyGyro_arCoeff()_Z.4
	158	tBodyGyro_correlation()_X.Y
	159	tBodyGyro_correlation()_X.Z
	160	tBodyGyro_correlation()_Y.Z
	161	tBodyGyroJerk_mean()_X
	162	tBodyGyroJerk_mean()_Y
	163	tBodyGyroJerk_mean()_Z
	164	tBodyGyroJerk_std()_X
	165	tBodyGyroJerk_std()_Y
	166	tBodyGyroJerk_std()_Z
	167	tBodyGyroJerk_mad()_X
	168	tBodyGyroJerk_mad()_Y
	169	tBodyGyroJerk_mad()_Z
	170	tBodyGyroJerk_max()_X
	171	tBodyGyroJerk_max()_Y
	172	tBodyGyroJerk_max()_Z
	173	tBodyGyroJerk_min()_X
	174	tBodyGyroJerk_min()_Y
	175	tBodyGyroJerk_min()_Z
	176	tBodyGyroJerk_sma()
	177	tBodyGyroJerk_energy()_X
	178	tBodyGyroJerk_energy()_Y
	179	tBodyGyroJerk_energy()_Z
	180	tBodyGyroJerk_iqr()_X
	181	tBodyGyroJerk_iqr()_Y
	182	tBodyGyroJerk_iqr()_Z
	183	tBodyGyroJerk_entropy()_X
	184	tBodyGyroJerk_entropy()_Y
	185	tBodyGyroJerk_entropy()_Z
	186	tBodyGyroJerk_arCoeff()_X.1
	187	tBodyGyroJerk_arCoeff()_X.2
	188	tBodyGyroJerk_arCoeff()_X.3
	189	tBodyGyroJerk_arCoeff()_X.4
	190	tBodyGyroJerk_arCoeff()_Y.1
	191	tBodyGyroJerk_arCoeff()_Y.2
	192	tBodyGyroJerk_arCoeff()_Y.3
	193	tBodyGyroJerk_arCoeff()_Y.4
	194	tBodyGyroJerk_arCoeff()_Z.1
	195	tBodyGyroJerk_arCoeff()_Z.2
	196	tBodyGyroJerk_arCoeff()_Z.3
	197	tBodyGyroJerk_arCoeff()_Z.4
	198	tBodyGyroJerk_correlation()_X.Y
	199	tBodyGyroJerk_correlation()_X.Z
	200	tBodyGyroJerk_correlation()_Y.Z
	201	tBodyAccMag_mean()
	202	tBodyAccMag_std()
	203	tBodyAccMag_mad()
	204	tBodyAccMag_max()
	205	tBodyAccMag_min()
	206	tBodyAccMag_sma()
	207	tBodyAccMag_energy()
	208	tBodyAccMag_iqr()
	209	tBodyAccMag_entropy()
	210	tBodyAccMag_arCoeff()1
	211	tBodyAccMag_arCoeff()2
	212	tBodyAccMag_arCoeff()3
	213	tBodyAccMag_arCoeff()4
	214	tGravityAccMag_mean()
	215	tGravityAccMag_std()
	216	tGravityAccMag_mad()
	217	tGravityAccMag_max()
	218	tGravityAccMag_min()
	219	tGravityAccMag_sma()
	220	tGravityAccMag_energy()
	221	tGravityAccMag_iqr()
	222	tGravityAccMag_entropy()
	223	tGravityAccMag_arCoeff()1
	224	tGravityAccMag_arCoeff()2
	225	tGravityAccMag_arCoeff()3
	226	tGravityAccMag_arCoeff()4
	227	tBodyAccJerkMag_mean()
	228	tBodyAccJerkMag_std()
	229	tBodyAccJerkMag_mad()
	230	tBodyAccJerkMag_max()
	231	tBodyAccJerkMag_min()
	232	tBodyAccJerkMag_sma()
	233	tBodyAccJerkMag_energy()
	234	tBodyAccJerkMag_iqr()
	235	tBodyAccJerkMag_entropy()
	236	tBodyAccJerkMag_arCoeff()1
	237	tBodyAccJerkMag_arCoeff()2
	238	tBodyAccJerkMag_arCoeff()3
	239	tBodyAccJerkMag_arCoeff()4
	240	tBodyGyroMag_mean()
	241	tBodyGyroMag_std()
	242	tBodyGyroMag_mad()
	243	tBodyGyroMag_max()
	244	tBodyGyroMag_min()
	245	tBodyGyroMag_sma()
	246	tBodyGyroMag_energy()
	247	tBodyGyroMag_iqr()
	248	tBodyGyroMag_entropy()
	249	tBodyGyroMag_arCoeff()1
	250	tBodyGyroMag_arCoeff()2
	251	tBodyGyroMag_arCoeff()3
	252	tBodyGyroMag_arCoeff()4
	253	tBodyGyroJerkMag_mean()
	254	tBodyGyroJerkMag_std()
	255	tBodyGyroJerkMag_mad()
	256	tBodyGyroJerkMag_max()
	257	tBodyGyroJerkMag_min()
	258	tBodyGyroJerkMag_sma()
	259	tBodyGyroJerkMag_energy()
	260	tBodyGyroJerkMag_iqr()
	261	tBodyGyroJerkMag_entropy()
	262	tBodyGyroJerkMag_arCoeff()1
	263	tBodyGyroJerkMag_arCoeff()2
	264	tBodyGyroJerkMag_arCoeff()3
	265	tBodyGyroJerkMag_arCoeff()4
	266	fBodyAcc_mean()_X
	267	fBodyAcc_mean()_Y
	268	fBodyAcc_mean()_Z
	269	fBodyAcc_std()_X
	270	fBodyAcc_std()_Y
	271	fBodyAcc_std()_Z
	272	fBodyAcc_mad()_X
	273	fBodyAcc_mad()_Y
	274	fBodyAcc_mad()_Z
	275	fBodyAcc_max()_X
	276	fBodyAcc_max()_Y
	277	fBodyAcc_max()_Z
	278	fBodyAcc_min()_X
	279	fBodyAcc_min()_Y
	280	fBodyAcc_min()_Z
	281	fBodyAcc_sma()
	282	fBodyAcc_energy()_X
	283	fBodyAcc_energy()_Y
	284	fBodyAcc_energy()_Z
	285	fBodyAcc_iqr()_X
	286	fBodyAcc_iqr()_Y
	287	fBodyAcc_iqr()_Z
	288	fBodyAcc_entropy()_X
	289	fBodyAcc_entropy()_Y
	290	fBodyAcc_entropy()_Z
	291	fBodyAcc_maxInds_X
	292	fBodyAcc_maxInds_Y
	293	fBodyAcc_maxInds_Z
	294	fBodyAcc_meanFreq()_X
	295	fBodyAcc_meanFreq()_Y
	296	fBodyAcc_meanFreq()_Z
	297	fBodyAcc_skewness()_X
	298	fBodyAcc_kurtosis()_X
	299	fBodyAcc_skewness()_Y
	300	fBodyAcc_kurtosis()_Y
	301	fBodyAcc_skewness()_Z
	302	fBodyAcc_kurtosis()_Z
	303	fBodyAcc_bandsEnergy()_1.8
	304	fBodyAcc_bandsEnergy()_9.16
	305	fBodyAcc_bandsEnergy()_17.24
	306	fBodyAcc_bandsEnergy()_25.32
	307	fBodyAcc_bandsEnergy()_33.40
	308	fBodyAcc_bandsEnergy()_41.48
	309	fBodyAcc_bandsEnergy()_49.56
	310	fBodyAcc_bandsEnergy()_57.64
	311	fBodyAcc_bandsEnergy()_1.16
	312	fBodyAcc_bandsEnergy()_17.32
	313	fBodyAcc_bandsEnergy()_33.48
	314	fBodyAcc_bandsEnergy()_49.64
	315	fBodyAcc_bandsEnergy()_1.24
	316	fBodyAcc_bandsEnergy()_25.48
	317	fBodyAcc_bandsEnergy()_1.8
	318	fBodyAcc_bandsEnergy()_9.16
	319	fBodyAcc_bandsEnergy()_17.24
	320	fBodyAcc_bandsEnergy()_25.32
	321	fBodyAcc_bandsEnergy()_33.40
	322	fBodyAcc_bandsEnergy()_41.48
	323	fBodyAcc_bandsEnergy()_49.56
	324	fBodyAcc_bandsEnergy()_57.64
	325	fBodyAcc_bandsEnergy()_1.16
	326	fBodyAcc_bandsEnergy()_17.32
	327	fBodyAcc_bandsEnergy()_33.48
	328	fBodyAcc_bandsEnergy()_49.64
	329	fBodyAcc_bandsEnergy()_1.24
	330	fBodyAcc_bandsEnergy()_25.48
	331	fBodyAcc_bandsEnergy()_1.8
	332	fBodyAcc_bandsEnergy()_9.16
	333	fBodyAcc_bandsEnergy()_17.24
	334	fBodyAcc_bandsEnergy()_25.32
	335	fBodyAcc_bandsEnergy()_33.40
	336	fBodyAcc_bandsEnergy()_41.48
	337	fBodyAcc_bandsEnergy()_49.56
	338	fBodyAcc_bandsEnergy()_57.64
	339	fBodyAcc_bandsEnergy()_1.16
	340	fBodyAcc_bandsEnergy()_17.32
	341	fBodyAcc_bandsEnergy()_33.48
	342	fBodyAcc_bandsEnergy()_49.64
	343	fBodyAcc_bandsEnergy()_1.24
	344	fBodyAcc_bandsEnergy()_25.48
	345	fBodyAccJerk_mean()_X
	346	fBodyAccJerk_mean()_Y
	347	fBodyAccJerk_mean()_Z
	348	fBodyAccJerk_std()_X
	349	fBodyAccJerk_std()_Y
	350	fBodyAccJerk_std()_Z
	351	fBodyAccJerk_mad()_X
	352	fBodyAccJerk_mad()_Y
	353	fBodyAccJerk_mad()_Z
	354	fBodyAccJerk_max()_X
	355	fBodyAccJerk_max()_Y
	356	fBodyAccJerk_max()_Z
	357	fBodyAccJerk_min()_X
	358	fBodyAccJerk_min()_Y
	359	fBodyAccJerk_min()_Z
	360	fBodyAccJerk_sma()
	361	fBodyAccJerk_energy()_X
	362	fBodyAccJerk_energy()_Y
	363	fBodyAccJerk_energy()_Z
	364	fBodyAccJerk_iqr()_X
	365	fBodyAccJerk_iqr()_Y
	366	fBodyAccJerk_iqr()_Z
	367	fBodyAccJerk_entropy()_X
	368	fBodyAccJerk_entropy()_Y
	369	fBodyAccJerk_entropy()_Z
	370	fBodyAccJerk_maxInds_X
	371	fBodyAccJerk_maxInds_Y
	372	fBodyAccJerk_maxInds_Z
	373	fBodyAccJerk_meanFreq()_X
	374	fBodyAccJerk_meanFreq()_Y
	375	fBodyAccJerk_meanFreq()_Z
	376	fBodyAccJerk_skewness()_X
	377	fBodyAccJerk_kurtosis()_X
	378	fBodyAccJerk_skewness()_Y
	379	fBodyAccJerk_kurtosis()_Y
	380	fBodyAccJerk_skewness()_Z
	381	fBodyAccJerk_kurtosis()_Z
	382	fBodyAccJerk_bandsEnergy()_1.8
	383	fBodyAccJerk_bandsEnergy()_9.16
	384	fBodyAccJerk_bandsEnergy()_17.24
	385	fBodyAccJerk_bandsEnergy()_25.32
	386	fBodyAccJerk_bandsEnergy()_33.40
	387	fBodyAccJerk_bandsEnergy()_41.48
	388	fBodyAccJerk_bandsEnergy()_49.56
	389	fBodyAccJerk_bandsEnergy()_57.64
	390	fBodyAccJerk_bandsEnergy()_1.16
	391	fBodyAccJerk_bandsEnergy()_17.32
	392	fBodyAccJerk_bandsEnergy()_33.48
	393	fBodyAccJerk_bandsEnergy()_49.64
	394	fBodyAccJerk_bandsEnergy()_1.24
	395	fBodyAccJerk_bandsEnergy()_25.48
	396	fBodyAccJerk_bandsEnergy()_1.8
	397	fBodyAccJerk_bandsEnergy()_9.16
	398	fBodyAccJerk_bandsEnergy()_17.24
	399	fBodyAccJerk_bandsEnergy()_25.32
	400	fBodyAccJerk_bandsEnergy()_33.40
	401	fBodyAccJerk_bandsEnergy()_41.48
	402	fBodyAccJerk_bandsEnergy()_49.56
	403	fBodyAccJerk_bandsEnergy()_57.64
	404	fBodyAccJerk_bandsEnergy()_1.16
	405	fBodyAccJerk_bandsEnergy()_17.32
	406	fBodyAccJerk_bandsEnergy()_33.48
	407	fBodyAccJerk_bandsEnergy()_49.64
	408	fBodyAccJerk_bandsEnergy()_1.24
	409	fBodyAccJerk_bandsEnergy()_25.48
	410	fBodyAccJerk_bandsEnergy()_1.8
	411	fBodyAccJerk_bandsEnergy()_9.16
	412	fBodyAccJerk_bandsEnergy()_17.24
	413	fBodyAccJerk_bandsEnergy()_25.32
	414	fBodyAccJerk_bandsEnergy()_33.40
	415	fBodyAccJerk_bandsEnergy()_41.48
	416	fBodyAccJerk_bandsEnergy()_49.56
	417	fBodyAccJerk_bandsEnergy()_57.64
	418	fBodyAccJerk_bandsEnergy()_1.16
	419	fBodyAccJerk_bandsEnergy()_17.32
	420	fBodyAccJerk_bandsEnergy()_33.48
	421	fBodyAccJerk_bandsEnergy()_49.64
	422	fBodyAccJerk_bandsEnergy()_1.24
	423	fBodyAccJerk_bandsEnergy()_25.48
	424	fBodyGyro_mean()_X
	425	fBodyGyro_mean()_Y
	426	fBodyGyro_mean()_Z
	427	fBodyGyro_std()_X
	428	fBodyGyro_std()_Y
	429	fBodyGyro_std()_Z
	430	fBodyGyro_mad()_X
	431	fBodyGyro_mad()_Y
	432	fBodyGyro_mad()_Z
	433	fBodyGyro_max()_X
	434	fBodyGyro_max()_Y
	435	fBodyGyro_max()_Z
	436	fBodyGyro_min()_X
	437	fBodyGyro_min()_Y
	438	fBodyGyro_min()_Z
	439	fBodyGyro_sma()
	440	fBodyGyro_energy()_X
	441	fBodyGyro_energy()_Y
	442	fBodyGyro_energy()_Z
	443	fBodyGyro_iqr()_X
	444	fBodyGyro_iqr()_Y
	445	fBodyGyro_iqr()_Z
	446	fBodyGyro_entropy()_X
	447	fBodyGyro_entropy()_Y
	448	fBodyGyro_entropy()_Z
	449	fBodyGyro_maxInds_X
	450	fBodyGyro_maxInds_Y
	451	fBodyGyro_maxInds_Z
	452	fBodyGyro_meanFreq()_X
	453	fBodyGyro_meanFreq()_Y
	454	fBodyGyro_meanFreq()_Z
	455	fBodyGyro_skewness()_X
	456	fBodyGyro_kurtosis()_X
	457	fBodyGyro_skewness()_Y
	458	fBodyGyro_kurtosis()_Y
	459	fBodyGyro_skewness()_Z
	460	fBodyGyro_kurtosis()_Z
	461	fBodyGyro_bandsEnergy()_1.8
	462	fBodyGyro_bandsEnergy()_9.16
	463	fBodyGyro_bandsEnergy()_17.24
	464	fBodyGyro_bandsEnergy()_25.32
	465	fBodyGyro_bandsEnergy()_33.40
	466	fBodyGyro_bandsEnergy()_41.48
	467	fBodyGyro_bandsEnergy()_49.56
	468	fBodyGyro_bandsEnergy()_57.64
	469	fBodyGyro_bandsEnergy()_1.16
	470	fBodyGyro_bandsEnergy()_17.32
	471	fBodyGyro_bandsEnergy()_33.48
	472	fBodyGyro_bandsEnergy()_49.64
	473	fBodyGyro_bandsEnergy()_1.24
	474	fBodyGyro_bandsEnergy()_25.48
	475	fBodyGyro_bandsEnergy()_1.8
	476	fBodyGyro_bandsEnergy()_9.16
	477	fBodyGyro_bandsEnergy()_17.24
	478	fBodyGyro_bandsEnergy()_25.32
	479	fBodyGyro_bandsEnergy()_33.40
	480	fBodyGyro_bandsEnergy()_41.48
	481	fBodyGyro_bandsEnergy()_49.56
	482	fBodyGyro_bandsEnergy()_57.64
	483	fBodyGyro_bandsEnergy()_1.16
	484	fBodyGyro_bandsEnergy()_17.32
	485	fBodyGyro_bandsEnergy()_33.48
	486	fBodyGyro_bandsEnergy()_49.64
	487	fBodyGyro_bandsEnergy()_1.24
	488	fBodyGyro_bandsEnergy()_25.48
	489	fBodyGyro_bandsEnergy()_1.8
	490	fBodyGyro_bandsEnergy()_9.16
	491	fBodyGyro_bandsEnergy()_17.24
	492	fBodyGyro_bandsEnergy()_25.32
	493	fBodyGyro_bandsEnergy()_33.40
	494	fBodyGyro_bandsEnergy()_41.48
	495	fBodyGyro_bandsEnergy()_49.56
	496	fBodyGyro_bandsEnergy()_57.64
	497	fBodyGyro_bandsEnergy()_1.16
	498	fBodyGyro_bandsEnergy()_17.32
	499	fBodyGyro_bandsEnergy()_33.48
	500	fBodyGyro_bandsEnergy()_49.64
	501	fBodyGyro_bandsEnergy()_1.24
	502	fBodyGyro_bandsEnergy()_25.48
	503	fBodyAccMag_mean()
	504	fBodyAccMag_std()
	505	fBodyAccMag_mad()
	506	fBodyAccMag_max()
	507	fBodyAccMag_min()
	508	fBodyAccMag_sma()
	509	fBodyAccMag_energy()
	510	fBodyAccMag_iqr()
	511	fBodyAccMag_entropy()
	512	fBodyAccMag_maxInds
	513	fBodyAccMag_meanFreq()
	514	fBodyAccMag_skewness()
	515	fBodyAccMag_kurtosis()
	516	fBodyBodyAccJerkMag_mean()
	517	fBodyBodyAccJerkMag_std()
	518	fBodyBodyAccJerkMag_mad()
	519	fBodyBodyAccJerkMag_max()
	520	fBodyBodyAccJerkMag_min()
	521	fBodyBodyAccJerkMag_sma()
	522	fBodyBodyAccJerkMag_energy()
	523	fBodyBodyAccJerkMag_iqr()
	524	fBodyBodyAccJerkMag_entropy()
	525	fBodyBodyAccJerkMag_maxInds
	526	fBodyBodyAccJerkMag_meanFreq()
	527	fBodyBodyAccJerkMag_skewness()
	528	fBodyBodyAccJerkMag_kurtosis()
	529	fBodyBodyGyroMag_mean()
	530	fBodyBodyGyroMag_std()
	531	fBodyBodyGyroMag_mad()
	532	fBodyBodyGyroMag_max()
	533	fBodyBodyGyroMag_min()
	534	fBodyBodyGyroMag_sma()
	535	fBodyBodyGyroMag_energy()
	536	fBodyBodyGyroMag_iqr()
	537	fBodyBodyGyroMag_entropy()
	538	fBodyBodyGyroMag_maxInds
	539	fBodyBodyGyroMag_meanFreq()
	540	fBodyBodyGyroMag_skewness()
	541	fBodyBodyGyroMag_kurtosis()
	542	fBodyBodyGyroJerkMag_mean()
	543	fBodyBodyGyroJerkMag_std()
	544	fBodyBodyGyroJerkMag_mad()
	545	fBodyBodyGyroJerkMag_max()
	546	fBodyBodyGyroJerkMag_min()
	547	fBodyBodyGyroJerkMag_sma()
	548	fBodyBodyGyroJerkMag_energy()
	549	fBodyBodyGyroJerkMag_iqr()
	550	fBodyBodyGyroJerkMag_entropy()
	551	fBodyBodyGyroJerkMag_maxInds
	552	fBodyBodyGyroJerkMag_meanFreq()
	553	fBodyBodyGyroJerkMag_skewness()
	554	fBodyBodyGyroJerkMag_kurtosis()
	555	angle(tBodyAccMean.gravity)
	556	angle(tBodyAccJerkMean).gravityMean)
	557	angle(tBodyGyroMean.gravityMean)
	558	angle(tBodyGyroJerkMean.gravityMean)
	559	angle(X.gravityMean)
	560	angle(Y.gravityMean)
	561	angle(Z.gravityMean)