local ls = require("luasnip")
local t = ls.text_node
local i = ls.insert_node

return {
  ls.snippet(
    {trig="ll", dscr="long long", wordTrig = true},
    { t("long long") }
  ),
  ls.snippet(
    {trig="scand", dscr="Scanf for int variable", wordTrig = true},
    { t({"scanf(\"%d\", &"}), i(1, "var"), t({");"}), i(0) }
  ),
  ls.snippet(
    {trig="scan2d", dscr="Scanf for 2 int variables", wordTrig = true},
    { t({"scanf(\"%d%d\", &"}), i(1, "var"), t({", &"}), i(2, "var2"), t({");"}), i(0) }
  ),
  ls.snippet(
    {trig="scan3d", dscr="Scanf for 3 int variables", wordTrig = true},
    { t({"scanf(\"%d%d%d\", &"}), i(1, "var"), t({", &"}), i(2, "var2"), t({", &"}), i(3, "var3"), t({");"}), i(0) }
  ),
  ls.snippet(
    {trig="scan4d", dscr="Scanf for 4 int variables", wordTrig = true},
    { t({"scanf(\"%d%d%d%d\", &"}), i(1, "var"), t({", &"}), i(2, "var2"), t({", &"}), i(3, "var3"), t({", &"}), i(4, "var4"),t({");"}), i(0) }
  ),
  ls.snippet(
    {trig="scans", dscr="Scanf for string variable", wordTrig = true},
    { t({"scanf(\"%s\", "}), i(1, "var"), t({");"}), i(0) }
  ),
  ls.snippet(
    {trig="printd", dscr="Printf for int variable", wordTrig = true},
    { t({"printf(\"%d\\n\", "}), i(1, "var"), t({");"}), i(0) }
  ),
  ls.snippet(
    {trig="printll", dscr="Printf for long long variable", wordTrig = true},
    { t({"printf(\"%lld\\n\", "}), i(1, "var"), t({");"}), i(0) }
  ),
  ls.snippet(
    {trig="prints", dscr="Printf for string variable", wordTrig = true},
    { t({"printf(\"%s\\n\", "}), i(1, "var"), t({");"}), i(0) }
  ),
  ls.snippet(
    {trig="printy", dscr="Prints YES", wordTrig = true},
    { t({"printf(\"YES\\n\", "}), i(0) }
  ),
  ls.snippet(
    {trig="printn", dscr="Prints NO", wordTrig = true},
    { t({"printf(\"NO\\n\", "}), i(0) }
  ),
  ls.snippet(
    {trig="printc", dscr="Prints with a custom format", wordTrig = true},
    { t({"printf(\""}), i(1, "format"), t({"\", "}), i(2, "args"), t({");"}), i(0) }
  ),
}
