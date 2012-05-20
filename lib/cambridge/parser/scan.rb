
# line 1 "lib/cambridge/parser/scan.rl"

# line 23 "lib/cambridge/parser/scan.rl"


module Cambridge
  module Parser
    class Scan
      def initialize
        @tokens = []
        @num_stack = []
      end

      def parse(line)
        data = line.codepoints.to_a
        stack = []
        p = 0
        ts = 0
        te = 0
        act = 0
        eof = data.length
        
# line 25 "lib/cambridge/parser/scan.rb"
class << self
	attr_accessor :_scanner_trans_keys
	private :_scanner_trans_keys, :_scanner_trans_keys=
end
self._scanner_trans_keys = [
	0, 0, 34, 122, 34, 34, 
	9, 122, 9, 122, 9, 
	34, 9, 122, 9, 122, 
	0
]

class << self
	attr_accessor :_scanner_key_spans
	private :_scanner_key_spans, :_scanner_key_spans=
end
self._scanner_key_spans = [
	0, 89, 1, 114, 114, 26, 114, 114
]

class << self
	attr_accessor :_scanner_index_offsets
	private :_scanner_index_offsets, :_scanner_index_offsets=
end
self._scanner_index_offsets = [
	0, 0, 90, 92, 207, 322, 349, 464
]

class << self
	attr_accessor :_scanner_indicies
	private :_scanner_indicies, :_scanner_indicies=
end
self._scanner_indicies = [
	0, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 1, 1, 1, 1, 1, 1, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 1, 4, 3, 5, 5, 5, 5, 
	5, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 5, 3, 6, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 3, 3, 
	3, 3, 3, 3, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 7, 7, 
	7, 7, 7, 7, 7, 7, 3, 8, 
	8, 8, 8, 8, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 8, 1, 
	0, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 1, 1, 1, 1, 1, 1, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 1, 9, 9, 9, 9, 9, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 9, 3, 4, 3, 10, 10, 10, 
	10, 10, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 10, 3, 4, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 3, 3, 
	3, 3, 3, 3, 3, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 3, 
	3, 3, 3, 3, 3, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 3, 
	12, 12, 12, 12, 12, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 12, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 1, 1, 1, 1, 1, 1, 1, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 1, 1, 1, 1, 1, 1, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 13, 13, 13, 13, 13, 13, 
	13, 13, 1, 0
]

class << self
	attr_accessor :_scanner_trans_targs
	private :_scanner_trans_targs, :_scanner_trans_targs=
end
self._scanner_trans_targs = [
	2, 0, 7, 2, 5, 3, 5, 6, 
	4, 3, 3, 6, 4, 7
]

class << self
	attr_accessor :_scanner_trans_actions
	private :_scanner_trans_actions, :_scanner_trans_actions=
end
self._scanner_trans_actions = [
	1, 0, 2, 0, 0, 0, 1, 2, 
	0, 3, 4, 0, 4, 0
]

class << self
	attr_accessor :_scanner_eof_actions
	private :_scanner_eof_actions, :_scanner_eof_actions=
end
self._scanner_eof_actions = [
	0, 0, 0, 0, 0, 3, 4, 4
]

class << self
	attr_accessor :scanner_start
end
self.scanner_start = 1;
class << self
	attr_accessor :scanner_first_final
end
self.scanner_first_final = 5;
class << self
	attr_accessor :scanner_error
end
self.scanner_error = 0;

class << self
	attr_accessor :scanner_en_main
end
self.scanner_en_main = 1;


# line 42 "lib/cambridge/parser/scan.rl"
        
# line 180 "lib/cambridge/parser/scan.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = scanner_start
end

# line 43 "lib/cambridge/parser/scan.rl"
        
# line 189 "lib/cambridge/parser/scan.rb"
begin
	testEof = false
	_slen, _trans, _keys, _inds, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = cs << 1
	_inds = _scanner_index_offsets[cs]
	_slen = _scanner_key_spans[cs]
	_trans = if (   _slen > 0 && 
			_scanner_trans_keys[_keys] <= data[p].ord && 
			data[p].ord <= _scanner_trans_keys[_keys + 1] 
		    ) then
			_scanner_indicies[ _inds + data[p].ord - _scanner_trans_keys[_keys] ] 
		 else 
			_scanner_indicies[ _inds + _slen ]
		 end
	cs = _scanner_trans_targs[_trans]
	if _scanner_trans_actions[_trans] != 0
	case _scanner_trans_actions[_trans]
	when 1 then
# line 4 "lib/cambridge/parser/scan.rl"
		begin
 @mark_str = p 		end
	when 3 then
# line 5 "lib/cambridge/parser/scan.rl"
		begin
 @tokens << Tokens::String.new(data[@mark_str..p-1]) 		end
	when 2 then
# line 7 "lib/cambridge/parser/scan.rl"
		begin
 @mark_cmd = p 		end
	when 4 then
# line 8 "lib/cambridge/parser/scan.rl"
		begin
 @tokens << Tokens::Command.new(data[@mark_cmd..p-1]) 		end
# line 241 "lib/cambridge/parser/scan.rb"
	end
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	  case _scanner_eof_actions[cs]
	when 3 then
# line 5 "lib/cambridge/parser/scan.rl"
		begin
 @tokens << Tokens::String.new(data[@mark_str..p-1]) 		end
	when 4 then
# line 8 "lib/cambridge/parser/scan.rl"
		begin
 @tokens << Tokens::Command.new(data[@mark_cmd..p-1]) 		end
# line 267 "lib/cambridge/parser/scan.rb"
	  end
	end

	end
	if _goto_level <= _out
		break
	end
end
	end

# line 44 "lib/cambridge/parser/scan.rl"
        return @tokens
      end

      def atos(a)
        a.map(&:chr).join
      end
    end
  end
end
