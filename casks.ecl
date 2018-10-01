:- lib(lists).
:- lib(fd).
:- lib(fd_search).

%Q8

casks(Casks) :-

    N1 = [N1Nf, N1Ntq, N1Nhf, N1Noq, N1Ne],
    N2 = [N2Nf, N2Ntq, N2Nhf, N2Noq, N2Ne],
    N3 = [N3Nf, N3Ntq, N3Nhf, N3Noq, N3Ne],
    N4 = [N4Nf, N4Ntq, N4Nhf, N4Noq, N4Ne],
    N5 = [N5Nf, N5Ntq, N5Nhf, N5Noq, N5Ne],
    
    F = 100, Tq = 75, Hf = 50, Oq = 25, E = 0,
    
    N1Nf + N2Nf + N3Nf + N4Nf + N5Nf #= 9,
    N1Ntq + N2Ntq + N3Ntq + N4Ntq + N5Ntq #= 9,
    N1Nhf + N2Nhf + N3Nhf + N4Nhf + N5Nhf #= 9,
    N1Noq + N2Noq + N3Noq + N4Noq + N5Noq #= 9,
    N1Ne + N2Ne + N3Ne + N4Ne + N5Ne #= 9,
    
    N1Nf + N1Ntq + N1Nhf + N1Noq + N1Ne #= 9,
    N2Nf + N2Ntq + N2Nhf + N2Noq + N2Ne #= 9,
    N3Nf + N3Ntq + N3Nhf + N3Noq + N3Ne #= 9,
    N4Nf + N4Ntq + N4Nhf + N4Noq + N4Ne #= 9,
    N5Nf + N5Ntq + N5Nhf + N5Noq + N5Ne #= 9,
    
    N1Nf #>= 1, N1Ntq #>= 1, N1Nhf #>= 1, N1Noq #>= 1, N1Ne #>= 1,
    N2Nf #>= 1, N2Ntq #>= 1, N2Nhf #>= 1, N2Noq #>= 1, N2Ne #>= 1,
    N3Nf #>= 1, N3Ntq #>= 1, N3Nhf #>= 1, N3Noq #>= 1, N3Ne #>= 1,
    N4Nf #>= 1, N4Ntq #>= 1, N4Nhf #>= 1, N4Noq #>= 1, N4Ne #>= 1,
    N5Nf #>= 1, N5Ntq #>= 1, N5Nhf #>= 1, N5Noq #>= 1, N5Ne #>= 1,
    
    N1T = (N1Nf * 10000) + (N1Ntq * 1000) + (N1Nhf * 100) + (N1Noq * 10) + N1Ne,
    N2T = (N2Nf * 10000) + (N2Ntq * 1000) + (N2Nhf * 100) + (N2Noq * 10) + N2Ne,
    N3T = (N3Nf * 10000) + (N3Ntq * 1000) + (N3Nhf * 100) + (N3Noq * 10) + N3Ne,
    N4T = (N4Nf * 10000) + (N4Ntq * 1000) + (N4Nhf * 100) + (N4Noq * 10) + N4Ne,
    N5T = (N5Nf * 10000) + (N5Ntq * 1000) + (N5Nhf * 100) + (N5Noq * 10) + N5Ne,
    
    N1T ## N2T, N1T ## N3T, N1T ## N4T, N1T ## N5T,
    N2T ## N3T, N2T ## N4T, N2T ## N5T,
    N3T ## N4T, N3T ## N5T,
    N4T ## N5T,
    
    (N1Nf * F) + (N1Ntq * Tq) + (N1Nhf * Hf) + (N1Noq * Oq) #= W,
    (N2Nf * F) + (N2Ntq * Tq) + (N2Nhf * Hf) + (N2Noq * Oq) #= W,
    (N3Nf * F) + (N3Ntq * Tq) + (N3Nhf * Hf) + (N3Noq * Oq) #= W,
    (N4Nf * F) + (N4Ntq * Tq) + (N4Nhf * Hf) + (N4Noq * Oq) #= W,
    (N5Nf * F) + (N5Ntq * Tq) + (N5Nhf * Hf) + (N5Noq * Oq) #= W,
    
    labeling(N1),
    labeling(N2),
    labeling(N3),
    labeling(N4),
    labeling(N5),
    
    Casks = [N1, N2, N3, N4, N5].
