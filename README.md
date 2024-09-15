# IHS-Block-analysis
The code for block analysis for EEG data was recorded using Intelligent Hearing System SmartEP, where the user can access individual sweeps, which are used to calculate the averaged waveform. Those individual waveforms can be further analyzed based on user needs, such as filtering, sweep-wise analysis, artifact rejections, smoothing, etc. 

## **Recording parameters:**
    1. Data points: set to max (1024 - Smart EP or 4096 - Advanced research module)
    2. Averaging: Block averaging
    3. Block size: 2
    4. Number of sweeps: 500 (max) due to IHS hardware restriction
    (All other parameters are based on user needs)

## **Data export:**
    1. Block-wise data: Averaging -> Export block to ASCII file (Active)  
    2. Averaged data: Data -> Save as ASCII
The block-wise data expressed in ADC values, which needs to be converted into microvolts using the formula [V = (ADC x Vref)/2^nbits]. 

However, the Vref value is unknown and it can be calculated from known microvolt values available in averaged data by simply modifying the equation [Vref = ((volt x 1e5) x 2^nbits)/ADC].

