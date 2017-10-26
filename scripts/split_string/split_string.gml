/// split_string(string, delimiter)

var raw = argument[0];
var delimiter = argument[1];
var pos = string_pos(delimiter, raw);
var first = "";
var last = "";

// get everything before delimiter
for (var i=1; i<pos; i++) {
  first += string_char_at(raw, i);
}

// get everything after delimiter
for (i=pos+1; i<string_length(raw)+1; i++) {
  last += string_char_at(raw, i);
}

return [first, last];