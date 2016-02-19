module demo

require io
require math

require log
require shader
require util

require glfw
require gl

!main
function main(args:[String]): int

    if (glfw.Init() == 0) then
        log.err("Could not init GLFW")
        return 1
    end
    local major : [int] = [1:int]
    local minor : [int] = [1:int]
    local rev   : [int] = [1:int]
    glfw.GetVersion(major, minor, rev)
    log.deb("GLFW " .. major[0] .. "." .. minor[0] .. "." .. rev[0])

    -- create window and hint for context
    glfw.WindowHint(glfw.GLFW_CONTEXT_VERSION_MAJOR as int, 3)
    glfw.WindowHint(glfw.GLFW_CONTEXT_VERSION_MINOR as int, 2)
    glfw.WindowHint(glfw.GLFW_OPENGL_FORWARD_COMPAT as int, gl.GL_TRUE as int)
    glfw.WindowHint(glfw.GLFW_OPENGL_PROFILE as int, glfw.GLFW_OPENGL_CORE_PROFILE as int)

    local window = glfw.CreateWindow( 720, 480, "solen", nil, nil)
    glfw.ShowWindow( window )
    gl.glClearColor(0.2f, 0.2f, 0.2f, 1.0f)

    -- log.ok(util.read_file_as_string("README.md"))

    -- check what context version we got
    local ogl_ver_major = glfw.GetWindowAttrib( window, glfw.GLFW_CONTEXT_VERSION_MAJOR)
    local ogl_ver_minor = glfw.GetWindowAttrib( window, glfw.GLFW_CONTEXT_VERSION_MINOR)
    local ogl_ver_rev = glfw.GetWindowAttrib( window, glfw.GLFW_CONTEXT_REVISION)
    log.deb("OpenGL context " .. ogl_ver_major .. "." .. ogl_ver_minor .. "." .. ogl_ver_rev)

    while (glfw.WindowShouldClose(window) == 0) do
        gl.glClearColor(util.random(), 0.2f, 0.2f, 1.0f)
        gl.glClear(gl.GL_COLOR_BUFFER_BIT as uint32)

        glfw.SwapBuffers(window)
        glfw.PollEvents()
    end

    glfw.Terminate()

    return 0

end