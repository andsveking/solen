module util

require io
require gl

!nogc
extern exit()

-- C Std funcs
!nogc
extern fopen( filename: String, mode: String) : uint64
!nogc
extern fseek( stream : uint64, offset : int64, whence : int ) : int
!nogc
extern ftell( stream : uint64 ) : int
!nogc
extern fclose( stream : uint64 ) : int
!nogc
extern fread( ptr : [byte], size : int, count : int, stream : uint64) : int64
!nogc
extern chdir(path : String) : int
!nogc
extern rand() : int

function err_to_str( err : uint32 ) : String

    if ( err == 0 ) then
        return "GL_NO_ERROR"
    elseif ( err == 0x0500 ) then
        return "GL_INVALID_ENUM"
    elseif ( err == 0x0501 ) then
        return "GL_INVALID_VALUE"
    elseif ( err == 0x0502 ) then
        return "GL_INVALID_OPERATION"
    elseif ( err == 0x0503 ) then
        return "GL_STACK_OVERFLOW"
    elseif ( err == 0x0504 ) then
        return "GL_STACK_UNDERFLOW"
    elseif ( err == 0x0505 ) then
        return "GL_OUT_OF_MEMORY"
    else
        return "UNKNOWN ERROR"
    end

end

function glerr( loc : String )
    local err : uint32 = gl.glGetError()
    if (err ~= 0u32) then
        io.print("GL error, " .. loc .. ": ")
        io.println(err_to_str(err))
        exit()
    end
end

function read_file( file_path : String ) : [byte]
    local SEEK_SET : int = 0
    local SEEK_CUR : int = 1
    local SEEK_END : int = 2

    local f = fopen(file_path, "r")

    if (f ~= 0u64) then
        fseek( f, 0i64, SEEK_END )
        local len : int = ftell( f ) + 1
        local ret : [byte] = [len:byte]
        fseek(f, 0i64, SEEK_SET)
        -- FIXME make sure we read the whole file...
        fread( ret, 1, len, f )
        fclose( f );

        -- make sure we null term
        ret[len-1] = 0u8

        io.println( "read " .. file_path )

        return ret
    else
        io.println( "could not open " .. file_path )
    end

    local ret : [byte]
    return ret
end

function read_file_as_string( file_path : String ) : String
    return string(read_file(file_path))
end