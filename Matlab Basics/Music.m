function [] = Music()
    clear all
    % Frequency of notes
    C2 = 65.41;
    Cs2 = 69.3;
    D2 = 73.42;
    Ds2 = 77.78;
    E2 = 82.41;
    F2 = 87.31;
    Fs2 = 92.5;
    G2 = 98;
    Gs2 = 103.83;
    A2 = 110;
    As2 = 116.54;
    B2 = 123.47;
    
    C3 = 130.82;
    Cs3 = 138.59;
    D3 = 146.83;
    Ds3 = 155.56;
    E3 = 164.81;
    F3 = 174.61;
    Fs3 = 185;
    G3 = 196;
    Gs3 = 207.65;
    A3 = 220;
    As3 = 233.08;
    B3 = 246.94;
    
    C4 = 261.63;
    Cs4 = 277.18;
    D4 = 293.66;
    Ds4 = 311.13;
    E4 = 329.63;
    F4 = 349.23;
    Fs4 = 369.99;
    G4 = 392;
    Gs4 = 415.3;
    A4 = 440;           % A4 = 440 Hz
    As4 = 466.16;
    B4 = 493.88;
    
    C5 = 523.20;
    Cs5 = 554.37;
    D5 = 587.33;
    Ds5 = 622.20;
    E5 = 659.26;
    F5 = 698.46;
    Fs5 = 739.99;
    G5 = 783.99;
    Gs5 = 830.61;
    A5 = 880;
    As5 = 932.33;
    B5 = 987.77;
    
    C6 = 1046.5;
    Cs6 = 1108.73;
    D6 = 1174.66;
    Ds6 = 1244.51;
    E6 = 1318.51;
    F6 = 1396.91;
    Fs6 = 1479.98;
    G6 = 1567.98;
    Gs6 = 1661.22;
    A6 = 1760;
    As6 = 1864.66;
    B6 = 1975.53;

    % Sample sound (Fur Elise):
    %% bar 0
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    %% bar 1
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);

    generateSound(B4, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    %% bar 2
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(C4, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(A4, 0.20, 0);
    %% bar 3
    generateSound([B4; E2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(Gs3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(Gs4, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    %% bar 4
    generateSound([C5; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    %% bar 5
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);

    generateSound(B4, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    %% bar 6
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(C4, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(A4, 0.20, 0);
    %% bar 7
    generateSound([B4; E2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(Gs3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    %% bar 8
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    pause(0.20);
    %% bar 0
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    %% bar 1
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);

    generateSound(B4, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    %% bar 2
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(C4, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(A4, 0.20, 0);
    %% bar 3
    generateSound([B4; E2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(Gs3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(Gs4, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    %% bar 4
    generateSound([C5; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    %% bar 5
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);

    generateSound(B4, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    %% bar 6
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(C4, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(A4, 0.20, 0);
    %% bar 7
    generateSound([B4; E2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(Gs3, 0.20, 0);
    
    generateSound(D4, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    %% bar 9
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    %% bar 10
    generateSound([E5; C3], 0.20, 0);
    
    generateSound(G3, 0.20, 0);
    
    generateSound(C4, 0.20, 0);
    
    generateSound(G4, 0.20, 0);
    
    generateSound(F5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    %% bar 11
    generateSound([D5; B2], 0.20, 0);
    
    generateSound(G3, 0.20, 0);
    
    generateSound(B3, 0.20, 0);
    
    generateSound(F4, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    %% bar 12
    generateSound([C5; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    %% bar 13
    generateSound([B4; E2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    %% bar 14
    generateSound(E5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(E6, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    %% bar 15
    generateSound(E5, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    %% bar 16
    generateSound(E5, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    %% bar 17
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(C4, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(A4, 0.20, 0);
    %% bar 18
    generateSound([B4; E2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(Gs3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(Gs4, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    %% bar 19
    generateSound([C5; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    %% bar 20
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);

    generateSound(B4, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    %% bar 21
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(C4, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(A4, 0.20, 0);
    %% bar 22
    generateSound([B4; E2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(Gs3, 0.20, 0);
    
    generateSound(D4, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    %% bar 23
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    %% bar 10
    generateSound([E5; C3], 0.20, 0);
    
    generateSound(G3, 0.20, 0);
    
    generateSound(C4, 0.20, 0);
    
    generateSound(G4, 0.20, 0);
    
    generateSound(F5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    %% bar 11
    generateSound([D5; B2], 0.20, 0);
    
    generateSound(G3, 0.20, 0);
    
    generateSound(B3, 0.20, 0);
    
    generateSound(F4, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    %% bar 12
    generateSound([C5; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    %% bar 13
    generateSound([B4; E2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    %% bar 14
    generateSound(E5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(E6, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    %% bar 15
    generateSound(E5, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    %% bar 16
    generateSound(E5, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    %% bar 17
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(C4, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(A4, 0.20, 0);
    %% bar 18
    generateSound([B4; E2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(Gs3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(Gs4, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    %% bar 19
    generateSound([C5; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    %% bar 20
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);

    generateSound(B4, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    %% bar 21
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(C4, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(A4, 0.20, 0);
    %% bar 22
    generateSound([B4; E2], 0.20, 0);
    
    generateSound(D3, 0.20, 0);
    
    generateSound(Gs3, 0.20, 0);
    
    generateSound(D4, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
end

function [note, Fs] = generateSound(F, t, timePause)
    Fs=16000;
    Ts=1/Fs;
    
    duration = [0:Ts:t];
    note = sin(2*pi*F*duration);
    sound(note, Fs);
    pause(t + timePause);

end