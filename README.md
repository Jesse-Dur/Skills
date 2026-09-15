# Personal Codex skills

Custom Codex skills live in [`skills/`](skills/). Each skill should be a
directory containing a `SKILL.md` file, plus any supporting resources it needs.

## Available skills

- [Unslop](skills/unslop/SKILL.md): Remove AI writing patterns from prose.
  Copied from [Poteto's noodle repository](https://github.com/poteto/noodle),
  with upstream attribution and license in [skills/unslop/README.md](skills/unslop/README.md).

To make the skills available in an environment, clone this repository and run:

```sh
./scripts/setup-codex-skills.sh
```

The script creates `~/.codex/skills/personal` as a symlink to this repository.
That means local edits are immediately visible to Codex. In another
environment, pull the latest repository changes and restart Codex (or rerun the
setup script if the checkout moved).
