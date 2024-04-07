A vulnerabilidade que o código detecta está relacionada à biblioteca liblzma usada pelo sshd (o daemon do servidor SSH). Vamos entender os detalhes:

## O que é a biblioteca liblzma?
A liblzma é uma biblioteca de compressão de dados sem perdas. Ela é usada por vários programas e sistemas operacionais para compactar e descompactar arquivos no formato XZ.
O que é a vulnerabilidade (CVE-2024-3094)?

Em março de 2024, o pesquisador de segurança Andres Freund descobriu um backdoor (porta dos fundos) nas versões 5.6.0 e 5.6.1 do XZ Utils. Essa vulnerabilidade é rastreada como CVE-2024-3094.
O backdoor foi inserido na biblioteca liblzma durante o processo de compilação. Isso significa que, quando a biblioteca é afetada pelo código malicioso, os dados de outras aplicações que a utilizam também podem ser modificados ou interceptados.
O backdoor pode permitir acesso não autorizado a sistemas impactados.
## Como funciona o backdoor?
O código malicioso está presente nos tarballs de origem das versões afetadas do XZ Utils.

Esse código malicioso modifica funções durante o processo de construção da biblioteca liblzma.
Quando a biblioteca é carregada, o backdoor afeta a autenticação do sshd (servidor SSH), potencialmente permitindo que invasores acessem o sistema, independentemente do método de autenticação.

## Impacto do código malicioso:
O backdoor interfere na autenticação do sshd via systemd. Sob as circunstâncias certas, isso pode permitir que um ator malicioso quebre a autenticação do sshd e obtenha acesso não autorizado ao sistema remotamente.
## Versões afetadas:

As versões 5.6.0 e 5.6.1 do XZ Utils são afetadas por essa vulnerabilidade.

Portanto, essa vulnerabilidade é crítica e requer atenção imediata para atualização e mitigação. Recomenda-se verificar se o sistema está usando as versões afetadas e aplicar correções conforme necessário.

Referências:

Qualys Security Blog

SecRSS

Sysdig

DebugPoint News
