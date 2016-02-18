module gl

require io
require C

GL_DEPTH_BUFFER_BIT               : uint32 = 0x00000100u32
GL_STENCIL_BUFFER_BIT             : uint32 = 0x00000400u32
GL_COLOR_BUFFER_BIT               : uint32 = 0x00004000u32
GL_FALSE                          : uint32 = 0u32
GL_TRUE                           : uint32 = 1u32
GL_POINTS                         : uint32 = 0x0000u32
GL_LINES                          : uint32 = 0x0001u32
GL_LINE_LOOP                      : uint32 = 0x0002u32
GL_LINE_STRIP                     : uint32 = 0x0003u32
GL_TRIANGLES                      : uint32 = 0x0004u32
GL_TRIANGLE_STRIP                 : uint32 = 0x0005u32
GL_TRIANGLE_FAN                   : uint32 = 0x0006u32
GL_QUADS                          : uint32 = 0x0007u32
GL_NEVER                          : uint32 = 0x0200u32
GL_LESS                           : uint32 = 0x0201u32
GL_EQUAL                          : uint32 = 0x0202u32
GL_LEQUAL                         : uint32 = 0x0203u32
GL_GREATER                        : uint32 = 0x0204u32
GL_NOTEQUAL                       : uint32 = 0x0205u32
GL_GEQUAL                         : uint32 = 0x0206u32
GL_ALWAYS                         : uint32 = 0x0207u32
GL_ZERO                           : uint32 = 0u32
GL_ONE                            : uint32 = 1u32
GL_SRC_COLOR                      : uint32 = 0x0300u32
GL_ONE_MINUS_SRC_COLOR            : uint32 = 0x0301u32
GL_SRC_ALPHA                      : uint32 = 0x0302u32
GL_ONE_MINUS_SRC_ALPHA            : uint32 = 0x0303u32
GL_DST_ALPHA                      : uint32 = 0x0304u32
GL_ONE_MINUS_DST_ALPHA            : uint32 = 0x0305u32
GL_DST_COLOR                      : uint32 = 0x0306u32
GL_ONE_MINUS_DST_COLOR            : uint32 = 0x0307u32
GL_SRC_ALPHA_SATURATE             : uint32 = 0x0308u32
GL_NONE                           : uint32 = 0u32
GL_FRONT_LEFT                     : uint32 = 0x0400u32
GL_FRONT_RIGHT                    : uint32 = 0x0401u32
GL_BACK_LEFT                      : uint32 = 0x0402u32
GL_BACK_RIGHT                     : uint32 = 0x0403u32
GL_FRONT                          : uint32 = 0x0404u32
GL_BACK                           : uint32 = 0x0405u32
GL_LEFT                           : uint32 = 0x0406u32
GL_RIGHT                          : uint32 = 0x0407u32
GL_FRONT_AND_BACK                 : uint32 = 0x0408u32
GL_NO_ERROR                       : uint32 = 0u32
GL_INVALID_ENUM                   : uint32 = 0x0500u32
GL_INVALID_VALUE                  : uint32 = 0x0501u32
GL_INVALID_OPERATION              : uint32 = 0x0502u32
GL_OUT_OF_MEMORY                  : uint32 = 0x0505u32
GL_CW                             : uint32 = 0x0900u32
GL_CCW                            : uint32 = 0x0901u32
GL_POINT_SIZE                     : uint32 = 0x0B11u32
GL_POINT_SIZE_RANGE               : uint32 = 0x0B12u32
GL_POINT_SIZE_GRANULARITY         : uint32 = 0x0B13u32
GL_LINE_SMOOTH                    : uint32 = 0x0B20u32
GL_LINE_WIDTH                     : uint32 = 0x0B21u32
GL_LINE_WIDTH_RANGE               : uint32 = 0x0B22u32
GL_LINE_WIDTH_GRANULARITY         : uint32 = 0x0B23u32
GL_POLYGON_MODE                   : uint32 = 0x0B40u32
GL_POLYGON_SMOOTH                 : uint32 = 0x0B41u32
GL_CULL_FACE                      : uint32 = 0x0B44u32
GL_CULL_FACE_MODE                 : uint32 = 0x0B45u32
GL_FRONT_FACE                     : uint32 = 0x0B46u32
GL_DEPTH_RANGE                    : uint32 = 0x0B70u32
GL_DEPTH_TEST                     : uint32 = 0x0B71u32
GL_DEPTH_WRITEMASK                : uint32 = 0x0B72u32
GL_DEPTH_CLEAR_VALUE              : uint32 = 0x0B73u32
GL_DEPTH_FUNC                     : uint32 = 0x0B74u32
GL_STENCIL_TEST                   : uint32 = 0x0B90u32
GL_STENCIL_CLEAR_VALUE            : uint32 = 0x0B91u32
GL_STENCIL_FUNC                   : uint32 = 0x0B92u32
GL_STENCIL_VALUE_MASK             : uint32 = 0x0B93u32
GL_STENCIL_FAIL                   : uint32 = 0x0B94u32
GL_STENCIL_PASS_DEPTH_FAIL        : uint32 = 0x0B95u32
GL_STENCIL_PASS_DEPTH_PASS        : uint32 = 0x0B96u32
GL_STENCIL_REF                    : uint32 = 0x0B97u32
GL_STENCIL_WRITEMASK              : uint32 = 0x0B98u32
GL_VIEWPORT                       : uint32 = 0x0BA2u32
GL_DITHER                         : uint32 = 0x0BD0u32
GL_BLEND_DST                      : uint32 = 0x0BE0u32
GL_BLEND_SRC                      : uint32 = 0x0BE1u32
GL_BLEND                          : uint32 = 0x0BE2u32
GL_LOGIC_OP_MODE                  : uint32 = 0x0BF0u32
GL_COLOR_LOGIC_OP                 : uint32 = 0x0BF2u32
GL_DRAW_BUFFER                    : uint32 = 0x0C01u32
GL_READ_BUFFER                    : uint32 = 0x0C02u32
GL_SCISSOR_BOX                    : uint32 = 0x0C10u32
GL_SCISSOR_TEST                   : uint32 = 0x0C11u32
GL_COLOR_CLEAR_VALUE              : uint32 = 0x0C22u32
GL_COLOR_WRITEMASK                : uint32 = 0x0C23u32
GL_DOUBLEBUFFER                   : uint32 = 0x0C32u32
GL_STEREO                         : uint32 = 0x0C33u32
GL_LINE_SMOOTH_HINT               : uint32 = 0x0C52u32
GL_POLYGON_SMOOTH_HINT            : uint32 = 0x0C53u32
GL_UNPACK_SWAP_BYTES              : uint32 = 0x0CF0u32
GL_UNPACK_LSB_FIRST               : uint32 = 0x0CF1u32
GL_UNPACK_ROW_LENGTH              : uint32 = 0x0CF2u32
GL_UNPACK_SKIP_ROWS               : uint32 = 0x0CF3u32
GL_UNPACK_SKIP_PIXELS             : uint32 = 0x0CF4u32
GL_UNPACK_ALIGNMENT               : uint32 = 0x0CF5u32
GL_PACK_SWAP_BYTES                : uint32 = 0x0D00u32
GL_PACK_LSB_FIRST                 : uint32 = 0x0D01u32
GL_PACK_ROW_LENGTH                : uint32 = 0x0D02u32
GL_PACK_SKIP_ROWS                 : uint32 = 0x0D03u32
GL_PACK_SKIP_PIXELS               : uint32 = 0x0D04u32
GL_PACK_ALIGNMENT                 : uint32 = 0x0D05u32
GL_MAX_TEXTURE_SIZE               : uint32 = 0x0D33u32
GL_MAX_VIEWPORT_DIMS              : uint32 = 0x0D3Au32
GL_SUBPIXEL_BITS                  : uint32 = 0x0D50u32
GL_TEXTURE_1D                     : uint32 = 0x0DE0u32
GL_TEXTURE_2D                     : uint32 = 0x0DE1u32
GL_POLYGON_OFFSET_UNITS           : uint32 = 0x2A00u32
GL_POLYGON_OFFSET_POINT           : uint32 = 0x2A01u32
GL_POLYGON_OFFSET_LINE            : uint32 = 0x2A02u32
GL_POLYGON_OFFSET_FILL            : uint32 = 0x8037u32
GL_POLYGON_OFFSET_FACTOR          : uint32 = 0x8038u32
GL_TEXTURE_BINDING_1D             : uint32 = 0x8068u32
GL_TEXTURE_BINDING_2D             : uint32 = 0x8069u32
GL_TEXTURE_WIDTH                  : uint32 = 0x1000u32
GL_TEXTURE_HEIGHT                 : uint32 = 0x1001u32
GL_TEXTURE_INTERNAL_FORMAT        : uint32 = 0x1003u32
GL_TEXTURE_BORDER_COLOR           : uint32 = 0x1004u32
GL_TEXTURE_RED_SIZE               : uint32 = 0x805Cu32
GL_TEXTURE_GREEN_SIZE             : uint32 = 0x805Du32
GL_TEXTURE_BLUE_SIZE              : uint32 = 0x805Eu32
GL_TEXTURE_ALPHA_SIZE             : uint32 = 0x805Fu32
GL_DONT_CARE                      : uint32 = 0x1100u32
GL_FASTEST                        : uint32 = 0x1101u32
GL_NICEST                         : uint32 = 0x1102u32
GL_BYTE                           : uint32 = 0x1400u32
GL_UNSIGNED_BYTE                  : uint32 = 0x1401u32
GL_SHORT                          : uint32 = 0x1402u32
GL_UNSIGNED_SHORT                 : uint32 = 0x1403u32
GL_INT                            : uint32 = 0x1404u32
GL_UNSIGNED_INT                   : uint32 = 0x1405u32
GL_FLOAT                          : uint32 = 0x1406u32
GL_DOUBLE                         : uint32 = 0x140Au32
GL_STACK_OVERFLOW                 : uint32 = 0x0503u32
GL_STACK_UNDERFLOW                : uint32 = 0x0504u32
GL_CLEAR                          : uint32 = 0x1500u32
GL_AND                            : uint32 = 0x1501u32
GL_AND_REVERSE                    : uint32 = 0x1502u32
GL_COPY                           : uint32 = 0x1503u32
GL_AND_INVERTED                   : uint32 = 0x1504u32
GL_NOOP                           : uint32 = 0x1505u32
GL_XOR                            : uint32 = 0x1506u32
GL_OR                             : uint32 = 0x1507u32
GL_NOR                            : uint32 = 0x1508u32
GL_EQUIV                          : uint32 = 0x1509u32
GL_INVERT                         : uint32 = 0x150Au32
GL_OR_REVERSE                     : uint32 = 0x150Bu32
GL_COPY_INVERTED                  : uint32 = 0x150Cu32
GL_OR_INVERTED                    : uint32 = 0x150Du32
GL_NAND                           : uint32 = 0x150Eu32
GL_SET                            : uint32 = 0x150Fu32
GL_TEXTURE                        : uint32 = 0x1702u32
GL_COLOR                          : uint32 = 0x1800u32
GL_DEPTH                          : uint32 = 0x1801u32
GL_STENCIL                        : uint32 = 0x1802u32
GL_STENCIL_INDEX                  : uint32 = 0x1901u32
GL_DEPTH_COMPONENT                : uint32 = 0x1902u32
GL_RED                            : uint32 = 0x1903u32
GL_GREEN                          : uint32 = 0x1904u32
GL_BLUE                           : uint32 = 0x1905u32
GL_ALPHA                          : uint32 = 0x1906u32
GL_RGB                            : uint32 = 0x1907u32
GL_RGBA                           : uint32 = 0x1908u32
GL_POINT                          : uint32 = 0x1B00u32
GL_LINE                           : uint32 = 0x1B01u32
GL_FILL                           : uint32 = 0x1B02u32
GL_KEEP                           : uint32 = 0x1E00u32
GL_REPLACE                        : uint32 = 0x1E01u32
GL_INCR                           : uint32 = 0x1E02u32
GL_DECR                           : uint32 = 0x1E03u32
GL_VENDOR                         : uint32 = 0x1F00u32
GL_RENDERER                       : uint32 = 0x1F01u32
GL_VERSION                        : uint32 = 0x1F02u32
GL_EXTENSIONS                     : uint32 = 0x1F03u32
GL_NEAREST                        : uint32 = 0x2600u32
GL_LINEAR                         : uint32 = 0x2601u32
GL_NEAREST_MIPMAP_NEAREST         : uint32 = 0x2700u32
GL_LINEAR_MIPMAP_NEAREST          : uint32 = 0x2701u32
GL_NEAREST_MIPMAP_LINEAR          : uint32 = 0x2702u32
GL_LINEAR_MIPMAP_LINEAR           : uint32 = 0x2703u32
GL_TEXTURE_MAG_FILTER             : uint32 = 0x2800u32
GL_TEXTURE_MIN_FILTER             : uint32 = 0x2801u32
GL_TEXTURE_WRAP_S                 : uint32 = 0x2802u32
GL_TEXTURE_WRAP_T                 : uint32 = 0x2803u32
GL_PROXY_TEXTURE_1D               : uint32 = 0x8063u32
GL_PROXY_TEXTURE_2D               : uint32 = 0x8064u32
GL_REPEAT                         : uint32 = 0x2901u32
GL_R3_G3_B2                       : uint32 = 0x2A10u32
GL_RGB4                           : uint32 = 0x804Fu32
GL_RGB5                           : uint32 = 0x8050u32
GL_RGB8                           : uint32 = 0x8051u32
GL_RGB10                          : uint32 = 0x8052u32
GL_RGB12                          : uint32 = 0x8053u32
GL_RGB16                          : uint32 = 0x8054u32
GL_RGBA2                          : uint32 = 0x8055u32
GL_RGBA4                          : uint32 = 0x8056u32
GL_RGB5_A1                        : uint32 = 0x8057u32
GL_RGBA8                          : uint32 = 0x8058u32
GL_RGB10_A2                       : uint32 = 0x8059u32
GL_RGBA12                         : uint32 = 0x805Au32
GL_RGBA16                         : uint32 = 0x805Bu32
GL_VERTEX_ARRAY                   : uint32 = 0x8074u32

!nogc
extern glAccum(op : uint32, value : float)
!nogc
extern glAlphaFunc(func : uint32, ref : float)
!nogc
extern glAreTexturesResident(n : int, textures : [uint64], residences : [bool]) : bool
!nogc
extern glArrayElement(i : int)
!nogc
extern glBegin(mode : uint32)
!nogc
extern glBindTexture(target : uint32, texture : uint32)
!nogc
extern glBitmap(width : int, height : int, xorig : float, yorig : float, xmove : float, ymove : float, bitmap : [uint16])
!nogc
extern glBlendFunc(sfactor : uint32, dfactor : uint32)
!nogc
extern glCallList(list : uint32)
!nogc
extern glCallLists(n : int, type : uint32, lists : uint64)
!nogc
extern glClear(mask : uint32)
!nogc
extern glClearAccum(red : float, green : float, blue : float, alpha : float)
!nogc
extern glClearColor(red : float, green : float, blue : float, alpha : float)
!nogc
extern glClearDepth(depth : double)
!nogc
extern glClearIndex(c : float)
!nogc
extern glClearStencil(s : int)
!nogc
extern glClipPlane(plane : uint32, equation : [double])
!nogc
extern glColor3b(red : int16, green : int16, blue : int16)
!nogc
extern glColor3bv(v : [int16])
!nogc
extern glColor3d(red : double, green : double, blue : double)
!nogc
extern glColor3dv(v : [double])
!nogc
extern glColor3f(red : float, green : float, blue : float)
!nogc
extern glColor3fv(v : [float])
!nogc
extern glColor3i(red : int, green : int, blue : int)
!nogc
extern glColor3iv(v : [int])
!nogc
extern glColor3s(red : uint16, green : uint16, blue : uint16)
!nogc
extern glColor3sv(v : [uint16])
!nogc
extern glColor3ub(red : uint8, green : uint8, blue : uint8)
!nogc
extern glColor3ubv(v : [uint16])
!nogc
extern glColor3ui(red : uint64, green : uint64, blue : uint32)
!nogc
extern glColor3uiv(v : [uint64])
!nogc
extern glColor3us(red : uint16, green : uint16, blue : uint16)
!nogc
extern glColor3usv(v : [uint16])
!nogc
extern glColor4b(red : int16, green : int16, blue : int16, alpha : int16)
!nogc
extern glColor4bv(v : [int16])
!nogc
extern glColor4d(red : double, green : double, blue : double, alpha : double)
!nogc
extern glColor4dv(v : [double])
!nogc
extern glColor4f(red : float, green : float, blue : float, alpha : float)
!nogc
extern glColor4fv(v : [float])
!nogc
extern glColor4i(red : int, green : int, blue : int, alpha : int)
!nogc
extern glColor4iv(v : [int])
!nogc
extern glColor4s(red : uint16, green : uint16, blue : uint16, alpha : uint16)
!nogc
extern glColor4sv(v : [uint16])
!nogc
extern glColor4ub(red : uint8, green : uint8, blue : uint8, alpha : uint8)
!nogc
extern glColor4ubv(v : [uint16])
!nogc
extern glColor4ui(red : uint64, green : uint64, blue : uint64, alpha : uint32)
!nogc
extern glColor4uiv(v : [uint64])
!nogc
extern glColor4us(red : uint16, green : uint16, blue : uint16, alpha : uint16)
!nogc
extern glColor4usv(v : [uint16])
!nogc
extern glColorMask(red : bool, green : bool, blue : bool, alpha : bool)
!nogc
extern glColorMaterial(face : uint32, mode : uint32)
!nogc
extern glColorPointer(size : int, type : uint32, stride : int, pointer : uint64)
!nogc
extern glCopyPixels(x : int, y : int, width : int, height : int, type : uint32)
!nogc
extern glCopyTexImage1D(target : uint32, level : int, internalFormat : uint32, x : int, y : int, width : int, border : int)
!nogc
extern glCopyTexImage2D(target : uint32, level : int, internalFormat : uint32, x : int, y : int, width : int, height : int, border : int)
!nogc
extern glCopyTexSubImage1D(target : uint32, level : int, xoffset : int, x : int, y : int, width : int)
!nogc
extern glCopyTexSubImage2D(target : uint32, level : int, xoffset : int, yoffset : int, x : int, y : int, width : int, height : int)
!nogc
extern glCullFace(mode : uint32)
!nogc
extern glDeleteLists(list : uint64, range : int)
!nogc
extern glDeleteTextures(n : int, textures : [uint64])
!nogc
extern glDepthFunc(func : uint32)
!nogc
extern glDepthMask(flag : bool)
!nogc
extern glDepthRange (zNear : double, zFar : double)
!nogc
extern glDisable(cap : uint32)
!nogc
extern glDisableClientState(array : uint32)
!nogc
extern glDrawArrays(mode : uint32, first : int, count : int)
!nogc
extern glDrawBuffer(mode : uint32)
!nogc
extern glDrawElements(mode : uint32, count : int, type : uint32, indices : uint64)
!nogc
extern glDrawPixels(width : int, height : int, format : uint32, type : uint32, pixels : uint64)
!nogc
extern glEdgeFlag(flag : bool)
!nogc
extern glEdgeFlagPointer(stride : int, pointer : uint64)
!nogc
extern glEdgeFlagv(flag : [bool])
!nogc
extern glEnable(cap : uint32)
!nogc
extern glEnableClientState(array : uint32)
!nogc
extern glEnd()
!nogc
extern glEndList()
!nogc
extern glEvalCoord1d(u : double)
!nogc
extern glEvalCoord1dv(u : [double])
!nogc
extern glEvalCoord1f(u : float)
!nogc
extern glEvalCoord1fv(u : [float])
!nogc
extern glEvalCoord2d(u : double, v : double)
!nogc
extern glEvalCoord2dv(u : [double])
!nogc
extern glEvalCoord2f(u : float, v : float)
!nogc
extern glEvalCoord2fv(u : [float])
!nogc
extern glEvalMesh1(mode : uint32, i1 : int, i2 : int)
!nogc
extern glEvalMesh2(mode : uint32, i1 : int, i2 : int, j1 : int, j2 : int)
!nogc
extern glEvalPoint1(i : int)
!nogc
extern glEvalPoint2(i : int, j : int)
!nogc
extern glFeedbackBuffer(size : int, type : uint32, buffer : [float])
!nogc
extern glFinish()
!nogc
extern glFlush()
!nogc
extern glFogf(pname : uint32, param : float)
!nogc
extern glFogfv(pname : uint32, params : [float])
!nogc
extern glFogi(pname : uint32, param : int)
!nogc
extern glFogiv(pname : uint32, params : [int])
!nogc
extern glFrontFace(mode : uint32)
!nogc
extern glFrustum(left : double, right : double, bottom : double, top : double, zNear : double, zFar : double)
!nogc
extern glGenLists(range : int) : uint64
!nogc
extern glGenTextures(n : int, textures : [uint64])
!nogc
extern glGetBooleanv(pname : uint32, params : [bool])
!nogc
extern glGetClipPlane(plane : uint32, equation : [double])
!nogc
extern glGetDoublev(pname : uint32, params : [double])
!nogc
extern glGetError() : uint32
!nogc
extern glGetFloatv(pname : uint32, params : [float])
!nogc
extern glGetIntegerv(pname : uint32, params : [int])
!nogc
extern glGetLightfv(light : uint32, pname : uint32, params : [float])
!nogc
extern glGetLightiv(light : uint32, pname : uint32, params : [int])
!nogc
extern glGetMapdv(target : uint32, query : uint32, v : [double])
!nogc
extern glGetMapfv(target : uint32, query : uint32, v : [float])
!nogc
extern glGetMapiv(target : uint32, query : uint32, v : [int])
!nogc
extern glGetMaterialfv(face : uint32, pname : uint32, params : [float])
!nogc
extern glGetMaterialiv(face : uint32, pname : uint32, params : [int])
!nogc
extern glGetPixelMapfv(map : uint32, values : [float])
!nogc
extern glGetPixelMapuiv(map : uint32, values : [uint64])
!nogc
extern glGetPixelMapusv(map : uint32, values : [uint16])
!nogc
extern glGetPointerv(pname : uint32, params : [uint64])
!nogc
extern glGetPolygonStipple(mask : [uint16])
!nogc
extern glGetString(name : uint32) : String
!nogc
extern glGetTexEnvfv(target : uint32, pname : uint32, params : [float])
!nogc
extern glGetTexEnviv(target : uint32, pname : uint32, params : [int])
!nogc
extern glGetTexGendv(coord : uint32, pname : uint32, params : [double])
!nogc
extern glGetTexGenfv(coord : uint32, pname : uint32, params : [float])
!nogc
extern glGetTexGeniv(coord : uint32, pname : uint32, params : [int])
!nogc
extern glGetTexImage(target : uint32, level : int, format : uint32, type : uint32, pixels : uint64)
!nogc
extern glGetTexLevelParameterfv(target : uint32, level : int, pname : uint32, params : [float])
!nogc
extern glGetTexLevelParameteriv(target : uint32, level : int, pname : uint32, params : [int])
!nogc
extern glGetTexParameterfv(target : uint32, pname : uint32, params : [float])
!nogc
extern glGetTexParameteriv(target : uint32, pname : uint32, params : [int])
!nogc
extern glHint(target : uint32, mode : uint32)
!nogc
extern glIndexMask(mask : uint32)
!nogc
extern glIndexPointer(type : uint32, stride : int, pointer : uint64)
!nogc
extern glIndexd(c : double)
!nogc
extern glIndexdv(c : [double])
!nogc
extern glIndexf(c : float)
!nogc
extern glIndexfv(c : [float])
!nogc
extern glIndexi(c : int)
!nogc
extern glIndexiv(c : [int])
!nogc
extern glIndexs(c : uint16)
!nogc
extern glIndexsv(c : [uint16])
!nogc
extern glIndexub(c : uint8)
!nogc
extern glIndexubv(c : [uint16])
!nogc
extern glInitNames()
!nogc
extern glInterleavedArrays(format : uint32, stride : int, pointer : uint64)
!nogc
extern glIsEnabled(cap : uint32) : bool
!nogc
extern glIsList(list : uint32) : bool
!nogc
extern glIsTexture(texture : uint32) : bool
!nogc
extern glLightModelf(pname : uint32, param : float)
!nogc
extern glLightModelfv(pname : uint32, params : [float])
!nogc
extern glLightModeli(pname : uint32, param : int)
!nogc
extern glLightModeliv(pname : uint32, params : [int])
!nogc
extern glLightf(light : uint32, pname : uint32, param : float)
!nogc
extern glLightfv(light : uint32, pname : uint32, params : [float])
!nogc
extern glLighti(light : uint32, pname : uint32, param : int)
!nogc
extern glLightiv(light : uint32, pname : uint32, params : [int])
!nogc
extern glLineStipple(factor : int, pattern : uint16)
!nogc
extern glLineWidth(width : float)
!nogc
extern glListBase(base : uint32)
!nogc
extern glLoadIdentity()
!nogc
extern glLoadMatrixd(m : [double])
!nogc
extern glLoadMatrixf(m : [float])
!nogc
extern glLoadName(name : uint32)
!nogc
extern glLogicOp(opcode : uint32)
!nogc
extern glMap1d(target : uint32, u1 : double, u2 : double, stride : int, order : int, points : [double])
!nogc
extern glMap1f(target : uint32, u1 : float, u2 : float, stride : int, order : int, points : [float])
!nogc
extern glMap2d(target : uint32, u1 : double, u2 : double, ustride : int, uorder : int, v1 : double, v2 : double, vstride : int, vorder : int, points : [double])
!nogc
extern glMap2f(target : uint32, u1 : float, u2 : float, ustride : int, uorder : int, v1 : float, v2 : float, vstride : int, vorder : int, points : [float])
!nogc
extern glMapGrid1d(un : int, u1 : double, u2 : double)
!nogc
extern glMapGrid1f(un : int, u1 : float, u2 : float)
!nogc
extern glMapGrid2d(un : int, u1 : double, u2 : double, vn : int, v1 : double, v2 : double)
!nogc
extern glMapGrid2f(un : int, u1 : float, u2 : float, vn : int, v1 : float, v2 : float)
!nogc
extern glMaterialf(face : uint32, pname : uint32, param : float)
!nogc
extern glMaterialfv(face : uint32, pname : uint32, params : [float])
!nogc
extern glMateriali(face : uint32, pname : uint32, param : int)
!nogc
extern glMaterialiv(face : uint32, pname : uint32, params : [int])
!nogc
extern glMatrixMode(mode : uint32)
!nogc
extern glMultMatrixd(m : [double])
!nogc
extern glMultMatrixf(m : [float])
!nogc
extern glNewList(list : uint64, mode : uint32)
!nogc
extern glNormal3b (nx : int16, ny : int16, nz : int16)
!nogc
extern glNormal3bv(v : [int16])
!nogc
extern glNormal3d(nx : double, ny : double, nz : double)
!nogc
extern glNormal3dv(v : [double])
!nogc
extern glNormal3f(nx : float, ny : float, nz : float)
!nogc
extern glNormal3fv(v : [float])
!nogc
extern glNormal3i(nx : int, ny : int, nz : int)
!nogc
extern glNormal3iv(v : [int])
!nogc
extern glNormal3s(nx : uint16, ny : uint16, nz : uint16)
!nogc
extern glNormal3sv(v : [uint16])
!nogc
extern glNormalPointer(type : uint32, stride : int, pointer : uint64)
!nogc
extern glOrtho(left : double, right : double, bottom : double, top : double, zNear : double, zFar : double)
!nogc
extern glPassThrough(token : float)
!nogc
extern glPixelMapfv(map : uint32, mapsize : int, values : [float])
!nogc
extern glPixelMapuiv(map : uint32, mapsize : int, values : [uint64])
!nogc
extern glPixelMapusv(map : uint32, mapsize : int, values : [uint16])
!nogc
extern glPixelStoref(pname : uint32, param : float)
!nogc
extern glPixelStorei(pname : uint32, param : int)
!nogc
extern glPixelTransferf(pname : uint32, param : float)
!nogc
extern glPixelTransferi(pname : uint32, param : int)
!nogc
extern glPixelZoom(xfactor : float, yfactor : float)
!nogc
extern glPointSize(size : float)
!nogc
extern glPolygonMode(face : uint32, mode : uint32)
!nogc
extern glPolygonOffset(factor : float, units : float)
!nogc
extern glPolygonStipple(mask : [uint16])
!nogc
extern glPopAttrib()
!nogc
extern glPopClientAttrib()
!nogc
extern glPopMatrix()
!nogc
extern glPopName()
!nogc
extern glPrioritizeTextures(n : int, textures : [uint64], priorities : [float])
!nogc
extern glPushAttrib(mask : uint32)
!nogc
extern glPushClientAttrib(mask : uint32)
!nogc
extern glPushMatrix()
!nogc
extern glPushName(name : uint32)
!nogc
extern glRasterPos2d(x : double, y : double)
!nogc
extern glRasterPos2dv(v : [double])
!nogc
extern glRasterPos2f(x : float, y : float)
!nogc
extern glRasterPos2fv(v : [float])
!nogc
extern glRasterPos2i(x : int, y : int)
!nogc
extern glRasterPos2iv(v : [int])
!nogc
extern glRasterPos2s(x : uint16, y : uint16)
!nogc
extern glRasterPos2sv(v : [uint16])
!nogc
extern glRasterPos3d(x : double, y : double, z : double)
!nogc
extern glRasterPos3dv(v : [double])
!nogc
extern glRasterPos3f(x : float, y : float, z : float)
!nogc
extern glRasterPos3fv(v : [float])
!nogc
extern glRasterPos3i(x : int, y : int, z : int)
!nogc
extern glRasterPos3iv(v : [int])
!nogc
extern glRasterPos3s(x : uint16, y : uint16, z : uint16)
!nogc
extern glRasterPos3sv(v : [uint16])
!nogc
extern glRasterPos4d(x : double, y : double, z : double, w : double)
!nogc
extern glRasterPos4dv(v : [double])
!nogc
extern glRasterPos4f(x : float, y : float, z : float, w : float)
!nogc
extern glRasterPos4fv(v : [float])
!nogc
extern glRasterPos4i(x : int, y : int, z : int, w : int)
!nogc
extern glRasterPos4iv(v : [int])
!nogc
extern glRasterPos4s(x : uint16, y : uint16, z : uint16, w : uint16)
!nogc
extern glRasterPos4sv(v : [uint16])
!nogc
extern glReadBuffer(mode : uint32)
!nogc
extern glReadPixels(x : int, y : int, width : int, height : int, format : uint32, type : uint32, pixels : uint64)
!nogc
extern glRectd(x1 : double, y1 : double, x2 : double, y2 : double)
!nogc
extern glRectdv(v1 : [double], v2 : [double])
!nogc
extern glRectf(x1 : float, y1 : float, x2 : float, y2 : float)
!nogc
extern glRectfv(v1 : [float], v2 : [float])
!nogc
extern glRecti(x1 : int, y1 : int, x2 : int, y2 : int)
!nogc
extern glRectiv(v1 : [int], v2 : [int])
!nogc
extern glRects(x1 : uint16, y1 : uint16, x2 : uint16, y2 : uint16)
!nogc
extern glRectsv(v1 : [uint16], v2 : [uint16])
!nogc
extern glRenderMode(mode : uint32) : int
!nogc
extern glRotated(angle : double, x : double, y : double, z : double)
!nogc
extern glRotatef(angle : float, x : float, y : float, z : float)
!nogc
extern glScaled(x : double, y : double, z : double)
!nogc
extern glScalef(x : float, y : float, z : float)
!nogc
extern glScissor(x : int, y : int, width : int, height : int)
!nogc
extern glSelectBuffer(size : int, buffer : [uint64])
!nogc
extern glShadeModel(mode : uint32)
!nogc
extern glStencilFunc(func : uint32, ref : int, mask : uint32)
!nogc
extern glStencilMask(mask : uint32)
!nogc
extern glStencilOp(fail : uint32, zfail : uint32, zpass : uint32)
!nogc
extern glTexCoord1d(s : double)
!nogc
extern glTexCoord1dv(v : [double])
!nogc
extern glTexCoord1f(s : float)
!nogc
extern glTexCoord1fv(v : [float])
!nogc
extern glTexCoord1i(s : int)
!nogc
extern glTexCoord1iv(v : [int])
!nogc
extern glTexCoord1s(s : uint16)
!nogc
extern glTexCoord1sv(v : [uint16])
!nogc
extern glTexCoord2d(s : double, t : double)
!nogc
extern glTexCoord2dv(v : [double])
!nogc
extern glTexCoord2f(s : float, t : float)
!nogc
extern glTexCoord2fv(v : [float])
!nogc
extern glTexCoord2i(s : int, t : int)
!nogc
extern glTexCoord2iv(v : [int])
!nogc
extern glTexCoord2s(s : uint16, t : uint16)
!nogc
extern glTexCoord2sv(v : [uint16])
!nogc
extern glTexCoord3d(s : double, t : double, r : double)
!nogc
extern glTexCoord3dv(v : [double])
!nogc
extern glTexCoord3f(s : float, t : float, r : float)
!nogc
extern glTexCoord3fv(v : [float])
!nogc
extern glTexCoord3i(s : int, t : int, r : int)
!nogc
extern glTexCoord3iv(v : [int])
!nogc
extern glTexCoord3s(s : uint16, t : uint16, r : uint16)
!nogc
extern glTexCoord3sv(v : [uint16])
!nogc
extern glTexCoord4d(s : double, t : double, r : double, q : double)
!nogc
extern glTexCoord4dv(v : [double])
!nogc
extern glTexCoord4f(s : float, t : float, r : float, q : float)
!nogc
extern glTexCoord4fv(v : [float])
!nogc
extern glTexCoord4i(s : int, t : int, r : int, q : int)
!nogc
extern glTexCoord4iv(v : [int])
!nogc
extern glTexCoord4s(s : uint16, t : uint16, r : uint16, q : uint16)
!nogc
extern glTexCoord4sv(v : [uint16])
!nogc
extern glTexCoordPointer(size : int, type : uint32, stride : int, pointer : uint64)
!nogc
extern glTexEnvf(target : uint32, pname : uint32, param : float)
!nogc
extern glTexEnvfv(target : uint32, pname : uint32, params : [float])
!nogc
extern glTexEnvi(target : uint32, pname : uint32, param : int)
!nogc
extern glTexEnviv(target : uint32, pname : uint32, params : [int])
!nogc
extern glTexGend(coord : uint32, pname : uint32, param : double)
!nogc
extern glTexGendv(coord : uint32, pname : uint32, params : [double])
!nogc
extern glTexGenf(coord : uint32, pname : uint32, param : float)
!nogc
extern glTexGenfv(coord : uint32, pname : uint32, params : [float])
!nogc
extern glTexGeni(coord : uint32, pname : uint32, param : int)
!nogc
extern glTexGeniv(coord : uint32, pname : uint32, params : [int])
!nogc
extern glTexImage1D(target : uint32, level : int, internalformat : int, width : int, border : int, format : uint32, type : uint32, pixels : uint64)
!nogc
extern glTexImage2D(target : uint32, level : int, internalformat : int, width : int, height : int, border : int, format : uint32, type : uint32, pixels : uint64)
!nogc
extern glTexParameterf(target : uint32, pname : uint32, param : float)
!nogc
extern glTexParameterfv(target : uint32, pname : uint32, params : [float])
!nogc
extern glTexParameteri(target : uint32, pname : uint32, param : int)
!nogc
extern glTexParameteriv(target : uint32, pname : uint32, params : [int])
!nogc
extern glTexSubImage1D(target : uint32, level : int, xoffset : int, width : int, format : uint32, type : uint32, pixels : uint64)
!nogc
extern glTexSubImage2D(target : uint32, level : int, xoffset : int, yoffset : int, width : int, height : int, format : uint32, type : uint32, pixels : uint64)
!nogc
extern glTranslated(x : double, y : double, z : double)
!nogc
extern glTranslatef(x : float, y : float, z : float)
!nogc
extern glVertex2d(x : double, y : double)
!nogc
extern glVertex2dv(v : [double])
!nogc
extern glVertex2f(x : float, y : float)
!nogc
extern glVertex2fv(v : [float])
!nogc
extern glVertex2i(x : int, y : int)
!nogc
extern glVertex2iv(v : [int])
!nogc
extern glVertex2s(x : uint16, y : uint16)
!nogc
extern glVertex2sv(v : [uint16])
!nogc
extern glVertex3d(x : double, y : double, z : double)
!nogc
extern glVertex3dv(v : [double])
!nogc
extern glVertex3f(x : float, y : float, z : float)
!nogc
extern glVertex3fv(v : [float])
!nogc
extern glVertex3i(x : int, y : int, z : int)
!nogc
extern glVertex3iv(v : [int])
!nogc
extern glVertex3s(x : uint16, y : uint16, z : uint16)
!nogc
extern glVertex3sv(v : [uint16])
!nogc
extern glVertex4d(x : double, y : double, z : double, w : double)
!nogc
extern glVertex4dv(v : [double])
!nogc
extern glVertex4f(x : float, y : float, z : float, w : float)
!nogc
extern glVertex4fv(v : [float])
!nogc
extern glVertex4i(x : int, y : int, z : int, w : int)
!nogc
extern glVertex4iv(v : [int])
!nogc
extern glVertex4s(x : uint16, y : uint16, z : uint16, w : uint16)
!nogc
extern glVertex4sv(v : [uint16])
!nogc
extern glVertexPointer(size : int, type : uint32, stride : int, pointer : uint64)
!nogc
extern glViewport(x : int, y : int, width : int, height : int)


-- ogl 2.x
GL_BLEND_EQUATION_RGB             : uint32 = 0x8009u32
GL_VERTEX_ATTRIB_ARRAY_ENABLED    : uint32 = 0x8622u32
GL_VERTEX_ATTRIB_ARRAY_SIZE       : uint32 = 0x8623u32
GL_VERTEX_ATTRIB_ARRAY_STRIDE     : uint32 = 0x8624u32
GL_VERTEX_ATTRIB_ARRAY_TYPE       : uint32 = 0x8625u32
GL_CURRENT_VERTEX_ATTRIB          : uint32 = 0x8626u32
GL_VERTEX_PROGRAM_POINT_SIZE      : uint32 = 0x8642u32
GL_VERTEX_ATTRIB_ARRAY_POINTER    : uint32 = 0x8645u32
GL_STENCIL_BACK_FUNC              : uint32 = 0x8800u32
GL_STENCIL_BACK_FAIL              : uint32 = 0x8801u32
GL_STENCIL_BACK_PASS_DEPTH_FAIL   : uint32 = 0x8802u32
GL_STENCIL_BACK_PASS_DEPTH_PASS   : uint32 = 0x8803u32
GL_MAX_DRAW_BUFFERS               : uint32 = 0x8824u32
GL_DRAW_BUFFER0                   : uint32 = 0x8825u32
GL_DRAW_BUFFER1                   : uint32 = 0x8826u32
GL_DRAW_BUFFER2                   : uint32 = 0x8827u32
GL_DRAW_BUFFER3                   : uint32 = 0x8828u32
GL_DRAW_BUFFER4                   : uint32 = 0x8829u32
GL_DRAW_BUFFER5                   : uint32 = 0x882Au32
GL_DRAW_BUFFER6                   : uint32 = 0x882Bu32
GL_DRAW_BUFFER7                   : uint32 = 0x882Cu32
GL_DRAW_BUFFER8                   : uint32 = 0x882Du32
GL_DRAW_BUFFER9                   : uint32 = 0x882Eu32
GL_DRAW_BUFFER10                  : uint32 = 0x882Fu32
GL_DRAW_BUFFER11                  : uint32 = 0x8830u32
GL_DRAW_BUFFER12                  : uint32 = 0x8831u32
GL_DRAW_BUFFER13                  : uint32 = 0x8832u32
GL_DRAW_BUFFER14                  : uint32 = 0x8833u32
GL_DRAW_BUFFER15                  : uint32 = 0x8834u32
GL_BLEND_EQUATION_ALPHA           : uint32 = 0x883Du32
GL_MAX_VERTEX_ATTRIBS             : uint32 = 0x8869u32
GL_VERTEX_ATTRIB_ARRAY_NORMALIZED : uint32 = 0x886Au32
GL_MAX_TEXTURE_IMAGE_UNITS        : uint32 = 0x8872u32
GL_FRAGMENT_SHADER                : uint32 = 0x8B30u32
GL_VERTEX_SHADER                  : uint32 = 0x8B31u32
GL_MAX_FRAGMENT_UNIFORM_COMPONENTS : uint32 = 0x8B49u32
GL_MAX_VERTEX_UNIFORM_COMPONENTS  : uint32 = 0x8B4Au32
GL_MAX_VARYING_FLOATS             : uint32 = 0x8B4Bu32
GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS : uint32 = 0x8B4Cu32
GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS : uint32 = 0x8B4Du32
GL_SHADER_TYPE                    : uint32 = 0x8B4Fu32
GL_FLOAT_VEC2                     : uint32 = 0x8B50u32
GL_FLOAT_VEC3                     : uint32 = 0x8B51u32
GL_FLOAT_VEC4                     : uint32 = 0x8B52u32
GL_INT_VEC2                       : uint32 = 0x8B53u32
GL_INT_VEC3                       : uint32 = 0x8B54u32
GL_INT_VEC4                       : uint32 = 0x8B55u32
GL_BOOL                           : uint32 = 0x8B56u32
GL_BOOL_VEC2                      : uint32 = 0x8B57u32
GL_BOOL_VEC3                      : uint32 = 0x8B58u32
GL_BOOL_VEC4                      : uint32 = 0x8B59u32
GL_FLOAT_MAT2                     : uint32 = 0x8B5Au32
GL_FLOAT_MAT3                     : uint32 = 0x8B5Bu32
GL_FLOAT_MAT4                     : uint32 = 0x8B5Cu32
GL_SAMPLER_1D                     : uint32 = 0x8B5Du32
GL_SAMPLER_2D                     : uint32 = 0x8B5Eu32
GL_SAMPLER_3D                     : uint32 = 0x8B5Fu32
GL_SAMPLER_CUBE                   : uint32 = 0x8B60u32
GL_SAMPLER_1D_SHADOW              : uint32 = 0x8B61u32
GL_SAMPLER_2D_SHADOW              : uint32 = 0x8B62u32
GL_DELETE_STATUS                  : uint32 = 0x8B80u32
GL_COMPILE_STATUS                 : uint32 = 0x8B81u32
GL_LINK_STATUS                    : uint32 = 0x8B82u32
GL_VALIDATE_STATUS                : uint32 = 0x8B83u32
GL_INFO_LOG_LENGTH                : uint32 = 0x8B84u32
GL_ATTACHED_SHADERS               : uint32 = 0x8B85u32
GL_ACTIVE_UNIFORMS                : uint32 = 0x8B86u32
GL_ACTIVE_UNIFORM_MAX_LENGTH      : uint32 = 0x8B87u32
GL_SHADER_SOURCE_LENGTH           : uint32 = 0x8B88u32
GL_ACTIVE_ATTRIBUTES              : uint32 = 0x8B89u32
GL_ACTIVE_ATTRIBUTE_MAX_LENGTH    : uint32 = 0x8B8Au32
GL_FRAGMENT_SHADER_DERIVATIVE_HINT : uint32 = 0x8B8Bu32
GL_SHADING_LANGUAGE_VERSION       : uint32 = 0x8B8Cu32
GL_CURRENT_PROGRAM                : uint32 = 0x8B8Du32
GL_POINT_SPRITE_COORD_ORIGIN      : uint32 = 0x8CA0u32
GL_LOWER_LEFT                     : uint32 = 0x8CA1u32
GL_UPPER_LEFT                     : uint32 = 0x8CA2u32
GL_STENCIL_BACK_REF               : uint32 = 0x8CA3u32
GL_STENCIL_BACK_VALUE_MASK        : uint32 = 0x8CA4u32
GL_STENCIL_BACK_WRITEMASK         : uint32 = 0x8CA5u32






!nogc
extern glBlendEquationSeparate (modeRGB : uint32, modeAlpha : uint32)
!nogc
extern glDrawBuffers (n : int, bufs : [uint32])
!nogc
extern glStencilOpSeparate (face : uint32, sfail : uint32, dpfail : uint32, dppass : uint32)
!nogc
extern glStencilFuncSeparate (face : uint32, func : uint32, ref : int, mask : uint32)
!nogc
extern glStencilMaskSeparate (face : uint32, mask : uint32)
!nogc
extern glAttachShader (program : uint32, shader : uint32)
!nogc
extern glBindAttribLocation (program : uint32, index : uint32, name : String)
!nogc
extern glCompileShader (shader : uint32)
!nogc
extern glCreateProgram () : uint32
!nogc
extern glCreateShader (type : uint32) : uint32
!nogc
extern glDeleteProgram (program : uint32)
!nogc
extern glDeleteShader (shader : uint32)
!nogc
extern glDetachShader (program : uint32, shader : uint32)
!nogc
extern glDisableVertexAttribArray (index : uint32)
!nogc
extern glEnableVertexAttribArray (index : uint32)
!nogc
extern glGetActiveAttrib (program : uint32, index : uint32, bufSize : int, length : [int], size : [int], type : [uint32], name : String)
!nogc
extern glGetActiveUniform (program : uint32, index : uint32, bufSize : int, length : [int], size : [int], type : [uint32], name : String)
!nogc
extern glGetAttachedShaders (program : uint32, maxCount : int, count : [int], shaders : [uint32])
!nogc
extern glGetAttribLocation (program : uint32, name : String) : int
!nogc
extern glGetProgramiv (program : uint32, pname : uint32, params : [int])
!nogc
extern glGetProgramInfoLog (program : uint32, bufSize : int, length : [int], infoLog : String)
!nogc
extern glGetShaderiv (shader : uint32, pname : uint32, params : [int])
!nogc
extern glGetShaderInfoLog (shader : uint32, bufSize : int, length : [int], infoLog : String)
!nogc
extern glGetShaderSource (shader : uint32, bufSize : int, length : [int], source : String)
!nogc
extern glGetUniformLocation (program : uint32, name : String) : int
!nogc
extern glGetUniformfv (program : uint32, location : int, params : [float])
!nogc
extern glGetUniformiv (program : uint32, location : int, params : [int])
!nogc
extern glGetVertexAttribdv (index : uint32, pname : uint32, params : [double])
!nogc
extern glGetVertexAttribfv (index : uint32, pname : uint32, params : [float])
!nogc
extern glGetVertexAttribiv (index : uint32, pname : uint32, params : [int])
--!nogc
--extern glGetVertexAttribPointerv (index : uint32, pname : uint32, pointer : [[ptr]])
!nogc
extern glIsProgram (program : uint32) : bool
!nogc
extern glIsShader (shader : uint32) : bool
!nogc
extern glLinkProgram (program : uint32)
!nogc
extern glShaderSource (shader : uint32, count : int, string : [String], length : [int])
!nogc
extern glUseProgram (program : uint32)
!nogc
extern glUniform1f (location : int, v0 : float)
!nogc
extern glUniform2f (location : int, v0 : float, v1 : float)
!nogc
extern glUniform3f (location : int, v0 : float, v1 : float, v2 : float)
!nogc
extern glUniform4f (location : int, v0 : float, v1 : float, v2 : float, v3 : float)
!nogc
extern glUniform1i (location : int, v0 : int)
!nogc
extern glUniform2i (location : int, v0 : int, v1 : int)
!nogc
extern glUniform3i (location : int, v0 : int, v1 : int, v2 : int)
!nogc
extern glUniform4i (location : int, v0 : int, v1 : int, v2 : int, v3 : int)
!nogc
extern glUniform1fv (location : int, count : int, value : [float])
!nogc
extern glUniform2fv (location : int, count : int, value : [float])
!nogc
extern glUniform3fv (location : int, count : int, value : [float])
!nogc
extern glUniform4fv (location : int, count : int, value : [float])
!nogc
extern glUniform1iv (location : int, count : int, value : [int])
!nogc
extern glUniform2iv (location : int, count : int, value : [int])
!nogc
extern glUniform3iv (location : int, count : int, value : [int])
!nogc
extern glUniform4iv (location : int, count : int, value : [int])
!nogc
extern glUniformMatrix2fv (location : int, count : int, transpose : bool, value : [float])
!nogc
extern glUniformMatrix3fv (location : int, count : int, transpose : bool, value : [float])
!nogc
extern glUniformMatrix4fv (location : int, count : int, transpose : bool, value : [float])
!nogc
extern glValidateProgram (program : uint32)
!nogc
extern glVertexAttrib1d (index : uint32, x : double)
!nogc
extern glVertexAttrib1dv (index : uint32, v : [double])
!nogc
extern glVertexAttrib1f (index : uint32, x : float)
!nogc
extern glVertexAttrib1fv (index : uint32, v : [float])
!nogc
extern glVertexAttrib1s (index : uint32, x : int16)
!nogc
extern glVertexAttrib1sv (index : uint32, v : [int16])
!nogc
extern glVertexAttrib2d (index : uint32, x : double, y : double)
!nogc
extern glVertexAttrib2dv (index : uint32, v : [double])
!nogc
extern glVertexAttrib2f (index : uint32, x : float, y : float)
!nogc
extern glVertexAttrib2fv (index : uint32, v : [float])
!nogc
extern glVertexAttrib2s (index : uint32, x : int16, y : int16)
!nogc
extern glVertexAttrib2sv (index : uint32, v : [int16])
!nogc
extern glVertexAttrib3d (index : uint32, x : double, y : double, z : double)
!nogc
extern glVertexAttrib3dv (index : uint32, v : [double])
!nogc
extern glVertexAttrib3f (index : uint32, x : float, y : float, z : float)
!nogc
extern glVertexAttrib3fv (index : uint32, v : [float])
!nogc
extern glVertexAttrib3s (index : uint32, x : int16, y : int16, z : int16)
!nogc
extern glVertexAttrib3sv (index : uint32, v : [int16])
!nogc
extern glVertexAttrib4Nbv (index : uint32, v : [byte])
!nogc
extern glVertexAttrib4Niv (index : uint32, v : [int])
!nogc
extern glVertexAttrib4Nsv (index : uint32, v : [int16])
!nogc
extern glVertexAttrib4Nub (index : uint32, x : byte, y : byte, z : byte, w : byte)
!nogc
extern glVertexAttrib4Nubv (index : uint32, v : [byte])
!nogc
extern glVertexAttrib4Nuiv (index : uint32, v : [uint32])
!nogc
extern glVertexAttrib4Nusv (index : uint32, v : [uint16])
!nogc
extern glVertexAttrib4bv (index : uint32, v : [byte])
!nogc
extern glVertexAttrib4d (index : uint32, x : double, y : double, z : double, w : double)
!nogc
extern glVertexAttrib4dv (index : uint32, v : [double])
!nogc
extern glVertexAttrib4f (index : uint32, x : float, y : float, z : float, w : float)
!nogc
extern glVertexAttrib4fv (index : uint32, v : [float])
!nogc
extern glVertexAttrib4iv (index : uint32, v : [int])
!nogc
extern glVertexAttrib4s (index : uint32, x : int16, y : int16, z : int16, w : int16)
!nogc
extern glVertexAttrib4sv (index : uint32, v : [int16])
!nogc
extern glVertexAttrib4ubv (index : uint32, v : [byte])
!nogc
extern glVertexAttrib4uiv (index : uint32, v : [uint32])
!nogc
extern glVertexAttrib4usv (index : uint32, v : [uint16])
--!nogc
--extern glVertexAttribPointer (index : uint32, size : int, type : uint32, normalized : bool, stride : int, [ptr])
