# Pipehero Homebrew Tap

Homebrew formulae for [Pipehero](https://pipehero.app) — a webhook tunnel for
developers: expose your localhost on a public URL, then inspect, replay and
debug every webhook.

## Install

```sh
brew install pipehero/tap/pipehero
```

Then:
```
pipehero login
pipehero start myapp --port 3000
# → https://myapp.t.pipehero.app forwards to localhost:3000
```

Upgrade

```
brew upgrade pipehero
```

How this tap works

Formula/pipehero.rb is updated automatically by CI on every Pipehero CLI
release. Binaries are prebuilt for macOS and Linux (x64/arm64), served from
dl.pipehero.app, and verified by Homebrew against per-target SHA-256
checksums baked into the formula.

Other ways to install
```
curl -fsSL https://pipehero.app/install | sh   # install script
npm install -g pipehero                        # npm wrapper
```

Links

- [Website](pipehero.app) · [Docs](https://pipehero.app/docs)
- Issues and support: pipehero.app (in-app chat) or hello@pipehero.app
                                                                                                                                                                                                            Dos notas: dejé un mail de contacto genérico (`hello@pipehero.app`) en el README — cambialoe es otra. Y el orden importa: primero los dos secrets, después el merge de `SEO` (o el `ghworkflow run`) — así el primer run ya publica npm y la formula juntos. El commit del README en el tap podés hacerlo directo desde la web de GitHub; el CI le va a agregar `Formula/pipehero.rb` al lado sin tocarlo.
