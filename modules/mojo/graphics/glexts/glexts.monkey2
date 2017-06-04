
Namespace mojo.graphics.glexts

#If __TARGET__="windows" Or __MOBILE_TARGET__ Or __WEB_TARGET__

#Import "glexts.cpp"
#Import "glexts.h"

#Endif

Const GL_DRAW_BUFFER:=$0c01

Const GL_READ_BUFFER:=$0c01

Const GL_HALF_FLOAT:Int=$8D61

Const GL_MAX_COLOR_ATTACHMENTS:=$8CDF

'Const GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS:=$8CD9

'Const GL_COLOR_ATTACHMENT0:Int=$8cE0
Const GL_COLOR_ATTACHMENT1:Int=$8CE1
Const GL_COLOR_ATTACHMENT2:Int=$8CE2
Const GL_COLOR_ATTACHMENT3:Int=$8CE3
Const GL_COLOR_ATTACHMENT4:Int=$8CE4
Const GL_COLOR_ATTACHMENT5:Int=$8CE5
Const GL_COLOR_ATTACHMENT6:Int=$8CE6
Const GL_COLOR_ATTACHMENT7:Int=$8CE7
Const GL_COLOR_ATTACHMENT8:Int=$8CE8
Const GL_COLOR_ATTACHMENT9:Int=$8CE9
Const GL_COLOR_ATTACHMENT10:Int=$8CEA
Const GL_COLOR_ATTACHMENT11:Int=$8CEB
Const GL_COLOR_ATTACHMENT12:Int=$8CEC
Const GL_COLOR_ATTACHMENT13:Int=$8CED
Const GL_COLOR_ATTACHMENT14:Int=$8CEE
Const GL_COLOR_ATTACHMENT15:Int=$8CEF

#If __TARGET__="windows" Or __MOBILE_TARGET__ Or __WEB_TARGET__

Const GL_draw_buffer:Bool=False
Const GL_read_buffer:Bool=False

Extern

Const GL_draw_buffers:Bool="bbGLexts::GL_draw_buffers"
Const GL_texture_float:Bool="bbGLexts::GL_texture_float"
Const GL_texture_half_float:bool="bbGLexts::GL_texture_half_float"
Const GL_depth_texture:bool="bbGLexts::GL_depth_texture"

Function glDrawBuffers( n:Int,bufs:GLenum Ptr )="bbGLexts::glDrawBuffers"

Function InitGLexts()="bbGLexts::init"
	
Public
	
Function glDrawBuffer( mode:GLenum )
	RuntimeError( "glDrawBuffer unsupported" )
End


Function glReadBuffer( mode:GLenum )
	RuntimeError( "glReadBuffer unsupported" )
End

#Elseif __TARGET__="macos" Or __TARGET__="linux"

Const GL_draw_buffer:Bool=True
Const GL_read_buffer:Bool=True
Const GL_draw_buffers:Bool=True
Const GL_texture_float:Bool=True
Const GL_texture_half_float:bool=True
Const GL_depth_texture:bool=True

Extern

Function glDrawBuffer( mode:GLenum )
Function glReadBuffer( mode:GLenum )
Function glDrawBuffers( n:Int,bufs:GLenum Ptr )
	
Public

Function InitGLexts()
End

#Else

Const GL_draw_buffers:Bool=False
Const GL_texture_float:Bool=False
Const GL_texture_half_float:bool=False
Const GL_depth_texture:bool=False

Function glDrawBuffers( n:Int,bufs:GLenum Ptr )
	RuntimeError( "glDrawBuffers unsupported" )
End

Function InitGLexts()
End

#Endif
