#!/bin/bash

   SKILL=$1

   if [ -z "$SKILL" ]; then
     echo "❌ Please provide a skill name. Usage: ./install-skill.sh skill-name"
     exit 1
   fi

   SOURCE="$HOME/dotfiles/skills/$SKILL"
   DEST="$HOME/.claude/skills/$SKILL"

   if [ -d "$SOURCE" ]; then
     mkdir -p "$HOME/.claude/skills"
     cp -r "$SOURCE" "$DEST"
     echo "✅ Skill '$SKILL' installed successfully"
   else
     echo "❌ Skill '$SKILL' not found in your dotfiles"
     echo "Available skills:"
     ls "$HOME/dotfiles/skills/"
   fi
