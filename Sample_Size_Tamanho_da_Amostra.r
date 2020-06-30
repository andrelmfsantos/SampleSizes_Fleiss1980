# Amostras ----------------------------------------------------------------------------------------
m = list()             # tamanho da amostra original da população 1
n1 = m                 # tamanho da amostra original da população 1
n2 = list()            # tamanho da amostra original da população 2

# Parâmetros --------------------------------------------------------------------------------------
z_alpha = 1.960        # se 1 - alpha = 0.95, então z_alpha = 1.960 (nível de significância)
z_beta = 0.842         # se 1 - beta = 0.80, então z_beta = 0.842  (poder do teste)
P1 = 0.792             # proporção de doentes na população 1 (casos)
P2 = 0.50              # proporção de doentes na população 2 (controle)
B = 0.2                # Beta: chance de não detectar a diferença (cometer o erro tipo 1)
n1 = 1                 # mínimo de doentes esperados no grupo caso
n2 = 1                 # mínimo de doentes esperados no grupo controle
r = n2/n1              # proporção de doentes no grupo controle para cada doente no grupo casos

# Cálculos intermediários -------------------------------------------------------------------------
P = (P1+r*P2)/(r+1)
Q = 1-P
Q1 = 1 - P1
Q2 = 1 - P2

# Cálculo final do tamanho da amostra -------------------------------------------------------------
m1 = (z_alpha*sqrt((r+1)*P*Q) + z_beta*sqrt((r*P1*Q1)+(P2*Q2)))^2/(r*(P2 - P1)^2)
m = m1/4*(1+sqrt(1 + 2*(r+1)/(m1*r*abs(P2-P1))))^2
m
