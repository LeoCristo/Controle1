clear all%limpa todas as variaveis do workspace
clc%limpa a tela

%Observação
%O matlab trabalha apenas com vetores e matrizes

num1 = [1 0 1]% numerador 1

den1 = [2 10 3 1]%denominador 1
 
g1 = tf(num1, den1)%funcao de transferencia 1

num2 = [10] % numerador  2


den2 = [10 3]%denominador 2

g2 = tf(num2, den2)%funcao de transferencia 2
%funções em serie
Ts = series(g1, g2)%Ts = g1*g2

%funções em paralelo

Tp = parallel(g1, g2)%Tp = g1+g2

%feedback negativo

Tf = feedback(g1, g2)%Bloco direto = g2, bloco realimentando g2, para feedback positivo usar -g2

%achando os polos e zeros
num3 = [2 0]

den3 = [1 4 3]

H1 = tf(num3, den3)

[z, p, k] = tf2zp(num3, den3)
%polos complexos
num4 = [1 0]

den4 = [1 2 5]

H2 = tf(num4, den4)

[z2, p2, k2] = tf2zp(num4, den4)

%Obtendo a função de transferência com os zeros, o ganho e os polos
k = 2

z = 0

p1 = -1+2i

p2 = -1-2i

[num, den] = zp2tf(z,[p1 p2],  k)

%Obtendo o numerador e o denominador com base na função de transferência

H = tf(num, den)

num = [1 0 3 1]

den = [1 2 0 5 4]

H = tf(num, den)

[num, den] = tfdata(H, 'v')

%Expandindo em frações parciais

num = [-4 8]

den = [1 6 8]

H = tf(num, den)

[r, p, q] = residue(num, den)

%Resposta ao impulso no Matlab

G = tf([2 0 3], [4 5 2 1])%ponto e virgula ; serve para não mostrar o resultado da operação na tela

impulse(G, 50); grid;

%Resposta ao Degrau

G = tf([2 0 3], [4 5 2 1]);

step(G,50);grid;


%resposta a entrada arbitraria


