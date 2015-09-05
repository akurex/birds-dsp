	function [wav,dft] = leer(file)         % función leer usada para obtener las señales
    wav = wavread(file);                    % primer wavread
    if length(wav)<5e5                      %   caso: señal con pocas muestras
    wav = wav';                             
    wav = wav(1,:); % elimina el canal secundario
    wav = wav';
    wav = [wav; zeros(5e5-length(wav),1)];  %         se rellena con zeros
    dft = fft(wav);                         % se calcula el espectro frecuencial
    [b,a] = butter(2,[2e3,8e6]/500e6);      % se calculan coeficientes del filtro butterworth
    dft = filter(b,a,dft);                  % se aplica el filtro
    
    else
    [wav, fsa] = wavread(file,[1 5e5]);     %   caso: muestras mayor a 5x10^5, se recortan
    wav = wav';
    wav = wav(1,:); % elimina el canal secundario
    wav = wav';
    dft = fft(wav);                         % se calcula el espectro frecuencial
    [b,a] = butter(2,[2e3,8e6]/500e6);      % se calculan coeficientes del filtro butterworth
    dft = filter(b,a,dft);                  % se aplica el filtro
    end

