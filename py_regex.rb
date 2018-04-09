cheatsheet do
  title 'Python regular expresssions' # Will be displayed by Dash in the docset list
  docset_file_name 'py_regex'         # Used for the filename of the docset
  keyword 'Python regex'              # Used as the initial search keyword 
                                      # (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction 'Python regex stylesheet'  # Optional, can contain Markdown or HTML

  # A cheat sheet must consist of categories
  category do
    id 'Special Characters'
      entry do
        command '^'
        name    'Matches the expression to its right at the start of a string. It matches every such instance before each \n in the string.'
      end
      entry do
        command '$' 
        name    'Matches the expression to its left at the end of a string. It matches every such instance before each \n in the string.'
      end
      entry do
        command '.'
        name    'Matches any character except line terminators like \n.'
      end
      entry do
        command '\ '
        name    'Escapes special characters or denotes character classes.'
      end
      entry do
        command 'A|B'
        name    'Matches expression A or B. If A is matched first, B is left untried.'
      end
      entry do
        command '+'
        name    'Greedily matches the expression to its left 1 or more times.'
      end
      entry do
        command '*'
        name    'Greedily matches the expression to its left 0 or more times.'
      end
      entry do
        command '?'
        name    'Greedily matches the expression to its left 0 or 1 times. But if ? is added to qualifiers (+, *, and ? itself) it will perform matches in a non-greedy manner.'
      end
      entry do
        command '{m}'
        name    'Matches the expression to its left m times, and not less.'
      end
      entry do
        command '{m,n}'
        name    'Matches the expression to its left m to n times, and not less.'
      end
      entry do
        command '{m,n}?'
        name    'Matches the expression to its left m times, and ignores n. See ? above.'
      end
  end

  category do
    id 'Character Classes (a.k.a. Special Sequences)'
      entry do
        command '\w'
        name    'Matches alphanumeric characters, which means a-z, A-Z, and 0-9. It also matches the underscore, _.'
      end
      entry do
        command '\d'
        name    'Matches digits, which means 0-9.'
      end
      entry do
        command '\D'
        name    'Matches any non-digits.'
      end
      entry do
        command '\s'
        name    'Matches whitespace characters, which include the \t, \n, \r, and space characters.'
      end
      entry do
        command '\S'
        name    'Matches non-whitespace characters.'
      end
      entry do
        command '\b'
        name    'Matches the boundary (or empty string) at the start and end of a word, that is, between \w and \W.'
      end
      entry do
        command '\B'
        name    'Matches where \b does not, that is, the boundary of \w characters.'
      end
      entry do
        command '\A'
        name    'Matches the expression to its right at the absolute start of a string whether in single or multi-line mode.'
      end
      entry do
        command '\Z'
        name    'Matches the expression to its left at the absolute end of a string whether in single or multi-line mode.'
      end
  end

  category do
    id 'Sets'
      entry do
        command '[ ]'
        name    'Contains a set of characters to match.'
      end
      entry do
        command '[amk]'
        name    'Matches either a, m, or k. It does not match amk.'
      end
      entry do
        command '[a-z]'
        name    'Matches any alphabet from a to z.'
      end
      entry do
        command '[a\-z]'
        name    'Matches a, -, or z. It matches - because \ escapes it.'
      end
      entry do
        command '[a-]'
        name    'Matches a or -, because - is not being used to indicate a series of characters.'
      end
      entry do
        command '[-a]'
        name    'As above, matches a or -.'
      end
      entry do
        command '[a-z0-9]'
        name    'Matches characters from a to z and also from 0 to 9.'
      end
      entry do
        command '[(+*)]'
        name    'Special characters become literal inside a set, so this matches (, +, *, and ).'
      end
      entry do
        command '[^ab5]'
        name    'Adding ^ excludes any character in the set. Here, it matches characters that are not a, b, or 5.'
      end
  end

  category do
    id 'Groups'
      entry do
        command '( )'
        name    'Matches the expression inside the parentheses and groups it.'
      end
      entry do
        command '(? )'
        name    'Inside parentheses like this, ? acts as an extension notation. Its meaning depends on the character immediately to its right.'
      end
      entry do
        command '(?PAB)'
        name    'Matches the expression AB, and it can be accessed with the group name.'
      end
      entry do
        command '(?aiLmsux)'
        name    'Here, a, i, L, m, s, u, and x are flags:'
        notes   "a — Matches ASCII only\n
                  i — Ignore case\n
                  L — Locale dependent\n
                  m — Multi-line\n
                  s — Matches all\n
                  u — Matches unicode\n
                  x — Verbose"
      end
      entry do
        command '(?:A)'
        name    'Matches the expression as represented by A, but unlike (?PAB), it cannot be retrieved afterwards.'
      end
      entry do
        command '(?#...)'
        name    'A comment. Contents are for us to read, not for matching.'
      end
      entry do
        command 'A(?=B)'
        name    'Lookahead assertion. This matches the expression A only if it is followed by B.'
      end
      entry do
        command 'A(?!B)'
        name    'Negative lookahead assertion. This matches the expression A only if it is not followed by B.'
      end
      entry do
        command '(?<=B)A'
        name    'Positive lookbehind assertion. This matches the expression A only if B is immediately to its left. This can only matched fixed length expressions.'
      end
      entry do
        command '(?<!B)A'
        name    'Negative lookbehind assertion. This matches the expression A only if B is not immediately to its left. This can only matched fixed length expressions.'
      end
      entry do
        command '(?P=name)'
        name    'Matches the expression matched by an earlier group named “name”.'
      end
      entry do
        command '(...)\1'
        name    'The number 1 corresponds to the first group to be matched. If we want to match more instances of the same expresion, simply use its number instead of writing out the whole expression again. We can use from 1 up to 99 such groups and their corresponding numbers.'
      end
  end

  category do
    id 'Popular Python re module Functions'
      entry do
        command 're.findall(A, B)'
        name    'Matches all instances of an expression A in a string B and returns them in a list.'
      end
      entry do
        command 're.search(A, B)'
        name    'Matches the first instance of an expression A in a string B, and returns it as a re match object.'
      end
      entry do
        command 're.split(A, B)'
        name    'Split a string B into a list using the delimiter A.'
      end
      entry do
        command 're.sub(A, B, C)'
        name    'Replace A with B in the string C.'
      end
  end

  notes 'From https://www.dataquest.io/blog/regex-cheatsheet/'
end
