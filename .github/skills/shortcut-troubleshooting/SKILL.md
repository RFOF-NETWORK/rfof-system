---
name: shortcut-troubleshooting
description: 'Use when terminal shortcuts or keyboard commands fail, especially on Windows when the terminal cannot launch or a hotkey does not work. Helps diagnose common VS Code terminal and shell issues quickly.'
argument-hint: 'Describe the broken shortcut or terminal error'
user-invocable: true
---

# Shortcut Troubleshooting

## When to Use
- The terminal process fails to launch.
- A keyboard shortcut such as Ctrl+Ö or Ctrl+` does not work.
- VS Code shows a terminal-related error such as conpty, winpty, or shell startup failure.

## Goal
Help the user recover from common terminal and keyboard shortcut issues with a short, reliable checklist.

## Procedure
1. Confirm the exact symptom and error text.
2. Check whether the issue is specific to the terminal, the shell, or the keyboard layout.
3. For Windows terminal launch errors, prefer the documented VS Code setting guidance:
   - Enable the setting `terminal.integrated.windowsUseConptyDll` if the error mentions conpty or winpty.
   - If the issue persists, switch to another shell profile or restart VS Code.
4. For keyboard shortcut issues, verify the active keyboard layout and whether the shortcut is mapped differently in the current profile.
5. If the shortcut is used for a non-English layout, try the equivalent command from the Command Palette or the keybinding UI.
6. Summarize the fix clearly and, if needed, suggest the next verification step.

## Completion Checks
- The user can launch the terminal again, or
- The shortcut works after changing the profile/layout/setting, or
- The remaining issue is clearly scoped to a known environment limitation.

## Notes
- Prefer the least invasive fix first.
- Keep suggestions concrete and actionable.
- Do not assume the issue is caused by the codebase; focus on editor and terminal environment first.
