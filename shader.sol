module shader

require io
require gl

require util
require log

struct Shader
    v : uint32
    f : uint32
    p : uint32
    vpath : String
    fpath : String
end

function log( obj : uint32 ) : String
    local size:[int] = [200:int]
    if gl.glIsShader(obj) then
        gl.glGetShaderiv( obj, gl.GL_INFO_LOG_LENGTH, size )
    else
        gl.glGetProgramiv( obj, gl.GL_INFO_LOG_LENGTH, size )
    end
    if size[0] == 0 then
        return ""
    end

    local sub_sizes:[int] = [1:int]
    local data:String --= [size[0]:byte]
    -- local data:[byte] = [size[0]:byte]
    if gl.glIsShader(obj) then
        gl.glGetShaderInfoLog( obj, size[0], sub_sizes, data)
    else
        gl.glGetProgramInfoLog( obj, size[0], sub_sizes, data)
    end

    return data
end

-- function reload( s : Shader )

--     local vert_src = ""--utils.read_file_as_string(s.vpath)
--     local frag_src = ""--utils.read_file_as_string(s.fpath)

--     gl.glShaderSource( vert, 1u64)

-- end


function new( vert_path : String, frag_path : String ) : Shader

    local shader_obj : Shader = Shader{ vpath = vert_path, fpath = frag_path }

    local vert_src = util.read_file_as_string(shader_obj.vpath)
    local frag_src = util.read_file_as_string(shader_obj.fpath)

    local vert = gl.glCreateShader( gl.GL_VERTEX_SHADER )
    local frag = gl.glCreateShader( gl.GL_FRAGMENT_SHADER )
    local shader = gl.glCreateProgram()
    shader_obj.p = shader
    shader_obj.v = vert
    shader_obj.f = frag
    --check_error("create programs", true)

    local a : [String] = [1:String]
    a[0] = vert_src
    gl.glShaderSource( vert, 1, a, nil )
    --check_error("shader vert source", true)
    gl.glCompileShader( vert )
    --check_error("shader vert compile", true)
    log.deb(log( vert ))

    local a : [String] = [1:String]
    a[0] = frag_src
    gl.glShaderSource( frag, 1, a, nil )
    --check_error("shader frag source", true)
    gl.glCompileShader( frag )
    --check_error("shader frag compile", true)
    log.deb(log( frag ))

    gl.glAttachShader( shader, vert )
    --check_error("shader attach vert", true)
    gl.glAttachShader( shader, frag )
    --check_error("shader attach frag", true)

    gl.glLinkProgram( shader )
    --check_error("shader link", true)
    log.deb(log( shader ))

    return shader_obj
end