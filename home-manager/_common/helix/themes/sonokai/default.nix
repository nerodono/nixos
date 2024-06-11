palette:
{
  "attribute" = "purple";
  "comment" = "grey";
  "constant" = "purple";
  "constant.character.escape" = "orange";
  "constant.numeric" = "purple";
  "constructor" = "blue";
  "diagnostic" = { "underlined" = { "style" = "line"; }; };
  "diagnostic.error" = {
    "underline" = {
      "color" = "red";
      "style" = "curl";
    };
  };
  "diagnostic.hint" = {
    "underline" = {
      "color" = "blue";
      "style" = "dotted";
    };
  };
  "diagnostic.info" = {
    "underline" = {
      "color" = "green";
      "style" = "dotted";
    };
  };
  "diagnostic.warning" = {
    "underline" = {
      "color" = "yellow";
      "style" = "curl";
    };
  };
  "diff.delta" = "orange";
  "diff.minus" = "red";
  "diff.plus" = "green";
  "error" = "red";
  "function" = "green";
  "function.builtin" = "blue";
  "function.macro" = "purple";
  "hint" = "blue";
  "info" = "green";
  "keyword" = "red";
  "keyword.directive" = "purple";
  "label" = "orange";
  "markup.bold" = { "modifiers" = [ "bold" ]; };
  "markup.heading.1" = {
    "fg" = "red";
    "modifiers" = [ "bold" ];
  };
  "markup.heading.2" = {
    "fg" = "orange";
    "modifiers" = [ "bold" ];
  };
  "markup.heading.3" = {
    "fg" = "yellow";
    "modifiers" = [ "bold" ];
  };
  "markup.heading.4" = {
    "fg" = "green";
    "modifiers" = [ "bold" ];
  };
  "markup.heading.5" = {
    "fg" = "blue";
    "modifiers" = [ "bold" ];
  };
  "markup.heading.6" = {
    "fg" = "fg";
    "modifiers" = [ "bold" ];
  };
  "markup.heading.marker" = "grey";
  "markup.italic" = { "modifiers" = [ "italic" ]; };
  "markup.link.text" = "purple";
  "markup.link.url" = {
    "fg" = "blue";
    "modifiers" = [ "underlined" ];
  };
  "markup.list" = "red";
  "markup.quote" = "grey";
  "markup.raw" = "green";
  "module" = "blue";
  "namespace" = "blue";
  "operator" = "orange";
  "punctuation" = "grey";
  "punctuation.bracket" = "fg";
  "punctuation.delimiter" = "grey";
  "special" = "orange";
  "string" = "yellow";
  "string.regexp" = "orange";
  "tag" = "yellow";
  "type" = "blue";
  "ui.background" = { "bg" = "bg0"; };
  "ui.background.separator" = "grey";
  "ui.bufferline" = {
    "bg" = "bg1";
    "fg" = "grey";
  };
  "ui.bufferline.active" = {
    "bg" = "bg4";
    "fg" = "fg";
    "modifiers" = [ "bold" ];
  };
  "ui.cursor" = {
    "bg" = "fg";
    "fg" = "bg0";
  };
  "ui.cursor.insert" = {
    "bg" = "grey";
    "fg" = "black";
  };
  "ui.cursor.match" = {
    "bg" = "diff_yellow";
    "fg" = "orange";
  };
  "ui.cursor.select" = {
    "bg" = "blue";
    "fg" = "bg0";
  };
  "ui.cursorline.primary" = { "bg" = "bg1"; };
  "ui.cursorline.secondary" = { "bg" = "bg1"; };
  "ui.help" = {
    "bg" = "bg2";
    "fg" = "fg";
  };
  "ui.linenr" = "grey";
  "ui.linenr.selected" = "fg";
  "ui.menu" = {
    "bg" = "bg3";
    "fg" = "fg";
  };
  "ui.menu.selected" = {
    "bg" = "green";
    "fg" = "bg0";
  };
  "ui.popup" = {
    "bg" = "bg2";
    "fg" = "grey";
  };
  "ui.selection" = { "bg" = "bg4"; };
  "ui.statusline" = {
    "bg" = "bg3";
    "fg" = "fg";
  };
  "ui.statusline.inactive" = {
    "bg" = "bg1";
    "fg" = "grey";
  };
  "ui.statusline.insert" = {
    "bg" = "yellow";
    "fg" = "bg0";
    "modifiers" = [ "bold" ];
  };
  "ui.statusline.normal" = {
    "bg" = "fg";
    "fg" = "bg0";
    "modifiers" = [ "bold" ];
  };
  "ui.statusline.select" = {
    "bg" = "blue";
    "fg" = "bg0";
    "modifiers" = [ "bold" ];
  };
  "ui.text" = "fg";
  "ui.text.focus" = "green";
  "ui.virtual.indent-guide" = { "fg" = "bg4"; };
  "ui.virtual.ruler" = { "bg" = "bg2"; };
  "ui.virtual.whitespace" = { "fg" = "bg4"; };
  "ui.window" = {
    "bg" = "bg0";
    "fg" = "grey";
  };
  "variable" = "fg";
  "variable.builtin" = "orange";
  "variable.other.member" = "fg";
  "variable.parameter" = "fg";
  "warning" = "yellow";

  palette = import (./. + "/palettes/${palette}.nix");
}
