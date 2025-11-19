%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Resistive circuit analisis with nodal potential method and equivalent
% circuits
%
% Author: Dr. Zsolt Szabó
% Pázmány Péter Catholic University
%
%
% These softwares are "as-are" and carries no warranty.  
% They can be used under GNU licence without restriction for research and education purposes. 
% Bug reports: Szabó Zsolt, szabo.zsolt@itk.ppke.hu
%
% Updated 11 September, 2025.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%input data
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Us = 3; %V
Is = 2; %A

R1 = 2;  %Ohm
R2 = 10; %Ohm
R3 = 5;  %Ohm
R4 = 20; %Ohm
R5 = 4;  %Ohm

RL = 15; %Ohm


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf("--------------\n");
fprintf("Us = %0.2f V, Is = %0.2f A, R1 = %0.2f Ohm, R2 = %0.2f Ohm, R3 = %0.2f Ohm, R4 = %0.2f Ohm, R5 = %0.2f Ohm, RL = %0.2f Ohm\n",Us,Is,R1,R2,R3,R4,R5,RL);
fprintf("--------------\n\n");

%1. A csomóponti potenciálok módszere
A = [1/R1+1/R2+1/RL -1/R2 -1/RL
     -1/R2 1/R2+1/R3+1/R4 -1/R4
     -1/RL -1/R4 1/RL+1/R4+1/R5];

B = [Us/R1; 0; -Is];

Phi = A\B;

my_str = sprintf('A csomóponti potenciálok: phi_1 = %4.3f V, phi_2 = %4.3f V, phi_3 = %4.3f V.\n', Phi(1), Phi(2), Phi(3));
disp(my_str);

U_R1 = Us-Phi(1);
I_R1 = U_R1/R1;
P_R1 = U_R1*I_R1;

P_Us = -Us*I_R1;

U_R2 = Phi(1)-Phi(2);
I_R2 = U_R2/R2;
P_R2 = U_R2*I_R2;

U_R3 = -Phi(2);
I_R3 = U_R3/R3;
P_R3 = U_R3*I_R3;

U_R4 = Phi(2)-Phi(3);
I_R4 = U_R4/R4;
P_R4 = U_R4*I_R4;

U_R5 = -Phi(3);
I_R5 = U_R5/R5;
P_R5 = U_R5*I_R5;

P_Is = -U_R5*Is;

U_RL = Phi(1)-Phi(3);
I_RL = U_RL/RL;
P_RL = U_RL*I_RL;

fprintf('Us: Us = %4.3f V, I_Us = %4.3f A, P_Us = %4.3f W\n', Us, I_R1, P_Us);

fprintf('Is: U_Is = %4.3f V, Is = %4.3f A, P_Is = %4.3f W\n', U_R5, Is, P_Is);

fprintf('R1: U_R1 = %4.3f V, I_R1 = %4.3f A, P_R1 = %4.3f W\n', U_R1, I_R1, P_R1);

fprintf('R2: U_R2 = %4.3f V, I_R2 = %4.3f A, P_R2 = %4.3f W\n', U_R2, I_R2, P_R2);

fprintf('R3: U_R3 = %4.3f V, I_R3 = %4.3f A, P_R3 = %4.3f W\n', U_R3, I_R3, P_R3);

fprintf('R4: U_R4 = %4.3f V, I_R4 = %4.3f A, P_R4 = %4.3f W\n', U_R4, I_R4, P_R4);

fprintf('R5: U_R5 = %4.3f V, I_R5 = %4.3f A, P_R5 = %4.3f W\n', U_R5, I_R5, P_R5);

fprintf('RL: U_RL = %4.3f V, I_RL = %4.3f A, P_RL = %4.3f W\n\n', U_RL, I_RL, P_RL);

%2. A rövidzárási áram számítása
A_r = [1/R1+1/R2+1/R4+1/R5 -1/R2-1/R4
      -1/R2-1/R4 1/R2+1/R3+1/R4];

B_r = [Us/R1-Is; 0];

Phi_r = A_r\B_r;

fprintf('Rövidzár esetén a csomóponti potenciálok: phi_1_r = %4.3f V, phi_2_r = %4.3f V.\n\n', Phi_r(1), Phi_r(2));

U_R1_r = Us-Phi_r(1);
I_R1_r = U_R1_r/R1;

U_R2_r = Phi_r(2)-Phi_r(1);
I_R2_r = U_R2_r/R2;

I_RL_r = I_R1_r + I_R2_r;

fprintf('Rövidzár esetén: U_R1 = %4.3f V, I_R1 = %4.3f A, U_R2 = %4.3f V, I_R2 = %4.3f A.\n\n', U_R1_r, I_R1_r, U_R2_r, I_R2_r);

fprintf('A rövidzárási áram: I_RL_r = %4.3f A. \n\n', I_RL_r);

%3. A szakadási feszültség számítása
A_sz = [1/R1+1/R2 -1/R2 0
     -1/R2 1/R2+1/R3+1/R4 -1/R4
     0 -1/R4 1/R4+1/R5];

Phi_sz = A_sz\B;

fprintf('Szakadás esetén a csomóponti potenciálok: phi_1 = %4.3f V, phi_2 = %4.3f V, phi_3 = %4.3f V.\n\n', Phi_sz(1), Phi_sz(2), Phi_sz(3));

U_RL_sz = Phi_sz(1) - Phi_sz(3);

fprintf('A szakadási feszültség: U_RL_sz = %4.3f V. \n\n', U_RL_sz);

%4.Helyettesítő generátorok és teljesítmény illesztés 
%az eredő ellenállás számítása a források dezaktivizálásával
inv_Rcs = 1/R2+1/R3+1/R4;

Rab = R2*R3*inv_Rcs;
Rac = R2*R4*inv_Rcs;
Rbc = R3*R4*inv_Rcs;

fprintf('Csillag-háromszög átalakítás: Rab = %4.3f Ohm, Rac = %4.3f Ohm, Rbc = %4.3f Ohm. \n', Rab,Rac,Rbc);

Re_1ab = calcRePlus(R1,Rab);
Re_5bc = calcRePlus(R5,Rbc);
Re     = calcRePlus(Re_1ab+Re_5bc,Rac);

fprintf('Az eredő ellenállás: Re = %4.3f Ohm. \n', Re);

Re_1 = U_RL_sz/I_RL_r;

fprintf('Ellenőrzés, az eredő ellenállás: Re = U_RL_sz/I_RL_r = %4.3f Ohm. \n\n', Re_1);

%a maximális teljesítmény
P_max_N = Re*I_RL_r*I_RL_r/4;   %Norton helyettesítéssel
%P_max_T = U_RL_sz*U_RL_sz/Re/4; %Thevenin helyettesítéssel

fprintf('A terhelő ellenállás maximális teljesítménye: Pmax = %4.3f W. \n\n', P_max_N);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%két párhuzamosan kapcsolt ellenállás eredője
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Re_p = calcRePlus(Ra,Rb)
    Re_p = Ra*Rb/(Ra+Rb); 
end