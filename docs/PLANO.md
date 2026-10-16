# Plano: de uso pessoal → versão empresa (quando quiser)

## Hoje (pessoal, custo zero)
- Player: YouTube embed + `<audio>` local
- Lógica: contador `a cada N vídeos` + timer `a cada X min`
- Arquivos locais via `URL.createObjectURL` (não sobe pra nuvem)

## Para virar empresa legalizada (futuro)
1. Trocar YouTube por acervo próprio ou royalty-free (pasta S3).
2. Motor: AzuraCast + Icecast (AutoDJ 24h).
3. Contratar: ECAD OU provedor Ecad-free (ELF Mídia, Play Indoor).
4. Relatórios: salvar log de execução (data/hora/faixa) para ECAD.
5. Multi-loja: 1 painel + players por filial + modo offline (PWA).

## Estrutura de dados sugerida
```json
{
  "playlist_yt": ["videoId1", "videoId2"],
  "locais": [{"nome": "promo-pascoa.mp3"}],
  "regra": { "a_cada_n_videos": 2, "a_cada_minutos": 15, "modo_local": "aleatorio" }
}
```

## Próximo passo técnico
- Salvar playlist em `localStorage`
- Exportar/importar JSON
- Versão mobile com MediaSession API
