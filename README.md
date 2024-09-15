# IHS-Block-analysis
The block analysis code (analysis.m) is compactable only with EEG data recorded using Intelligent Hearing System SmartEP. The code enables the user to access individual sweeps, which are used to calculate the averaged waveform. These individual waveforms can be further analyzed according to user requirements, such as filtering, sweep-wise analysis, artifact rejections, smoothing, etc. 

## **Recording parameters:**
    1. Data points: set to max (1024 - Smart EP or 4096 - Advanced research module)
    2. Averaging: Block averaging
    3. Block size: 2
    4. Number of sweeps: 500 (max) due to IHS hardware restriction
    (All other parameters are based on user needs)

## **Data export:**
    1. Block-wise data: Averaging -> Export block to ASCII file (Active)  
    2. Averaged data: Data -> Save as ASCII
The block-wise data is represented in ADC values, which need to be converted to microvolts using the formula [V = (ADC x Vref)/2^nbits]. 

However, since the Vref is unknown, it can be determined using known microvolt values from the averaged data by rearranging the equation: [Vref = ((volt x 1e5) x 2^nbits)/ADC].

