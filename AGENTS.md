# AGENTS.md — StudyMatch

Regras para agentes de IA que trabalham neste projeto.

## Documentação
- Antes de qualquer alteração significativa, ler `docs/project-overview.md`, `docs/domain-model.md` e `openspec/config.yaml`.
- Não presumir regras de negócio que não estejam documentadas. Em caso de dúvida, perguntar.
- Consultar a documentação oficial atual (Xano, XanoScript, Streamlit) antes de usar sintaxe ou comandos. Usar o Xano Developer MCP para XanoScript.

## Arquitetura
- Backend: exclusivamente Xano (banco, endpoints e autenticação).
- Frontend: exclusivamente Streamlit. Não introduzir React, Vue, Angular, Reflex ou outro framework de frontend sem decisão arquitetural explícita.
- O frontend apenas consome a API do Xano. Nenhuma regra de negócio deve existir somente no frontend.
- Não criar outro banco de dados nem backend paralelo.

## Segurança
- Validações e regras de autorização são aplicadas no backend (Xano), nunca apenas no Streamlit.
- Um usuário só pode alterar os próprios dados, disponibilidades, disciplinas e interesses de match.
- Não colocar URLs com tokens, senhas ou chaves em arquivos versionados. Usar `.streamlit/secrets.toml` (ignorado pelo Git).

## Código
- Reutilizar código existente e evitar duplicação.
- Não modificar funcionalidades não relacionadas à change atual.
- Manter nomes de tabelas e campos conforme o modelo existente no Xano.

## Desenvolvimento
- Toda mudança relevante passa pelo OpenSpec: Explore → Propose → Review → Apply → Archive.
- Cada change deve ter escopo pequeno e verificável.
- Alterações no Xano devem ser feitas nos arquivos `.xs` em `./xano`, revisadas com `git diff` e enviadas com o Xano CLI (usar `--dry-run` antes do push).

## Testes
- Toda mudança funcional deve indicar como será verificada (ex.: chamada ao endpoint, fluxo na tela do Streamlit).

## Git
- Trabalhar em branch, nunca direto na `main`.
- Commits pequenos e com mensagem descritiva em português.
- Integração via Pull Request.
