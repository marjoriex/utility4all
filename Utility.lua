getgenv().Utility = {};

function Utility:genv() return getgenv() end;   -- Returns the environment that will be applied to each script ran by Synapse.
function Utility:renv() return getrenv() end;   -- Returns the global environment for the LocalScript state.
function Utility:reg() return getreg() end;     -- Returns the Lua registry.
function Utility:gc() return getgc() end;       -- Returns all functions and userdata values within the GC. Passing true will also return tables.
function Utility:instances() return getinstances() end;   --  Returns a list of all instances within the game.
function Utility:ninstances() return getnilinstances() end; -- Returns a list of all instances parented to nil within the game.
function Utility:modules() return getloadedmodules() end; -- Returns all ModuleScripts loaded in the game.
function Utility:connections() return getconnections() end; -- Gets a list of connections to the specified signal. You can do the following operations on a Connection: Example Description .Function The function connected to the connection
function Utility:fire_click(clickdetector_Detector, int_Distance) return fireclickdetector(clickdetector_Detector, int_Distance) end;   -- Fires the designated ClickDetector with provided Distance. If Distance isn't provided, it will default to 0.
function Utility:fire_prox(proximityprompt_Prompt, int_Distance) return fireproximityprompt(proximityprompt_Prompt, int_Distance) end;  -- Fires the designated ProximityPrompt.
function Utility:fire_touch(instance_Part, basepart_ToTouch, int_Toggle) return firetouchinterest(instance_Part, basepart_ToTouch, int_Toggle) end;  -- Fakes a .Touched event to ToTouch with Part. The Toggle argument must be either 0 or 1 (for fire/un-fire). Note : The ToTouch
function Utility:network(instance_Part) return isnetworkowner(instance_Part) end; -- Returns true if the Part is owned by the player.
function Utility:hidden_prop(instance_Object, string_Property) return gethiddenproperty(instance_Object, string_Property) end;  -- Returns the hidden property Property from Object. Errors if the property does not exist.
function Utility:set_hidden_prop(instance_Object, string_Property, variant_Value) return sethiddenproperty(instance_Object, string_Property, variant_Value) end;  -- Sets the hidden property Property with Value from Object. Errors if the property does not exist.
function Utility:set_sim_dist(uint_SimulationRadius, uint_MaxSimulationRadius) return setsimulationradius(uint_SimulationRadius, uint_MaxSimulationRadius) end; -- Sets the player's SimulationRadius. If MaxSimulationRadius is specified, it will set that as well.
function Utility:senv(union_Script) return getsenv(union_Script) end; -- Returns the environment of Script. Errors if the script is not loaded in memory.
function Utility:get_call_script() return getcallingscript() end; -- Gets the script that is calling this function.
function Utility:get_scriptcl(union_Script) return getscriptclosure(union_Script) end;  --  Gets a bare function from the script passed. Please note this is not the original function of the script and will not have upvalues/enviornment correctly defined.
function Utility:get_scripthash(union_Script) return getscripthash(union_Script) end; -- Returns a SHA384 hash of the scripts bytecode. You can use this to detect changes of a script.
function Utility:get_rawmeta(table_Value) return getrawmetatable(table_Value) end;  -- Retrieve the metatable of value irregardless of value's metatable's __metatable field. Returns nil if it doesn't exist.
function Utility:set_rawmeta(object_o, table_mt) return setrawmetatable(object_o, table_mt) end;  -- Sets o's metatable to mt even if the __metatable field exists in o's metatable.
function Utility:set_readonly(table_t, bool_val) return setreadonly(table_t, bool_val) end; -- Sets t's read-only value to val.
function Utility:is_windowactive() return iswindowactive() end; -- Returns if the main window is in focus. This must return true for any other mouse/keyboard function to work.
function Utility:keypress(uint_keycode) return keypress(uint_keycode) end;  -- Simulates a key press for the specified keycode. Keycodes are listed here . <void> keyrelease(<uint> key) Releases key on the keyboard. You can access the key values from
function Utility:keyrelease(uint_keycode) return keyrelease(uint_keycode) end;  -- Simulates a key press for the specified keycode. Keycodes are listed here . <void> keyrelease(<uint> key) Releases key on the keyboard. You can access the key values from
function Utility:leftclick() return mouse1click() end;  -- Simulates a full left mouse button press. <void> mouse1press(<void>) Simulates a left mouse button press without releasing it. <void> mouse1release(<void>) Simulates a left mouse button release.
function Utility:leftpress() return mouse1press() end;  -- Simulates a full left mouse button press. <void> mouse1press(<void>) Simulates a left mouse button press without releasing it. <void> mouse1release(<void>) Simulates a left mouse button release.
function Utility:leftrelease() return mouse1release() end;  -- Simulates a full left mouse button press. <void> mouse1press(<void>) Simulates a left mouse button press without releasing it. <void> mouse1release(<void>) Simulates a left mouse button release.
function Utility:rightclick() return mouse2click() end; -- Simulates a full right mouse button press. <void> mouse2press(<void>) Clicks down on the right mouse button. <void> mouse2release(<void>) Simulates a right mouse button release.
function Utility:rightpress() return mouse2press() end; -- Simulates a full right mouse button press. <void> mouse2press(<void>) Clicks down on the right mouse button. <void> mouse2release(<void>) Simulates a right mouse button release.
function Utility:rightrelease() return mouse2release() end; -- Simulates a full right mouse button press. <void> mouse2press(<void>) Clicks down on the right mouse button. <void> mouse2release(<void>) Simulates a right mouse button release.
function Utility:mousescroll(number_px) return mousescroll(number_px) end;  -- Scrolls the mouse wheel virtually by px pixels. <void> mousemoverel(<number> x, <number> y) Moves the mouse cursor relatively to the current mouse position by coordinates x and
function Utility:mouse_m_rel(number_x, number_y) return mousemoverel(number_x, number_y) end; -- Moves the mouse cursor relatively to the current mouse position by coordinates x and y. <void> mousemoveabs(<number> x, <number> y) Move's your mouse to the
function Utility:mouse_m_abs(number_x, number_y) return mousemoveabs(number_x, number_y) end; -- Moves the mouse cursor relatively to the current mouse position by coordinates x and y. <void> mousemoveabs(<number> x, <number> y) Move's your mouse to the
function Utility:hook_fn(function_old, function_hook) return hookfunction(function_old, function_hook) end; -- Hooks function old, replacing it with the function hook. The old function is returned, you must use this function in order to call the original
function Utility:hook_mt(object_o, string_metamethod, function_hook) return hookmetamethod(object_o, string_metamethod, function_hook) end; -- Hooks the metamethod passed in the object's metatable with hook. A function to call the original metamethod is returned, you must use this
function Utility:new_cc(function_fn) return newcclosure(function_fn) end; -- Pushes a new CClosure that invokes function f upon call.
function Utility:f_loadstring(string_chunk, string_chunk_name) return loadstring(string_chunk, string_chunk_name) end;  -- Loads chunk as a Lua function with optional chunk_name and returns it if compilation is successful. Otherwise, if an error has occurred during
function Utility:check_c() return checkcaller() end;  -- Returns true if the current thread is a Synapse thread. Note : Checkcaller does NOT check the call stack of the function, if you call a game function
function Utility:check_lc(function_fn) return islclosure(function_fn) end;  -- Returns true if f is an LClosure.
function Utility:dump_string(string_Script) return dumpstring(string_Script) end; -- Returns the Synapse formatted bytecode for source string script.
function Utility:decompile(union_Script, string_bool_mode, number_timeout) return decompile(union_Script, string_bool_mode, number_timeout) end; -- Decompiles Script and returns the decompiled script with timeout. If the decompilation fails, then the return value will
function Utility:console_log(string_message) return rconsoleprint(string_message) end;  -- Prints message into the console. rconsoleprint also supports colors.
function Utility:console_info(string_message) return rconsoleinfo(string_message) end; -- Prints message into the console, with a info text before it.
function Utility:console_warn(string_message) return rconsolewarn(string_message) end; -- Prints message into the console, with a warning text before it.
function Utility:console_error(string_message) return rconsoleerr(string_message) end; -- Prints message into the console, with a error text before it.
function Utility:console_clear(string_message) return rconsoleclear(string_message) end; -- Clears the console.
function Utility:console_name(string_name) return rconsolename(string_name) end; -- Sets the currently allocated console title to title.
function Utility:console_input() return rconsoleinput() end; -- Yields until the user inputs information into their console. Returns the input they put in.
function Utility:internal_log(string_message, byte_red, byte_green, byte_blue) return printconsole(string_message, byte_red, byte_green, byte_blue) end; -- Prints message into the internal and integrated console with RGB value. To view the internal console, enable Internal UI in the
function Utility:read_file(string_path) return readfile(string_path) end; -- Reads the contents of the file located at path and returns it. If the file does not exist, it errors.
function Utility:write_file(string_path, string_contents) return writefile(string_path, string_contents) end; -- Writes contents to the supplied path. Extensions that are not allowed: .exe, .scr, .bat, .com, .csh, .msi, .vb, .vbs, .vbe, .ws, .wsf, .wsh, .ps1, .psy. Attempting
function Utility:append_file(string_path, string_content) return appendfile(string_path, string_content) end; -- Appends content to the file contents at path. If the file does not exist, it errors.
function Utility:load_file(string_path) return loadfile(string_path) end; -- Loads in the contents of a file as a chunk and returns it if compilation is successful. Otherwise, if an error has occurred during compilation, 
function Utility:list_files(string_folder) return listfiles(string_path) end; -- Returns a table of files in folder.
function Utility:is_file(string_path) return isfile(string_path) end; -- Returns if path is a file or not.
function Utility:is_folder(string_path) return isfolder(string_path) end; -- Returns if path is a folder or not.
function Utility:mk_folder(string_path) return makefolder(string_path) end; -- Creates a new folder at path.
function Utility:dl_folder(string_path) return delfolder(string_path) end; -- Deletes the folder in the supplied path, if no folder exists, it errors.
function Utility:dl_file(string_path) return delfile(string_path) end; -- Deletes the file in the supplied path, if no file exists, it errors.
function Utility:set_cb(string_data) return setclipboard(string_data) end; -- Sets value to the clipboard.
function Utility:set_fflag(string_FFlag, string_Value) return setfflag(string_FFlag, string_Value) end; -- Sets FFlag with Value. Must be run before the game loads, auto execute + auto launch recommended.
function Utility:set_ncm(string_method) return setnamecallmethod(string_method) end; -- Sets the current namecall method to the new namecall method. Must be called in a __namecall metatable hook.
function Utility:get_syn_asset(string_path) return getsynasset(string_path) end; -- Returns a Content string that can be used as a fake Asset ID for GUI elements. Please note this will only affect your client. Note : Certain
function Utility:get_specinfo(instance_Object) return getspecialinfo(instance_Object) end; -- Gets a list of special properties for MeshParts, UnionOperations, and Terrain instances. MeshParts UnionOperations Terrain PhysicsData AssetId SmoothGrid InitialSize ChildData MaterialColors FormFactor InitialSize MeshData PhysicsData
function Utility:save_instance(table_t) return saveinstance(table_t) end; -- Saves the current game into your workspace folder. You can use table t to customize options for this. Option Value mode optimized / full / scripts noscripts
function Utility:message_box(string_text, string_caption, uint_flags) return messagebox(string_text, string_caption, uint_flags) end; -- Creates a message box with parameters text, caption and style. Style Number OK 0 OK / Cancel 1 Abort / Retry / Ignore
function Utility:bdiv(uint_bdiv, uint_divisor) return bit.bdiv(uint_bdiv, uint_divisor) end; -- Divides dividend by divisor, remainder is not returned.
function Utility:badd(uint_a, uint_b) return bit.badd(uint_a, uint_b) end; -- Adds a with b, allows overflows.
function Utility:bsub(uint_a, uint_b) return bit.bsub(uint_a, uint_b) end; -- Subtracts a with b, allows overflows.
function Utility:bmul(uint_value, uint_by) return bit.bmul(uint_value, uint_by) end; --  Multiplies val using by, allows overflows. Note : All bitwise functions within the bit lib return signed 32 bit integers. Take good note of that
function Utility:band(uint_value, uint_by) return bit.band(uint_value, uint_by) end; -- Does a bitwise AND (&) on val using by.
function Utility:bor(uint_value, uint_by) return bit.bor(uint_value, uint_by) end; -- Does a bitwise OR (|) on val using by.
function Utility:bxor(uint_value, uint_by) return bit.bxor(uint_value, uint_by) end; --  Does a bitwise XOR (⊕) on val using by.
function Utility:bnot(uint_val) return bit.bnot(uint_val) end; -- Does a bitwise NOT on val.
function Utility:bswap(uint_value) return bit.bswap(uint_value) end; -- Does a bitwise swap on val.
function Utility:ror(int_value, int_rotate_count) return bit.ror(int_value, int_rotate_count) end; -- Returns the value rotated right by rotate_count.
function Utility:rol(int_value, int_rotate_count) return bit.rol(int_value, int_rotate_count) end; -- Returns the value rotated left by rotate_count.
function Utility:tohex(uint_value) return bit.tohex(uint_value) end; -- Converts val to a hex string.
function Utility:tobit(uint_value) return bit.tobit(uint_value) end; -- Converts val into proper form for bitwise operations.
function Utility:lshift(uint_value, uint_by) return bit.lshift(uint_value, uint_by) end; -- Does a left shift on val using by.
function Utility:rshift(uint_value, uint_by) return bit.rshift(uint_value, uint_by) end; -- Does a right shift on val using by.
function Utility:arshift(int_value, int_shift_count) return bit.arshift(int_value, int_shift_count) end; -- Returns the arithmetically shifted value.
function Utility:encrypt(string_data, string_key) return syn.crypt.encrypt(string_data, string_key) end; -- Encrypts data with key (algorithm used is AES-GCM, random nonce generated per call).
function Utility:decrypt(string_data, string_key) return syn.crypt.decrypt(string_data, string_key) end; -- Decrypts data with key.
function Utility:base64_e(string_data) return syn.crypt.base64.encode(string_data) end; -- Encodes data with base64.
function Utility:base64_d(string_data) return syn.crypt.decode(string_data) end; -- Decodes data with base64.
function Utility:hash(string_data) return syn.crypt.hash(string_data) end; -- Hashes data with SHA-384.
function Utility:derive(string_value, uint_len) return syn.crypt.derive(string_value, uint_len) end; -- Derives a secret key from value with the length of len.
function Utility:random(uint_size) return syn.crypt.random(uint_size) end; -- Generates a random string with size (cannot be negative or exceed 1024).
function Utility:c_encrypt(string_cipher, string_data, string_key, string_iv_nonce) return syn.crypt.custom.encrypt(string_cipher, string_data, string_key, string_iv_nonce) end; -- Encrypts data with key using selected cipher and iv/nonce.
function Utility:c_decrypt(string_cipher, string_data, string_key, string_iv_nonce) return syn.crypt.custom.decrypt(string_cipher, string_data, string_key, string_iv_nonce) end; -- Decrypts data with key using selected cypher and iv/nonce.
function Utility:c_hash(string_algorithm, string_data) return syn.crypt.custom.hash(string_algorithm, string_data) end; -- Hashes data with algorithm.
function Utility:get_constants(union_function, number_fi) return debug.getconstants(union_function, number_fi) end; -- Retrieve the constants in function fi or at level fi.
function Utility:get_constant(union_function, number_index) return debug.getconstant(union_function, number_index) end; -- Returns the constant at index idx in function fi or level fi.
function Utility:set_constant(union_function, number_index, union_value) return debug.setconstant(union_function, number_index, union_value) end; -- Set constant idx to tuple value at level or function fi.
function Utility:get_upvalues(union_function, number_fi) return debug.getupvalues(union_function, number_fi) end; -- Retrieve the upvalues in function fi or at level fi.
function Utility:get_upvalue(union_function, number_index) return debug.getupvalue(union_function, number_index) end; -- Returns the upvalue with name idx in function or level fi.
function Utility:set_upvalue(union_function, number_index, table_value) return debug.setupvalue(union_function, number_index, table_value) end; -- Set upvalue idx to value value at level or function fi.
function Utility:get_protos(union_function) return debug.getprotos(union_function) end; -- Returns a table containing the inner functions of function f. Note these functions will not have upvalues, use debug.getproto with activated true to get a list of
function Utility:get_proto(union_function, int_index, bool_activated) return debug.getproto(union_function, int_index, bool_activated) end; -- Gets the inner function of f at index. Note if activated is true, instead it will return a table of functions. These are
function Utility:set_proto(union_function, number_index, function_replacement) return debug.setproto(union_function, number_index, function_replacement) end; -- Replaces fi at index with function replacement at level or function fi.
function Utility:get_stack(number_indice) return debug.getstack(number_indice) end; -- Gets the method stack at level indice.
function Utility:set_stack(number_indice, number_indice2, table_Value) return debug.setstack(number_indice, number_indice2, table_Value) end; -- Set the stack indice at level indice to value value at level or function fi.
function Utility:set_meta(table_o, table_mt) return debug.setmetatable(table_o, table_mt) end; -- Set the metatable of o to mt.
function Utility:get_reg() return debug.getregistry() end; -- This allows you to get the Lua registry, which can be used to get connections in memory and other information. Lets now move on to calling external functions
function Utility:get_info(union_function, number_fi, string_w) return debug.getinfo(union_function, number_fi, string_w) end; -- Returns a table of info pertaining to the lua function fi.
function Utility:cache_rp(instance_obj, instance_t_obj) return syn.cache_replace(instance_obj, instance_t_obj) end; -- Replace obj in the instance cache with t_obj.
function Utility:cache_inv(instance_obj) return syn.cache_invalidate(instance_obj) end; -- Invalidate obj's cache entry, forcing a re-cache upon the next lookup.
function Utility:set_thread_id(uint_n) return syn.set_thread_identity(uint_n) end; -- Sets the current thread identity.
function Utility:get_thread_id() return syn.get_thread_identity() end; -- Returns the current thread identity.
function Utility:is_cached(instance_obj) return syn.is_cached(instance_obj) end; -- Returns true if obj is currently cached within the registry.
function Utility:write_clip(string_contentr) return syn.write_clipboard(string_contentr) end; -- Writes content to the current Windows clipboard.
function Utility:queue_tp(string_code) return syn.queue_on_teleport(string_code) end; -- Executes code after player is teleported.
function Utility:is_beta() return syn.is_beta() end; -- Returns a bool indicating whether the user is using Synapse Beta or not.
function Utility:request(table_options) return syn.request(table_options) end; --     Sends a http request with parameters in options.
function Utility:create_sfn(string_code) return syn.create_secure_function(string_code) end; -- Protects your code with secure function, making it much more difficult for others to alter or view your code. This function can only be used by users
function Utility:run_sfn(string_code) return syn.run_secure_function(string_code) end; -- Runs code protected by secure function.
function Utility:ws_create(string_url) return syn.websocket.connect(string_url) end; -- Connects to the url specified. Errors if the connection fails.

return Utility;
