­█
В7├7
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	ђљ
Ь
	ApplyAdam
var"Tђ	
m"Tђ	
v"Tђ
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"Tђ" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
Џ
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"Tђ

value"T

output_ref"Tђ"	
Ttype"
validate_shapebool("
use_lockingbool(ў
s
	AssignAdd
ref"Tђ

value"T

output_ref"Tђ" 
Ttype:
2	"
use_lockingbool( 
s
	AssignSub
ref"Tђ

value"T

output_ref"Tђ" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
В
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

њ
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Љ
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

B
Equal
x"T
y"T
z
"
Ttype:
2	
љ
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
ќ
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
2
L2Loss
t"T
output"T"
Ttype:
2
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
н
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ь
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	љ
Ї
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ
=
Mul
x"T
y"T
z"T"
Ttype:
2	љ
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
Ї
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	ѕ
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
Ц

ScatterAdd
ref"Tђ
indices"Tindices
updates"T

output_ref"Tђ" 
Ttype:
2	"
Tindicestype:
2	"
use_lockingbool( 
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
2
StopGradient

input"T
output"T"	
Ttype
Ш
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
ї
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
┴
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
s

VariableV2
ref"dtypeђ"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ѕ
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.12.02v1.12.0-0-ga6d8ffae09мы
j
input_xPlaceholder*
dtype0*'
_output_shapes
:         2*
shape:         2
j
input_yPlaceholder*
dtype0*'
_output_shapes
:         *
shape:         
V
dropout_keep_probPlaceholder*
dtype0*
_output_shapes
:*
shape:
╦
CEmbedding/EmbedSequence/embeddings/Initializer/random_uniform/shapeConst*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
valueB"cК  ђ   *
dtype0*
_output_shapes
:
й
AEmbedding/EmbedSequence/embeddings/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
valueB
 *Ѕi1╝
й
AEmbedding/EmbedSequence/embeddings/Initializer/random_uniform/maxConst*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
valueB
 *Ѕi1<*
dtype0*
_output_shapes
: 
ф
KEmbedding/EmbedSequence/embeddings/Initializer/random_uniform/RandomUniformRandomUniformCEmbedding/EmbedSequence/embeddings/Initializer/random_uniform/shape*
dtype0*!
_output_shapes
:сјђ*

seed *
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
seed2 
д
AEmbedding/EmbedSequence/embeddings/Initializer/random_uniform/subSubAEmbedding/EmbedSequence/embeddings/Initializer/random_uniform/maxAEmbedding/EmbedSequence/embeddings/Initializer/random_uniform/min*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
_output_shapes
: 
╗
AEmbedding/EmbedSequence/embeddings/Initializer/random_uniform/mulMulKEmbedding/EmbedSequence/embeddings/Initializer/random_uniform/RandomUniformAEmbedding/EmbedSequence/embeddings/Initializer/random_uniform/sub*!
_output_shapes
:сјђ*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings
Г
=Embedding/EmbedSequence/embeddings/Initializer/random_uniformAddAEmbedding/EmbedSequence/embeddings/Initializer/random_uniform/mulAEmbedding/EmbedSequence/embeddings/Initializer/random_uniform/min*!
_output_shapes
:сјђ*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings
М
"Embedding/EmbedSequence/embeddings
VariableV2*
	container *
shape:сјђ*
dtype0*!
_output_shapes
:сјђ*
shared_name *5
_class+
)'loc:@Embedding/EmbedSequence/embeddings
б
)Embedding/EmbedSequence/embeddings/AssignAssign"Embedding/EmbedSequence/embeddings=Embedding/EmbedSequence/embeddings/Initializer/random_uniform*
validate_shape(*!
_output_shapes
:сјђ*
use_locking(*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings
║
'Embedding/EmbedSequence/embeddings/readIdentity"Embedding/EmbedSequence/embeddings*!
_output_shapes
:сјђ*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings
д
-Embedding/EmbedSequence/embedding_lookup/axisConst*
dtype0*
_output_shapes
: *5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
value	B : 
д
(Embedding/EmbedSequence/embedding_lookupGatherV2'Embedding/EmbedSequence/embeddings/readinput_x-Embedding/EmbedSequence/embedding_lookup/axis*
Tindices0*
Tparams0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*,
_output_shapes
:         2ђ*
Taxis0
ъ
1Embedding/EmbedSequence/embedding_lookup/IdentityIdentity(Embedding/EmbedSequence/embedding_lookup*
T0*,
_output_shapes
:         2ђ
c
Embedding/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
Х
Embedding/ExpandDims
ExpandDims1Embedding/EmbedSequence/embedding_lookup/IdentityEmbedding/ExpandDims/dim*
T0*0
_output_shapes
:         2ђ*

Tdim0
Е
.conv3/weights/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:* 
_class
loc:@conv3/weights*%
valueB"   ђ      @   
Њ
,conv3/weights/Initializer/random_uniform/minConst* 
_class
loc:@conv3/weights*
valueB
 *В~╝*
dtype0*
_output_shapes
: 
Њ
,conv3/weights/Initializer/random_uniform/maxConst* 
_class
loc:@conv3/weights*
valueB
 *В~<*
dtype0*
_output_shapes
: 
ы
6conv3/weights/Initializer/random_uniform/RandomUniformRandomUniform.conv3/weights/Initializer/random_uniform/shape*

seed *
T0* 
_class
loc:@conv3/weights*
seed2 *
dtype0*'
_output_shapes
:ђ@
м
,conv3/weights/Initializer/random_uniform/subSub,conv3/weights/Initializer/random_uniform/max,conv3/weights/Initializer/random_uniform/min*
T0* 
_class
loc:@conv3/weights*
_output_shapes
: 
ь
,conv3/weights/Initializer/random_uniform/mulMul6conv3/weights/Initializer/random_uniform/RandomUniform,conv3/weights/Initializer/random_uniform/sub*'
_output_shapes
:ђ@*
T0* 
_class
loc:@conv3/weights
▀
(conv3/weights/Initializer/random_uniformAdd,conv3/weights/Initializer/random_uniform/mul,conv3/weights/Initializer/random_uniform/min*
T0* 
_class
loc:@conv3/weights*'
_output_shapes
:ђ@
х
conv3/weights
VariableV2*
	container *
shape:ђ@*
dtype0*'
_output_shapes
:ђ@*
shared_name * 
_class
loc:@conv3/weights
н
conv3/weights/AssignAssignconv3/weights(conv3/weights/Initializer/random_uniform*
validate_shape(*'
_output_shapes
:ђ@*
use_locking(*
T0* 
_class
loc:@conv3/weights
Ђ
conv3/weights/readIdentityconv3/weights*
T0* 
_class
loc:@conv3/weights*'
_output_shapes
:ђ@
ї
conv3/biases/Initializer/zerosConst*
_class
loc:@conv3/biases*
valueB@*    *
dtype0*
_output_shapes
:@
Ў
conv3/biases
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@conv3/biases*
	container *
shape:@
║
conv3/biases/AssignAssignconv3/biasesconv3/biases/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv3/biases*
validate_shape(*
_output_shapes
:@
q
conv3/biases/readIdentityconv3/biases*
T0*
_class
loc:@conv3/biases*
_output_shapes
:@
d
conv3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ж
conv3/Conv2DConv2DEmbedding/ExpandDimsconv3/weights/read*
paddingVALID*/
_output_shapes
:         0@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
і
conv3/BiasAddBiasAddconv3/Conv2Dconv3/biases/read*
T0*
data_formatNHWC*/
_output_shapes
:         0@
Z
conv3/LeakyRelu/alphaConst*
valueB
 *═╠L>*
dtype0*
_output_shapes
: 
z
conv3/LeakyRelu/mulMulconv3/LeakyRelu/alphaconv3/BiasAdd*/
_output_shapes
:         0@*
T0
x
conv3/LeakyReluMaximumconv3/LeakyRelu/mulconv3/BiasAdd*
T0*/
_output_shapes
:         0@
Х
pool3/MaxPoolMaxPoolconv3/LeakyRelu*
strides
*
data_formatNHWC*
ksize
0*
paddingVALID*/
_output_shapes
:         @*
T0
Е
.conv4/weights/Initializer/random_uniform/shapeConst* 
_class
loc:@conv4/weights*%
valueB"   ђ      @   *
dtype0*
_output_shapes
:
Њ
,conv4/weights/Initializer/random_uniform/minConst* 
_class
loc:@conv4/weights*
valueB
 *Љ§[╝*
dtype0*
_output_shapes
: 
Њ
,conv4/weights/Initializer/random_uniform/maxConst* 
_class
loc:@conv4/weights*
valueB
 *Љ§[<*
dtype0*
_output_shapes
: 
ы
6conv4/weights/Initializer/random_uniform/RandomUniformRandomUniform.conv4/weights/Initializer/random_uniform/shape*
dtype0*'
_output_shapes
:ђ@*

seed *
T0* 
_class
loc:@conv4/weights*
seed2 
м
,conv4/weights/Initializer/random_uniform/subSub,conv4/weights/Initializer/random_uniform/max,conv4/weights/Initializer/random_uniform/min*
T0* 
_class
loc:@conv4/weights*
_output_shapes
: 
ь
,conv4/weights/Initializer/random_uniform/mulMul6conv4/weights/Initializer/random_uniform/RandomUniform,conv4/weights/Initializer/random_uniform/sub*'
_output_shapes
:ђ@*
T0* 
_class
loc:@conv4/weights
▀
(conv4/weights/Initializer/random_uniformAdd,conv4/weights/Initializer/random_uniform/mul,conv4/weights/Initializer/random_uniform/min*
T0* 
_class
loc:@conv4/weights*'
_output_shapes
:ђ@
х
conv4/weights
VariableV2*
dtype0*'
_output_shapes
:ђ@*
shared_name * 
_class
loc:@conv4/weights*
	container *
shape:ђ@
н
conv4/weights/AssignAssignconv4/weights(conv4/weights/Initializer/random_uniform*
T0* 
_class
loc:@conv4/weights*
validate_shape(*'
_output_shapes
:ђ@*
use_locking(
Ђ
conv4/weights/readIdentityconv4/weights*
T0* 
_class
loc:@conv4/weights*'
_output_shapes
:ђ@
ї
conv4/biases/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
_class
loc:@conv4/biases*
valueB@*    
Ў
conv4/biases
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@conv4/biases*
	container *
shape:@
║
conv4/biases/AssignAssignconv4/biasesconv4/biases/Initializer/zeros*
T0*
_class
loc:@conv4/biases*
validate_shape(*
_output_shapes
:@*
use_locking(
q
conv4/biases/readIdentityconv4/biases*
T0*
_class
loc:@conv4/biases*
_output_shapes
:@
d
conv4/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
ж
conv4/Conv2DConv2DEmbedding/ExpandDimsconv4/weights/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:         /@*
	dilations
*
T0
і
conv4/BiasAddBiasAddconv4/Conv2Dconv4/biases/read*
T0*
data_formatNHWC*/
_output_shapes
:         /@
Z
conv4/LeakyRelu/alphaConst*
valueB
 *═╠L>*
dtype0*
_output_shapes
: 
z
conv4/LeakyRelu/mulMulconv4/LeakyRelu/alphaconv4/BiasAdd*/
_output_shapes
:         /@*
T0
x
conv4/LeakyReluMaximumconv4/LeakyRelu/mulconv4/BiasAdd*/
_output_shapes
:         /@*
T0
Х
pool4/MaxPoolMaxPoolconv4/LeakyRelu*
ksize
/*
paddingVALID*/
_output_shapes
:         @*
T0*
strides
*
data_formatNHWC
Е
.conv5/weights/Initializer/random_uniform/shapeConst* 
_class
loc:@conv5/weights*%
valueB"   ђ      @   *
dtype0*
_output_shapes
:
Њ
,conv5/weights/Initializer/random_uniform/minConst* 
_class
loc:@conv5/weights*
valueB
 *Ш├D╝*
dtype0*
_output_shapes
: 
Њ
,conv5/weights/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: * 
_class
loc:@conv5/weights*
valueB
 *Ш├D<
ы
6conv5/weights/Initializer/random_uniform/RandomUniformRandomUniform.conv5/weights/Initializer/random_uniform/shape*

seed *
T0* 
_class
loc:@conv5/weights*
seed2 *
dtype0*'
_output_shapes
:ђ@
м
,conv5/weights/Initializer/random_uniform/subSub,conv5/weights/Initializer/random_uniform/max,conv5/weights/Initializer/random_uniform/min*
T0* 
_class
loc:@conv5/weights*
_output_shapes
: 
ь
,conv5/weights/Initializer/random_uniform/mulMul6conv5/weights/Initializer/random_uniform/RandomUniform,conv5/weights/Initializer/random_uniform/sub*'
_output_shapes
:ђ@*
T0* 
_class
loc:@conv5/weights
▀
(conv5/weights/Initializer/random_uniformAdd,conv5/weights/Initializer/random_uniform/mul,conv5/weights/Initializer/random_uniform/min*'
_output_shapes
:ђ@*
T0* 
_class
loc:@conv5/weights
х
conv5/weights
VariableV2*
	container *
shape:ђ@*
dtype0*'
_output_shapes
:ђ@*
shared_name * 
_class
loc:@conv5/weights
н
conv5/weights/AssignAssignconv5/weights(conv5/weights/Initializer/random_uniform*
T0* 
_class
loc:@conv5/weights*
validate_shape(*'
_output_shapes
:ђ@*
use_locking(
Ђ
conv5/weights/readIdentityconv5/weights*'
_output_shapes
:ђ@*
T0* 
_class
loc:@conv5/weights
ї
conv5/biases/Initializer/zerosConst*
_class
loc:@conv5/biases*
valueB@*    *
dtype0*
_output_shapes
:@
Ў
conv5/biases
VariableV2*
shared_name *
_class
loc:@conv5/biases*
	container *
shape:@*
dtype0*
_output_shapes
:@
║
conv5/biases/AssignAssignconv5/biasesconv5/biases/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@conv5/biases
q
conv5/biases/readIdentityconv5/biases*
T0*
_class
loc:@conv5/biases*
_output_shapes
:@
d
conv5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ж
conv5/Conv2DConv2DEmbedding/ExpandDimsconv5/weights/read*/
_output_shapes
:         .@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
і
conv5/BiasAddBiasAddconv5/Conv2Dconv5/biases/read*
T0*
data_formatNHWC*/
_output_shapes
:         .@
Z
conv5/LeakyRelu/alphaConst*
valueB
 *═╠L>*
dtype0*
_output_shapes
: 
z
conv5/LeakyRelu/mulMulconv5/LeakyRelu/alphaconv5/BiasAdd*
T0*/
_output_shapes
:         .@
x
conv5/LeakyReluMaximumconv5/LeakyRelu/mulconv5/BiasAdd*/
_output_shapes
:         .@*
T0
Х
pool5/MaxPoolMaxPoolconv5/LeakyRelu*
T0*
strides
*
data_formatNHWC*
ksize
.*
paddingVALID*/
_output_shapes
:         @
M
concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
ю
concatConcatV2pool3/MaxPoolpool4/MaxPoolpool5/MaxPoolconcat/axis*
T0*
N*0
_output_shapes
:         └*

Tidx0
^
Reshape/shapeConst*
valueB"    └   *
dtype0*
_output_shapes
:
j
ReshapeReshapeconcatReshape/shape*
T0*
Tshape0*(
_output_shapes
:         └
\
dropout/dropout/ShapeShapeReshape*
_output_shapes
:*
T0*
out_type0
g
"dropout/dropout/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    
g
"dropout/dropout/random_uniform/maxConst*
valueB
 *  ђ?*
dtype0*
_output_shapes
: 
Г
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape*
dtype0*(
_output_shapes
:         └*
seed2 *

seed *
T0
њ
"dropout/dropout/random_uniform/subSub"dropout/dropout/random_uniform/max"dropout/dropout/random_uniform/min*
T0*
_output_shapes
: 
«
"dropout/dropout/random_uniform/mulMul,dropout/dropout/random_uniform/RandomUniform"dropout/dropout/random_uniform/sub*
T0*(
_output_shapes
:         └
а
dropout/dropout/random_uniformAdd"dropout/dropout/random_uniform/mul"dropout/dropout/random_uniform/min*
T0*(
_output_shapes
:         └
p
dropout/dropout/addAdddropout_keep_probdropout/dropout/random_uniform*
T0*
_output_shapes
:
V
dropout/dropout/FloorFloordropout/dropout/add*
T0*
_output_shapes
:
]
dropout/dropout/divRealDivReshapedropout_keep_prob*
T0*
_output_shapes
:
y
dropout/dropout/mulMuldropout/dropout/divdropout/dropout/Floor*
T0*(
_output_shapes
:         └
J
ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
х
8fully_connected/weights/Initializer/random_uniform/shapeConst**
_class 
loc:@fully_connected/weights*
valueB"└      *
dtype0*
_output_shapes
:
Д
6fully_connected/weights/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: **
_class 
loc:@fully_connected/weights*
valueB
 *v4Й
Д
6fully_connected/weights/Initializer/random_uniform/maxConst**
_class 
loc:@fully_connected/weights*
valueB
 *v4>*
dtype0*
_output_shapes
: 
Є
@fully_connected/weights/Initializer/random_uniform/RandomUniformRandomUniform8fully_connected/weights/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	└*

seed *
T0**
_class 
loc:@fully_connected/weights*
seed2 
Щ
6fully_connected/weights/Initializer/random_uniform/subSub6fully_connected/weights/Initializer/random_uniform/max6fully_connected/weights/Initializer/random_uniform/min*
T0**
_class 
loc:@fully_connected/weights*
_output_shapes
: 
Ї
6fully_connected/weights/Initializer/random_uniform/mulMul@fully_connected/weights/Initializer/random_uniform/RandomUniform6fully_connected/weights/Initializer/random_uniform/sub*
T0**
_class 
loc:@fully_connected/weights*
_output_shapes
:	└
 
2fully_connected/weights/Initializer/random_uniformAdd6fully_connected/weights/Initializer/random_uniform/mul6fully_connected/weights/Initializer/random_uniform/min*
T0**
_class 
loc:@fully_connected/weights*
_output_shapes
:	└
╣
fully_connected/weights
VariableV2*
dtype0*
_output_shapes
:	└*
shared_name **
_class 
loc:@fully_connected/weights*
	container *
shape:	└
З
fully_connected/weights/AssignAssignfully_connected/weights2fully_connected/weights/Initializer/random_uniform*
T0**
_class 
loc:@fully_connected/weights*
validate_shape(*
_output_shapes
:	└*
use_locking(
Ќ
fully_connected/weights/readIdentityfully_connected/weights*
T0**
_class 
loc:@fully_connected/weights*
_output_shapes
:	└
а
(fully_connected/biases/Initializer/zerosConst*)
_class
loc:@fully_connected/biases*
valueB*    *
dtype0*
_output_shapes
:
Г
fully_connected/biases
VariableV2*
dtype0*
_output_shapes
:*
shared_name *)
_class
loc:@fully_connected/biases*
	container *
shape:
Р
fully_connected/biases/AssignAssignfully_connected/biases(fully_connected/biases/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*)
_class
loc:@fully_connected/biases
Ј
fully_connected/biases/readIdentityfully_connected/biases*
_output_shapes
:*
T0*)
_class
loc:@fully_connected/biases
▓
output/fully_connected/MatMulMatMuldropout/dropout/mulfully_connected/weights/read*
T0*'
_output_shapes
:         *
transpose_a( *
transpose_b( 
«
output/fully_connected/BiasAddBiasAddoutput/fully_connected/MatMulfully_connected/biases/read*
T0*
data_formatNHWC*'
_output_shapes
:         
V
output/L2LossL2Lossfully_connected/weights/read*
T0*
_output_shapes
: 
O
output/ConstConst*
dtype0*
_output_shapes
: *
valueB 
n
output/MeanMeanoutput/L2Lossoutput/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
F

output/addAddConstoutput/Mean*
T0*
_output_shapes
: 
^
output/predictions/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
Д
output/predictionsArgMaxoutput/fully_connected/BiasAddoutput/predictions/dimension*
T0*
output_type0	*#
_output_shapes
:         *

Tidx0
i
output/probsSoftmaxoutput/fully_connected/BiasAdd*
T0*'
_output_shapes
:         
Ѕ
>loss/softmax_cross_entropy_with_logits_sg/labels_stop_gradientStopGradientinput_y*
T0*'
_output_shapes
:         
p
.loss/softmax_cross_entropy_with_logits_sg/RankConst*
dtype0*
_output_shapes
: *
value	B :
Ї
/loss/softmax_cross_entropy_with_logits_sg/ShapeShapeoutput/fully_connected/BiasAdd*
T0*
out_type0*
_output_shapes
:
r
0loss/softmax_cross_entropy_with_logits_sg/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
Ј
1loss/softmax_cross_entropy_with_logits_sg/Shape_1Shapeoutput/fully_connected/BiasAdd*
T0*
out_type0*
_output_shapes
:
q
/loss/softmax_cross_entropy_with_logits_sg/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
И
-loss/softmax_cross_entropy_with_logits_sg/SubSub0loss/softmax_cross_entropy_with_logits_sg/Rank_1/loss/softmax_cross_entropy_with_logits_sg/Sub/y*
T0*
_output_shapes
: 
д
5loss/softmax_cross_entropy_with_logits_sg/Slice/beginPack-loss/softmax_cross_entropy_with_logits_sg/Sub*
T0*

axis *
N*
_output_shapes
:
~
4loss/softmax_cross_entropy_with_logits_sg/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
і
/loss/softmax_cross_entropy_with_logits_sg/SliceSlice1loss/softmax_cross_entropy_with_logits_sg/Shape_15loss/softmax_cross_entropy_with_logits_sg/Slice/begin4loss/softmax_cross_entropy_with_logits_sg/Slice/size*
_output_shapes
:*
Index0*
T0
ї
9loss/softmax_cross_entropy_with_logits_sg/concat/values_0Const*
valueB:
         *
dtype0*
_output_shapes
:
w
5loss/softmax_cross_entropy_with_logits_sg/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ў
0loss/softmax_cross_entropy_with_logits_sg/concatConcatV29loss/softmax_cross_entropy_with_logits_sg/concat/values_0/loss/softmax_cross_entropy_with_logits_sg/Slice5loss/softmax_cross_entropy_with_logits_sg/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
О
1loss/softmax_cross_entropy_with_logits_sg/ReshapeReshapeoutput/fully_connected/BiasAdd0loss/softmax_cross_entropy_with_logits_sg/concat*
T0*
Tshape0*0
_output_shapes
:                  
r
0loss/softmax_cross_entropy_with_logits_sg/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
»
1loss/softmax_cross_entropy_with_logits_sg/Shape_2Shape>loss/softmax_cross_entropy_with_logits_sg/labels_stop_gradient*
T0*
out_type0*
_output_shapes
:
s
1loss/softmax_cross_entropy_with_logits_sg/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
╝
/loss/softmax_cross_entropy_with_logits_sg/Sub_1Sub0loss/softmax_cross_entropy_with_logits_sg/Rank_21loss/softmax_cross_entropy_with_logits_sg/Sub_1/y*
_output_shapes
: *
T0
ф
7loss/softmax_cross_entropy_with_logits_sg/Slice_1/beginPack/loss/softmax_cross_entropy_with_logits_sg/Sub_1*
N*
_output_shapes
:*
T0*

axis 
ђ
6loss/softmax_cross_entropy_with_logits_sg/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
љ
1loss/softmax_cross_entropy_with_logits_sg/Slice_1Slice1loss/softmax_cross_entropy_with_logits_sg/Shape_27loss/softmax_cross_entropy_with_logits_sg/Slice_1/begin6loss/softmax_cross_entropy_with_logits_sg/Slice_1/size*
Index0*
T0*
_output_shapes
:
ј
;loss/softmax_cross_entropy_with_logits_sg/concat_1/values_0Const*
valueB:
         *
dtype0*
_output_shapes
:
y
7loss/softmax_cross_entropy_with_logits_sg/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
А
2loss/softmax_cross_entropy_with_logits_sg/concat_1ConcatV2;loss/softmax_cross_entropy_with_logits_sg/concat_1/values_01loss/softmax_cross_entropy_with_logits_sg/Slice_17loss/softmax_cross_entropy_with_logits_sg/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
ч
3loss/softmax_cross_entropy_with_logits_sg/Reshape_1Reshape>loss/softmax_cross_entropy_with_logits_sg/labels_stop_gradient2loss/softmax_cross_entropy_with_logits_sg/concat_1*
T0*
Tshape0*0
_output_shapes
:                  
Ч
)loss/softmax_cross_entropy_with_logits_sgSoftmaxCrossEntropyWithLogits1loss/softmax_cross_entropy_with_logits_sg/Reshape3loss/softmax_cross_entropy_with_logits_sg/Reshape_1*
T0*?
_output_shapes-
+:         :                  
s
1loss/softmax_cross_entropy_with_logits_sg/Sub_2/yConst*
dtype0*
_output_shapes
: *
value	B :
║
/loss/softmax_cross_entropy_with_logits_sg/Sub_2Sub.loss/softmax_cross_entropy_with_logits_sg/Rank1loss/softmax_cross_entropy_with_logits_sg/Sub_2/y*
_output_shapes
: *
T0
Ђ
7loss/softmax_cross_entropy_with_logits_sg/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
Е
6loss/softmax_cross_entropy_with_logits_sg/Slice_2/sizePack/loss/softmax_cross_entropy_with_logits_sg/Sub_2*
N*
_output_shapes
:*
T0*

axis 
ј
1loss/softmax_cross_entropy_with_logits_sg/Slice_2Slice/loss/softmax_cross_entropy_with_logits_sg/Shape7loss/softmax_cross_entropy_with_logits_sg/Slice_2/begin6loss/softmax_cross_entropy_with_logits_sg/Slice_2/size*
Index0*
T0*
_output_shapes
:
п
3loss/softmax_cross_entropy_with_logits_sg/Reshape_2Reshape)loss/softmax_cross_entropy_with_logits_sg1loss/softmax_cross_entropy_with_logits_sg/Slice_2*
T0*
Tshape0*#
_output_shapes
:         
T

loss/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
љ
	loss/MeanMean3loss/softmax_cross_entropy_with_logits_sg/Reshape_2
loss/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
O

loss/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *═╠╠=
H
loss/mulMul
loss/mul/x
output/add*
_output_shapes
: *
T0
E
loss/addAdd	loss/Meanloss/mul*
T0*
_output_shapes
: 
[
accuracy/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
і
accuracy/ArgMaxArgMaxinput_yaccuracy/ArgMax/dimension*
output_type0	*#
_output_shapes
:         *

Tidx0*
T0
j
accuracy/EqualEqualoutput/predictionsaccuracy/ArgMax*#
_output_shapes
:         *
T0	
r
accuracy/CastCastaccuracy/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:         *

DstT0
X
accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
v
accuracy/accuracyMeanaccuracy/Castaccuracy/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
[
global_step/initial_valueConst*
dtype0*
_output_shapes
: *
value	B : 
o
global_step
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
«
global_step/AssignAssignglobal_stepglobal_step/initial_value*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0*
_class
loc:@global_step*
_output_shapes
: 
R
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
X
gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  ђ?
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
A
(gradients/loss/add_grad/tuple/group_depsNoOp^gradients/Fill
╗
0gradients/loss/add_grad/tuple/control_dependencyIdentitygradients/Fill)^gradients/loss/add_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
й
2gradients/loss/add_grad/tuple/control_dependency_1Identitygradients/Fill)^gradients/loss/add_grad/tuple/group_deps*
_output_shapes
: *
T0*!
_class
loc:@gradients/Fill
p
&gradients/loss/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
И
 gradients/loss/Mean_grad/ReshapeReshape0gradients/loss/add_grad/tuple/control_dependency&gradients/loss/Mean_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
Љ
gradients/loss/Mean_grad/ShapeShape3loss/softmax_cross_entropy_with_logits_sg/Reshape_2*
T0*
out_type0*
_output_shapes
:
Д
gradients/loss/Mean_grad/TileTile gradients/loss/Mean_grad/Reshapegradients/loss/Mean_grad/Shape*#
_output_shapes
:         *

Tmultiples0*
T0
Њ
 gradients/loss/Mean_grad/Shape_1Shape3loss/softmax_cross_entropy_with_logits_sg/Reshape_2*
T0*
out_type0*
_output_shapes
:
c
 gradients/loss/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
h
gradients/loss/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ц
gradients/loss/Mean_grad/ProdProd gradients/loss/Mean_grad/Shape_1gradients/loss/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
j
 gradients/loss/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Е
gradients/loss/Mean_grad/Prod_1Prod gradients/loss/Mean_grad/Shape_2 gradients/loss/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
d
"gradients/loss/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
Љ
 gradients/loss/Mean_grad/MaximumMaximumgradients/loss/Mean_grad/Prod_1"gradients/loss/Mean_grad/Maximum/y*
_output_shapes
: *
T0
Ј
!gradients/loss/Mean_grad/floordivFloorDivgradients/loss/Mean_grad/Prod gradients/loss/Mean_grad/Maximum*
T0*
_output_shapes
: 
ѕ
gradients/loss/Mean_grad/CastCast!gradients/loss/Mean_grad/floordiv*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
Ќ
 gradients/loss/Mean_grad/truedivRealDivgradients/loss/Mean_grad/Tilegradients/loss/Mean_grad/Cast*#
_output_shapes
:         *
T0
Ѓ
gradients/loss/mul_grad/MulMul2gradients/loss/add_grad/tuple/control_dependency_1
output/add*
T0*
_output_shapes
: 
Ё
gradients/loss/mul_grad/Mul_1Mul2gradients/loss/add_grad/tuple/control_dependency_1
loss/mul/x*
T0*
_output_shapes
: 
n
(gradients/loss/mul_grad/tuple/group_depsNoOp^gradients/loss/mul_grad/Mul^gradients/loss/mul_grad/Mul_1
Н
0gradients/loss/mul_grad/tuple/control_dependencyIdentitygradients/loss/mul_grad/Mul)^gradients/loss/mul_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients/loss/mul_grad/Mul*
_output_shapes
: 
█
2gradients/loss/mul_grad/tuple/control_dependency_1Identitygradients/loss/mul_grad/Mul_1)^gradients/loss/mul_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1*
_output_shapes
: 
▒
Hgradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ShapeShape)loss/softmax_cross_entropy_with_logits_sg*
T0*
out_type0*
_output_shapes
:
§
Jgradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeReshape gradients/loss/Mean_grad/truedivHgradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:         
g
*gradients/output/add_grad/tuple/group_depsNoOp3^gradients/loss/mul_grad/tuple/control_dependency_1
Ы
2gradients/output/add_grad/tuple/control_dependencyIdentity2gradients/loss/mul_grad/tuple/control_dependency_1+^gradients/output/add_grad/tuple/group_deps*
_output_shapes
: *
T0*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1
З
4gradients/output/add_grad/tuple/control_dependency_1Identity2gradients/loss/mul_grad/tuple/control_dependency_1+^gradients/output/add_grad/tuple/group_deps*
_output_shapes
: *
T0*0
_class&
$"loc:@gradients/loss/mul_grad/Mul_1
Ѕ
gradients/zeros_like	ZerosLike+loss/softmax_cross_entropy_with_logits_sg:1*0
_output_shapes
:                  *
T0
њ
Ggradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
         
ц
Cgradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims
ExpandDimsJgradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeGgradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:         
­
<gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mulMulCgradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims+loss/softmax_cross_entropy_with_logits_sg:1*
T0*0
_output_shapes
:                  
┐
Cgradients/loss/softmax_cross_entropy_with_logits_sg_grad/LogSoftmax
LogSoftmax1loss/softmax_cross_entropy_with_logits_sg/Reshape*
T0*0
_output_shapes
:                  
├
<gradients/loss/softmax_cross_entropy_with_logits_sg_grad/NegNegCgradients/loss/softmax_cross_entropy_with_logits_sg_grad/LogSoftmax*
T0*0
_output_shapes
:                  
ћ
Igradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
е
Egradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1
ExpandDimsJgradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeIgradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1/dim*

Tdim0*
T0*'
_output_shapes
:         
Ё
>gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mul_1MulEgradients/loss/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1<gradients/loss/softmax_cross_entropy_with_logits_sg_grad/Neg*
T0*0
_output_shapes
:                  
Л
Igradients/loss/softmax_cross_entropy_with_logits_sg_grad/tuple/group_depsNoOp=^gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mul?^gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mul_1
з
Qgradients/loss/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependencyIdentity<gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mulJ^gradients/loss/softmax_cross_entropy_with_logits_sg_grad/tuple/group_deps*0
_output_shapes
:                  *
T0*O
_classE
CAloc:@gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mul
щ
Sgradients/loss/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependency_1Identity>gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mul_1J^gradients/loss/softmax_cross_entropy_with_logits_sg_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/loss/softmax_cross_entropy_with_logits_sg_grad/mul_1*0
_output_shapes
:                  
k
(gradients/output/Mean_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
╝
"gradients/output/Mean_grad/ReshapeReshape4gradients/output/add_grad/tuple/control_dependency_1(gradients/output/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
c
 gradients/output/Mean_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
а
gradients/output/Mean_grad/TileTile"gradients/output/Mean_grad/Reshape gradients/output/Mean_grad/Const*

Tmultiples0*
T0*
_output_shapes
: 
g
"gradients/output/Mean_grad/Const_1Const*
valueB
 *  ђ?*
dtype0*
_output_shapes
: 
Њ
"gradients/output/Mean_grad/truedivRealDivgradients/output/Mean_grad/Tile"gradients/output/Mean_grad/Const_1*
T0*
_output_shapes
: 
ц
Fgradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/ShapeShapeoutput/fully_connected/BiasAdd*
T0*
out_type0*
_output_shapes
:
«
Hgradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/ReshapeReshapeQgradients/loss/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependencyFgradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
Њ
 gradients/output/L2Loss_grad/mulMulfully_connected/weights/read"gradients/output/Mean_grad/truediv*
T0*
_output_shapes
:	└
╬
9gradients/output/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGradHgradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:
═
>gradients/output/fully_connected/BiasAdd_grad/tuple/group_depsNoOpI^gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape:^gradients/output/fully_connected/BiasAdd_grad/BiasAddGrad
В
Fgradients/output/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentityHgradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape?^gradients/output/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*[
_classQ
OMloc:@gradients/loss/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape*'
_output_shapes
:         
├
Hgradients/output/fully_connected/BiasAdd_grad/tuple/control_dependency_1Identity9gradients/output/fully_connected/BiasAdd_grad/BiasAddGrad?^gradients/output/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/output/fully_connected/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ч
3gradients/output/fully_connected/MatMul_grad/MatMulMatMulFgradients/output/fully_connected/BiasAdd_grad/tuple/control_dependencyfully_connected/weights/read*(
_output_shapes
:         └*
transpose_a( *
transpose_b(*
T0
В
5gradients/output/fully_connected/MatMul_grad/MatMul_1MatMuldropout/dropout/mulFgradients/output/fully_connected/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	└*
transpose_a(*
transpose_b( 
│
=gradients/output/fully_connected/MatMul_grad/tuple/group_depsNoOp4^gradients/output/fully_connected/MatMul_grad/MatMul6^gradients/output/fully_connected/MatMul_grad/MatMul_1
┴
Egradients/output/fully_connected/MatMul_grad/tuple/control_dependencyIdentity3gradients/output/fully_connected/MatMul_grad/MatMul>^gradients/output/fully_connected/MatMul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/output/fully_connected/MatMul_grad/MatMul*(
_output_shapes
:         └
Й
Ggradients/output/fully_connected/MatMul_grad/tuple/control_dependency_1Identity5gradients/output/fully_connected/MatMul_grad/MatMul_1>^gradients/output/fully_connected/MatMul_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/output/fully_connected/MatMul_grad/MatMul_1*
_output_shapes
:	└
ё
(gradients/dropout/dropout/mul_grad/ShapeShapedropout/dropout/div*
T0*
out_type0*#
_output_shapes
:         
ѕ
*gradients/dropout/dropout/mul_grad/Shape_1Shapedropout/dropout/Floor*
T0*
out_type0*#
_output_shapes
:         
С
8gradients/dropout/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/dropout/dropout/mul_grad/Shape*gradients/dropout/dropout/mul_grad/Shape_1*2
_output_shapes 
:         :         *
T0
«
&gradients/dropout/dropout/mul_grad/MulMulEgradients/output/fully_connected/MatMul_grad/tuple/control_dependencydropout/dropout/Floor*
T0*
_output_shapes
:
¤
&gradients/dropout/dropout/mul_grad/SumSum&gradients/dropout/dropout/mul_grad/Mul8gradients/dropout/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
И
*gradients/dropout/dropout/mul_grad/ReshapeReshape&gradients/dropout/dropout/mul_grad/Sum(gradients/dropout/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
«
(gradients/dropout/dropout/mul_grad/Mul_1Muldropout/dropout/divEgradients/output/fully_connected/MatMul_grad/tuple/control_dependency*
_output_shapes
:*
T0
Н
(gradients/dropout/dropout/mul_grad/Sum_1Sum(gradients/dropout/dropout/mul_grad/Mul_1:gradients/dropout/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Й
,gradients/dropout/dropout/mul_grad/Reshape_1Reshape(gradients/dropout/dropout/mul_grad/Sum_1*gradients/dropout/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Ќ
3gradients/dropout/dropout/mul_grad/tuple/group_depsNoOp+^gradients/dropout/dropout/mul_grad/Reshape-^gradients/dropout/dropout/mul_grad/Reshape_1
І
;gradients/dropout/dropout/mul_grad/tuple/control_dependencyIdentity*gradients/dropout/dropout/mul_grad/Reshape4^gradients/dropout/dropout/mul_grad/tuple/group_deps*
_output_shapes
:*
T0*=
_class3
1/loc:@gradients/dropout/dropout/mul_grad/Reshape
Љ
=gradients/dropout/dropout/mul_grad/tuple/control_dependency_1Identity,gradients/dropout/dropout/mul_grad/Reshape_14^gradients/dropout/dropout/mul_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/dropout/dropout/mul_grad/Reshape_1*
_output_shapes
:
ж
gradients/AddNAddN gradients/output/L2Loss_grad/mulGgradients/output/fully_connected/MatMul_grad/tuple/control_dependency_1*
T0*3
_class)
'%loc:@gradients/output/L2Loss_grad/mul*
N*
_output_shapes
:	└
o
(gradients/dropout/dropout/div_grad/ShapeShapeReshape*
T0*
out_type0*
_output_shapes
:
ё
*gradients/dropout/dropout/div_grad/Shape_1Shapedropout_keep_prob*#
_output_shapes
:         *
T0*
out_type0
С
8gradients/dropout/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/dropout/dropout/div_grad/Shape*gradients/dropout/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:         :         
е
*gradients/dropout/dropout/div_grad/RealDivRealDiv;gradients/dropout/dropout/mul_grad/tuple/control_dependencydropout_keep_prob*
T0*
_output_shapes
:
М
&gradients/dropout/dropout/div_grad/SumSum*gradients/dropout/dropout/div_grad/RealDiv8gradients/dropout/dropout/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
╚
*gradients/dropout/dropout/div_grad/ReshapeReshape&gradients/dropout/dropout/div_grad/Sum(gradients/dropout/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:         └
i
&gradients/dropout/dropout/div_grad/NegNegReshape*
T0*(
_output_shapes
:         └
Ћ
,gradients/dropout/dropout/div_grad/RealDiv_1RealDiv&gradients/dropout/dropout/div_grad/Negdropout_keep_prob*
T0*
_output_shapes
:
Џ
,gradients/dropout/dropout/div_grad/RealDiv_2RealDiv,gradients/dropout/dropout/div_grad/RealDiv_1dropout_keep_prob*
_output_shapes
:*
T0
╗
&gradients/dropout/dropout/div_grad/mulMul;gradients/dropout/dropout/mul_grad/tuple/control_dependency,gradients/dropout/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:
М
(gradients/dropout/dropout/div_grad/Sum_1Sum&gradients/dropout/dropout/div_grad/mul:gradients/dropout/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Й
,gradients/dropout/dropout/div_grad/Reshape_1Reshape(gradients/dropout/dropout/div_grad/Sum_1*gradients/dropout/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Ќ
3gradients/dropout/dropout/div_grad/tuple/group_depsNoOp+^gradients/dropout/dropout/div_grad/Reshape-^gradients/dropout/dropout/div_grad/Reshape_1
Џ
;gradients/dropout/dropout/div_grad/tuple/control_dependencyIdentity*gradients/dropout/dropout/div_grad/Reshape4^gradients/dropout/dropout/div_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dropout/dropout/div_grad/Reshape*(
_output_shapes
:         └
Љ
=gradients/dropout/dropout/div_grad/tuple/control_dependency_1Identity,gradients/dropout/dropout/div_grad/Reshape_14^gradients/dropout/dropout/div_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/dropout/dropout/div_grad/Reshape_1*
_output_shapes
:
b
gradients/Reshape_grad/ShapeShapeconcat*
T0*
out_type0*
_output_shapes
:
═
gradients/Reshape_grad/ReshapeReshape;gradients/dropout/dropout/div_grad/tuple/control_dependencygradients/Reshape_grad/Shape*
T0*
Tshape0*0
_output_shapes
:         └
\
gradients/concat_grad/RankConst*
value	B :*
dtype0*
_output_shapes
: 
o
gradients/concat_grad/modFloorModconcat/axisgradients/concat_grad/Rank*
_output_shapes
: *
T0
h
gradients/concat_grad/ShapeShapepool3/MaxPool*
_output_shapes
:*
T0*
out_type0
Ю
gradients/concat_grad/ShapeNShapeNpool3/MaxPoolpool4/MaxPoolpool5/MaxPool*
T0*
out_type0*
N*&
_output_shapes
:::
▄
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/modgradients/concat_grad/ShapeNgradients/concat_grad/ShapeN:1gradients/concat_grad/ShapeN:2*
N*&
_output_shapes
:::
═
gradients/concat_grad/SliceSlicegradients/Reshape_grad/Reshape"gradients/concat_grad/ConcatOffsetgradients/concat_grad/ShapeN*
Index0*
T0*/
_output_shapes
:         @
М
gradients/concat_grad/Slice_1Slicegradients/Reshape_grad/Reshape$gradients/concat_grad/ConcatOffset:1gradients/concat_grad/ShapeN:1*/
_output_shapes
:         @*
Index0*
T0
М
gradients/concat_grad/Slice_2Slicegradients/Reshape_grad/Reshape$gradients/concat_grad/ConcatOffset:2gradients/concat_grad/ShapeN:2*/
_output_shapes
:         @*
Index0*
T0
ї
&gradients/concat_grad/tuple/group_depsNoOp^gradients/concat_grad/Slice^gradients/concat_grad/Slice_1^gradients/concat_grad/Slice_2
Ж
.gradients/concat_grad/tuple/control_dependencyIdentitygradients/concat_grad/Slice'^gradients/concat_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients/concat_grad/Slice*/
_output_shapes
:         @
­
0gradients/concat_grad/tuple/control_dependency_1Identitygradients/concat_grad/Slice_1'^gradients/concat_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/concat_grad/Slice_1*/
_output_shapes
:         @
­
0gradients/concat_grad/tuple/control_dependency_2Identitygradients/concat_grad/Slice_2'^gradients/concat_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/concat_grad/Slice_2*/
_output_shapes
:         @
ћ
(gradients/pool3/MaxPool_grad/MaxPoolGradMaxPoolGradconv3/LeakyRelupool3/MaxPool.gradients/concat_grad/tuple/control_dependency*/
_output_shapes
:         0@*
T0*
strides
*
data_formatNHWC*
ksize
0*
paddingVALID
ќ
(gradients/pool4/MaxPool_grad/MaxPoolGradMaxPoolGradconv4/LeakyRelupool4/MaxPool0gradients/concat_grad/tuple/control_dependency_1*
ksize
/*
paddingVALID*/
_output_shapes
:         /@*
T0*
strides
*
data_formatNHWC
ќ
(gradients/pool5/MaxPool_grad/MaxPoolGradMaxPoolGradconv5/LeakyRelupool5/MaxPool0gradients/concat_grad/tuple/control_dependency_2*
T0*
strides
*
data_formatNHWC*
ksize
.*
paddingVALID*/
_output_shapes
:         .@
w
$gradients/conv3/LeakyRelu_grad/ShapeShapeconv3/LeakyRelu/mul*
T0*
out_type0*
_output_shapes
:
s
&gradients/conv3/LeakyRelu_grad/Shape_1Shapeconv3/BiasAdd*
_output_shapes
:*
T0*
out_type0
ј
&gradients/conv3/LeakyRelu_grad/Shape_2Shape(gradients/pool3/MaxPool_grad/MaxPoolGrad*
T0*
out_type0*
_output_shapes
:
o
*gradients/conv3/LeakyRelu_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
╠
$gradients/conv3/LeakyRelu_grad/zerosFill&gradients/conv3/LeakyRelu_grad/Shape_2*gradients/conv3/LeakyRelu_grad/zeros/Const*
T0*

index_type0*/
_output_shapes
:         0@
Ў
+gradients/conv3/LeakyRelu_grad/GreaterEqualGreaterEqualconv3/LeakyRelu/mulconv3/BiasAdd*
T0*/
_output_shapes
:         0@
п
4gradients/conv3/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/conv3/LeakyRelu_grad/Shape&gradients/conv3/LeakyRelu_grad/Shape_1*2
_output_shapes 
:         :         *
T0
Т
%gradients/conv3/LeakyRelu_grad/SelectSelect+gradients/conv3/LeakyRelu_grad/GreaterEqual(gradients/pool3/MaxPool_grad/MaxPoolGrad$gradients/conv3/LeakyRelu_grad/zeros*
T0*/
_output_shapes
:         0@
У
'gradients/conv3/LeakyRelu_grad/Select_1Select+gradients/conv3/LeakyRelu_grad/GreaterEqual$gradients/conv3/LeakyRelu_grad/zeros(gradients/pool3/MaxPool_grad/MaxPoolGrad*
T0*/
_output_shapes
:         0@
к
"gradients/conv3/LeakyRelu_grad/SumSum%gradients/conv3/LeakyRelu_grad/Select4gradients/conv3/LeakyRelu_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
├
&gradients/conv3/LeakyRelu_grad/ReshapeReshape"gradients/conv3/LeakyRelu_grad/Sum$gradients/conv3/LeakyRelu_grad/Shape*
T0*
Tshape0*/
_output_shapes
:         0@
╠
$gradients/conv3/LeakyRelu_grad/Sum_1Sum'gradients/conv3/LeakyRelu_grad/Select_16gradients/conv3/LeakyRelu_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
╔
(gradients/conv3/LeakyRelu_grad/Reshape_1Reshape$gradients/conv3/LeakyRelu_grad/Sum_1&gradients/conv3/LeakyRelu_grad/Shape_1*/
_output_shapes
:         0@*
T0*
Tshape0
І
/gradients/conv3/LeakyRelu_grad/tuple/group_depsNoOp'^gradients/conv3/LeakyRelu_grad/Reshape)^gradients/conv3/LeakyRelu_grad/Reshape_1
њ
7gradients/conv3/LeakyRelu_grad/tuple/control_dependencyIdentity&gradients/conv3/LeakyRelu_grad/Reshape0^gradients/conv3/LeakyRelu_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/conv3/LeakyRelu_grad/Reshape*/
_output_shapes
:         0@
ў
9gradients/conv3/LeakyRelu_grad/tuple/control_dependency_1Identity(gradients/conv3/LeakyRelu_grad/Reshape_10^gradients/conv3/LeakyRelu_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/conv3/LeakyRelu_grad/Reshape_1*/
_output_shapes
:         0@
w
$gradients/conv4/LeakyRelu_grad/ShapeShapeconv4/LeakyRelu/mul*
_output_shapes
:*
T0*
out_type0
s
&gradients/conv4/LeakyRelu_grad/Shape_1Shapeconv4/BiasAdd*
T0*
out_type0*
_output_shapes
:
ј
&gradients/conv4/LeakyRelu_grad/Shape_2Shape(gradients/pool4/MaxPool_grad/MaxPoolGrad*
T0*
out_type0*
_output_shapes
:
o
*gradients/conv4/LeakyRelu_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
╠
$gradients/conv4/LeakyRelu_grad/zerosFill&gradients/conv4/LeakyRelu_grad/Shape_2*gradients/conv4/LeakyRelu_grad/zeros/Const*
T0*

index_type0*/
_output_shapes
:         /@
Ў
+gradients/conv4/LeakyRelu_grad/GreaterEqualGreaterEqualconv4/LeakyRelu/mulconv4/BiasAdd*
T0*/
_output_shapes
:         /@
п
4gradients/conv4/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/conv4/LeakyRelu_grad/Shape&gradients/conv4/LeakyRelu_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Т
%gradients/conv4/LeakyRelu_grad/SelectSelect+gradients/conv4/LeakyRelu_grad/GreaterEqual(gradients/pool4/MaxPool_grad/MaxPoolGrad$gradients/conv4/LeakyRelu_grad/zeros*
T0*/
_output_shapes
:         /@
У
'gradients/conv4/LeakyRelu_grad/Select_1Select+gradients/conv4/LeakyRelu_grad/GreaterEqual$gradients/conv4/LeakyRelu_grad/zeros(gradients/pool4/MaxPool_grad/MaxPoolGrad*
T0*/
_output_shapes
:         /@
к
"gradients/conv4/LeakyRelu_grad/SumSum%gradients/conv4/LeakyRelu_grad/Select4gradients/conv4/LeakyRelu_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
├
&gradients/conv4/LeakyRelu_grad/ReshapeReshape"gradients/conv4/LeakyRelu_grad/Sum$gradients/conv4/LeakyRelu_grad/Shape*
T0*
Tshape0*/
_output_shapes
:         /@
╠
$gradients/conv4/LeakyRelu_grad/Sum_1Sum'gradients/conv4/LeakyRelu_grad/Select_16gradients/conv4/LeakyRelu_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
╔
(gradients/conv4/LeakyRelu_grad/Reshape_1Reshape$gradients/conv4/LeakyRelu_grad/Sum_1&gradients/conv4/LeakyRelu_grad/Shape_1*
T0*
Tshape0*/
_output_shapes
:         /@
І
/gradients/conv4/LeakyRelu_grad/tuple/group_depsNoOp'^gradients/conv4/LeakyRelu_grad/Reshape)^gradients/conv4/LeakyRelu_grad/Reshape_1
њ
7gradients/conv4/LeakyRelu_grad/tuple/control_dependencyIdentity&gradients/conv4/LeakyRelu_grad/Reshape0^gradients/conv4/LeakyRelu_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/conv4/LeakyRelu_grad/Reshape*/
_output_shapes
:         /@
ў
9gradients/conv4/LeakyRelu_grad/tuple/control_dependency_1Identity(gradients/conv4/LeakyRelu_grad/Reshape_10^gradients/conv4/LeakyRelu_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/conv4/LeakyRelu_grad/Reshape_1*/
_output_shapes
:         /@
w
$gradients/conv5/LeakyRelu_grad/ShapeShapeconv5/LeakyRelu/mul*
T0*
out_type0*
_output_shapes
:
s
&gradients/conv5/LeakyRelu_grad/Shape_1Shapeconv5/BiasAdd*
T0*
out_type0*
_output_shapes
:
ј
&gradients/conv5/LeakyRelu_grad/Shape_2Shape(gradients/pool5/MaxPool_grad/MaxPoolGrad*
T0*
out_type0*
_output_shapes
:
o
*gradients/conv5/LeakyRelu_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
╠
$gradients/conv5/LeakyRelu_grad/zerosFill&gradients/conv5/LeakyRelu_grad/Shape_2*gradients/conv5/LeakyRelu_grad/zeros/Const*/
_output_shapes
:         .@*
T0*

index_type0
Ў
+gradients/conv5/LeakyRelu_grad/GreaterEqualGreaterEqualconv5/LeakyRelu/mulconv5/BiasAdd*
T0*/
_output_shapes
:         .@
п
4gradients/conv5/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/conv5/LeakyRelu_grad/Shape&gradients/conv5/LeakyRelu_grad/Shape_1*2
_output_shapes 
:         :         *
T0
Т
%gradients/conv5/LeakyRelu_grad/SelectSelect+gradients/conv5/LeakyRelu_grad/GreaterEqual(gradients/pool5/MaxPool_grad/MaxPoolGrad$gradients/conv5/LeakyRelu_grad/zeros*
T0*/
_output_shapes
:         .@
У
'gradients/conv5/LeakyRelu_grad/Select_1Select+gradients/conv5/LeakyRelu_grad/GreaterEqual$gradients/conv5/LeakyRelu_grad/zeros(gradients/pool5/MaxPool_grad/MaxPoolGrad*
T0*/
_output_shapes
:         .@
к
"gradients/conv5/LeakyRelu_grad/SumSum%gradients/conv5/LeakyRelu_grad/Select4gradients/conv5/LeakyRelu_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
├
&gradients/conv5/LeakyRelu_grad/ReshapeReshape"gradients/conv5/LeakyRelu_grad/Sum$gradients/conv5/LeakyRelu_grad/Shape*
T0*
Tshape0*/
_output_shapes
:         .@
╠
$gradients/conv5/LeakyRelu_grad/Sum_1Sum'gradients/conv5/LeakyRelu_grad/Select_16gradients/conv5/LeakyRelu_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
╔
(gradients/conv5/LeakyRelu_grad/Reshape_1Reshape$gradients/conv5/LeakyRelu_grad/Sum_1&gradients/conv5/LeakyRelu_grad/Shape_1*
T0*
Tshape0*/
_output_shapes
:         .@
І
/gradients/conv5/LeakyRelu_grad/tuple/group_depsNoOp'^gradients/conv5/LeakyRelu_grad/Reshape)^gradients/conv5/LeakyRelu_grad/Reshape_1
њ
7gradients/conv5/LeakyRelu_grad/tuple/control_dependencyIdentity&gradients/conv5/LeakyRelu_grad/Reshape0^gradients/conv5/LeakyRelu_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/conv5/LeakyRelu_grad/Reshape*/
_output_shapes
:         .@
ў
9gradients/conv5/LeakyRelu_grad/tuple/control_dependency_1Identity(gradients/conv5/LeakyRelu_grad/Reshape_10^gradients/conv5/LeakyRelu_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/conv5/LeakyRelu_grad/Reshape_1*/
_output_shapes
:         .@
k
(gradients/conv3/LeakyRelu/mul_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
w
*gradients/conv3/LeakyRelu/mul_grad/Shape_1Shapeconv3/BiasAdd*
T0*
out_type0*
_output_shapes
:
С
8gradients/conv3/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/conv3/LeakyRelu/mul_grad/Shape*gradients/conv3/LeakyRelu/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
»
&gradients/conv3/LeakyRelu/mul_grad/MulMul7gradients/conv3/LeakyRelu_grad/tuple/control_dependencyconv3/BiasAdd*/
_output_shapes
:         0@*
T0
¤
&gradients/conv3/LeakyRelu/mul_grad/SumSum&gradients/conv3/LeakyRelu/mul_grad/Mul8gradients/conv3/LeakyRelu/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Х
*gradients/conv3/LeakyRelu/mul_grad/ReshapeReshape&gradients/conv3/LeakyRelu/mul_grad/Sum(gradients/conv3/LeakyRelu/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
╣
(gradients/conv3/LeakyRelu/mul_grad/Mul_1Mulconv3/LeakyRelu/alpha7gradients/conv3/LeakyRelu_grad/tuple/control_dependency*
T0*/
_output_shapes
:         0@
Н
(gradients/conv3/LeakyRelu/mul_grad/Sum_1Sum(gradients/conv3/LeakyRelu/mul_grad/Mul_1:gradients/conv3/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Н
,gradients/conv3/LeakyRelu/mul_grad/Reshape_1Reshape(gradients/conv3/LeakyRelu/mul_grad/Sum_1*gradients/conv3/LeakyRelu/mul_grad/Shape_1*
T0*
Tshape0*/
_output_shapes
:         0@
Ќ
3gradients/conv3/LeakyRelu/mul_grad/tuple/group_depsNoOp+^gradients/conv3/LeakyRelu/mul_grad/Reshape-^gradients/conv3/LeakyRelu/mul_grad/Reshape_1
Ѕ
;gradients/conv3/LeakyRelu/mul_grad/tuple/control_dependencyIdentity*gradients/conv3/LeakyRelu/mul_grad/Reshape4^gradients/conv3/LeakyRelu/mul_grad/tuple/group_deps*
_output_shapes
: *
T0*=
_class3
1/loc:@gradients/conv3/LeakyRelu/mul_grad/Reshape
е
=gradients/conv3/LeakyRelu/mul_grad/tuple/control_dependency_1Identity,gradients/conv3/LeakyRelu/mul_grad/Reshape_14^gradients/conv3/LeakyRelu/mul_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/conv3/LeakyRelu/mul_grad/Reshape_1*/
_output_shapes
:         0@
k
(gradients/conv4/LeakyRelu/mul_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
w
*gradients/conv4/LeakyRelu/mul_grad/Shape_1Shapeconv4/BiasAdd*
T0*
out_type0*
_output_shapes
:
С
8gradients/conv4/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/conv4/LeakyRelu/mul_grad/Shape*gradients/conv4/LeakyRelu/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
»
&gradients/conv4/LeakyRelu/mul_grad/MulMul7gradients/conv4/LeakyRelu_grad/tuple/control_dependencyconv4/BiasAdd*
T0*/
_output_shapes
:         /@
¤
&gradients/conv4/LeakyRelu/mul_grad/SumSum&gradients/conv4/LeakyRelu/mul_grad/Mul8gradients/conv4/LeakyRelu/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Х
*gradients/conv4/LeakyRelu/mul_grad/ReshapeReshape&gradients/conv4/LeakyRelu/mul_grad/Sum(gradients/conv4/LeakyRelu/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
╣
(gradients/conv4/LeakyRelu/mul_grad/Mul_1Mulconv4/LeakyRelu/alpha7gradients/conv4/LeakyRelu_grad/tuple/control_dependency*
T0*/
_output_shapes
:         /@
Н
(gradients/conv4/LeakyRelu/mul_grad/Sum_1Sum(gradients/conv4/LeakyRelu/mul_grad/Mul_1:gradients/conv4/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Н
,gradients/conv4/LeakyRelu/mul_grad/Reshape_1Reshape(gradients/conv4/LeakyRelu/mul_grad/Sum_1*gradients/conv4/LeakyRelu/mul_grad/Shape_1*
T0*
Tshape0*/
_output_shapes
:         /@
Ќ
3gradients/conv4/LeakyRelu/mul_grad/tuple/group_depsNoOp+^gradients/conv4/LeakyRelu/mul_grad/Reshape-^gradients/conv4/LeakyRelu/mul_grad/Reshape_1
Ѕ
;gradients/conv4/LeakyRelu/mul_grad/tuple/control_dependencyIdentity*gradients/conv4/LeakyRelu/mul_grad/Reshape4^gradients/conv4/LeakyRelu/mul_grad/tuple/group_deps*
_output_shapes
: *
T0*=
_class3
1/loc:@gradients/conv4/LeakyRelu/mul_grad/Reshape
е
=gradients/conv4/LeakyRelu/mul_grad/tuple/control_dependency_1Identity,gradients/conv4/LeakyRelu/mul_grad/Reshape_14^gradients/conv4/LeakyRelu/mul_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/conv4/LeakyRelu/mul_grad/Reshape_1*/
_output_shapes
:         /@
k
(gradients/conv5/LeakyRelu/mul_grad/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
w
*gradients/conv5/LeakyRelu/mul_grad/Shape_1Shapeconv5/BiasAdd*
T0*
out_type0*
_output_shapes
:
С
8gradients/conv5/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/conv5/LeakyRelu/mul_grad/Shape*gradients/conv5/LeakyRelu/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
»
&gradients/conv5/LeakyRelu/mul_grad/MulMul7gradients/conv5/LeakyRelu_grad/tuple/control_dependencyconv5/BiasAdd*/
_output_shapes
:         .@*
T0
¤
&gradients/conv5/LeakyRelu/mul_grad/SumSum&gradients/conv5/LeakyRelu/mul_grad/Mul8gradients/conv5/LeakyRelu/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Х
*gradients/conv5/LeakyRelu/mul_grad/ReshapeReshape&gradients/conv5/LeakyRelu/mul_grad/Sum(gradients/conv5/LeakyRelu/mul_grad/Shape*
_output_shapes
: *
T0*
Tshape0
╣
(gradients/conv5/LeakyRelu/mul_grad/Mul_1Mulconv5/LeakyRelu/alpha7gradients/conv5/LeakyRelu_grad/tuple/control_dependency*
T0*/
_output_shapes
:         .@
Н
(gradients/conv5/LeakyRelu/mul_grad/Sum_1Sum(gradients/conv5/LeakyRelu/mul_grad/Mul_1:gradients/conv5/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Н
,gradients/conv5/LeakyRelu/mul_grad/Reshape_1Reshape(gradients/conv5/LeakyRelu/mul_grad/Sum_1*gradients/conv5/LeakyRelu/mul_grad/Shape_1*
T0*
Tshape0*/
_output_shapes
:         .@
Ќ
3gradients/conv5/LeakyRelu/mul_grad/tuple/group_depsNoOp+^gradients/conv5/LeakyRelu/mul_grad/Reshape-^gradients/conv5/LeakyRelu/mul_grad/Reshape_1
Ѕ
;gradients/conv5/LeakyRelu/mul_grad/tuple/control_dependencyIdentity*gradients/conv5/LeakyRelu/mul_grad/Reshape4^gradients/conv5/LeakyRelu/mul_grad/tuple/group_deps*
_output_shapes
: *
T0*=
_class3
1/loc:@gradients/conv5/LeakyRelu/mul_grad/Reshape
е
=gradients/conv5/LeakyRelu/mul_grad/tuple/control_dependency_1Identity,gradients/conv5/LeakyRelu/mul_grad/Reshape_14^gradients/conv5/LeakyRelu/mul_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/conv5/LeakyRelu/mul_grad/Reshape_1*/
_output_shapes
:         .@
њ
gradients/AddN_1AddN9gradients/conv3/LeakyRelu_grad/tuple/control_dependency_1=gradients/conv3/LeakyRelu/mul_grad/tuple/control_dependency_1*
T0*;
_class1
/-loc:@gradients/conv3/LeakyRelu_grad/Reshape_1*
N*/
_output_shapes
:         0@
Ё
(gradients/conv3/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_1*
T0*
data_formatNHWC*
_output_shapes
:@
s
-gradients/conv3/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_1)^gradients/conv3/BiasAdd_grad/BiasAddGrad
Щ
5gradients/conv3/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_1.^gradients/conv3/BiasAdd_grad/tuple/group_deps*/
_output_shapes
:         0@*
T0*;
_class1
/-loc:@gradients/conv3/LeakyRelu_grad/Reshape_1
 
7gradients/conv3/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/conv3/BiasAdd_grad/BiasAddGrad.^gradients/conv3/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/conv3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
њ
gradients/AddN_2AddN9gradients/conv4/LeakyRelu_grad/tuple/control_dependency_1=gradients/conv4/LeakyRelu/mul_grad/tuple/control_dependency_1*
T0*;
_class1
/-loc:@gradients/conv4/LeakyRelu_grad/Reshape_1*
N*/
_output_shapes
:         /@
Ё
(gradients/conv4/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_2*
T0*
data_formatNHWC*
_output_shapes
:@
s
-gradients/conv4/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_2)^gradients/conv4/BiasAdd_grad/BiasAddGrad
Щ
5gradients/conv4/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_2.^gradients/conv4/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/conv4/LeakyRelu_grad/Reshape_1*/
_output_shapes
:         /@
 
7gradients/conv4/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/conv4/BiasAdd_grad/BiasAddGrad.^gradients/conv4/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/conv4/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
њ
gradients/AddN_3AddN9gradients/conv5/LeakyRelu_grad/tuple/control_dependency_1=gradients/conv5/LeakyRelu/mul_grad/tuple/control_dependency_1*
T0*;
_class1
/-loc:@gradients/conv5/LeakyRelu_grad/Reshape_1*
N*/
_output_shapes
:         .@
Ё
(gradients/conv5/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_3*
data_formatNHWC*
_output_shapes
:@*
T0
s
-gradients/conv5/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_3)^gradients/conv5/BiasAdd_grad/BiasAddGrad
Щ
5gradients/conv5/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_3.^gradients/conv5/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/conv5/LeakyRelu_grad/Reshape_1*/
_output_shapes
:         .@
 
7gradients/conv5/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/conv5/BiasAdd_grad/BiasAddGrad.^gradients/conv5/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/conv5/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
џ
"gradients/conv3/Conv2D_grad/ShapeNShapeNEmbedding/ExpandDimsconv3/weights/read*
T0*
out_type0*
N* 
_output_shapes
::
▀
/gradients/conv3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput"gradients/conv3/Conv2D_grad/ShapeNconv3/weights/read5gradients/conv3/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:         2ђ*
	dilations
*
T0
▄
0gradients/conv3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterEmbedding/ExpandDims$gradients/conv3/Conv2D_grad/ShapeN:15gradients/conv3/BiasAdd_grad/tuple/control_dependency*
paddingVALID*'
_output_shapes
:ђ@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ў
,gradients/conv3/Conv2D_grad/tuple/group_depsNoOp1^gradients/conv3/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv3/Conv2D_grad/Conv2DBackpropInput
Ъ
4gradients/conv3/Conv2D_grad/tuple/control_dependencyIdentity/gradients/conv3/Conv2D_grad/Conv2DBackpropInput-^gradients/conv3/Conv2D_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/conv3/Conv2D_grad/Conv2DBackpropInput*0
_output_shapes
:         2ђ
џ
6gradients/conv3/Conv2D_grad/tuple/control_dependency_1Identity0gradients/conv3/Conv2D_grad/Conv2DBackpropFilter-^gradients/conv3/Conv2D_grad/tuple/group_deps*'
_output_shapes
:ђ@*
T0*C
_class9
75loc:@gradients/conv3/Conv2D_grad/Conv2DBackpropFilter
џ
"gradients/conv4/Conv2D_grad/ShapeNShapeNEmbedding/ExpandDimsconv4/weights/read*
N* 
_output_shapes
::*
T0*
out_type0
▀
/gradients/conv4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput"gradients/conv4/Conv2D_grad/ShapeNconv4/weights/read5gradients/conv4/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*0
_output_shapes
:         2ђ*
	dilations
*
T0
▄
0gradients/conv4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterEmbedding/ExpandDims$gradients/conv4/Conv2D_grad/ShapeN:15gradients/conv4/BiasAdd_grad/tuple/control_dependency*
paddingVALID*'
_output_shapes
:ђ@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ў
,gradients/conv4/Conv2D_grad/tuple/group_depsNoOp1^gradients/conv4/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv4/Conv2D_grad/Conv2DBackpropInput
Ъ
4gradients/conv4/Conv2D_grad/tuple/control_dependencyIdentity/gradients/conv4/Conv2D_grad/Conv2DBackpropInput-^gradients/conv4/Conv2D_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/conv4/Conv2D_grad/Conv2DBackpropInput*0
_output_shapes
:         2ђ
џ
6gradients/conv4/Conv2D_grad/tuple/control_dependency_1Identity0gradients/conv4/Conv2D_grad/Conv2DBackpropFilter-^gradients/conv4/Conv2D_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/conv4/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:ђ@
џ
"gradients/conv5/Conv2D_grad/ShapeNShapeNEmbedding/ExpandDimsconv5/weights/read*
N* 
_output_shapes
::*
T0*
out_type0
▀
/gradients/conv5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput"gradients/conv5/Conv2D_grad/ShapeNconv5/weights/read5gradients/conv5/BiasAdd_grad/tuple/control_dependency*0
_output_shapes
:         2ђ*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
▄
0gradients/conv5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterEmbedding/ExpandDims$gradients/conv5/Conv2D_grad/ShapeN:15gradients/conv5/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*'
_output_shapes
:ђ@*
	dilations
*
T0
Ў
,gradients/conv5/Conv2D_grad/tuple/group_depsNoOp1^gradients/conv5/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv5/Conv2D_grad/Conv2DBackpropInput
Ъ
4gradients/conv5/Conv2D_grad/tuple/control_dependencyIdentity/gradients/conv5/Conv2D_grad/Conv2DBackpropInput-^gradients/conv5/Conv2D_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/conv5/Conv2D_grad/Conv2DBackpropInput*0
_output_shapes
:         2ђ
џ
6gradients/conv5/Conv2D_grad/tuple/control_dependency_1Identity0gradients/conv5/Conv2D_grad/Conv2DBackpropFilter-^gradients/conv5/Conv2D_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/conv5/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:ђ@
┬
gradients/AddN_4AddN4gradients/conv3/Conv2D_grad/tuple/control_dependency4gradients/conv4/Conv2D_grad/tuple/control_dependency4gradients/conv5/Conv2D_grad/tuple/control_dependency*
T0*B
_class8
64loc:@gradients/conv3/Conv2D_grad/Conv2DBackpropInput*
N*0
_output_shapes
:         2ђ
џ
)gradients/Embedding/ExpandDims_grad/ShapeShape1Embedding/EmbedSequence/embedding_lookup/Identity*
T0*
out_type0*
_output_shapes
:
И
+gradients/Embedding/ExpandDims_grad/ReshapeReshapegradients/AddN_4)gradients/Embedding/ExpandDims_grad/Shape*,
_output_shapes
:         2ђ*
T0*
Tshape0
═
=gradients/Embedding/EmbedSequence/embedding_lookup_grad/ShapeConst*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*%
valueB	"cК      ђ       *
dtype0	*
_output_shapes
:
Ђ
?gradients/Embedding/EmbedSequence/embedding_lookup_grad/ToInt32Cast=gradients/Embedding/EmbedSequence/embedding_lookup_grad/Shape*

SrcT0	*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
Truncate( *
_output_shapes
:*

DstT0
~
<gradients/Embedding/EmbedSequence/embedding_lookup_grad/SizeSizeinput_x*
T0*
out_type0*
_output_shapes
: 
ѕ
Fgradients/Embedding/EmbedSequence/embedding_lookup_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Є
Bgradients/Embedding/EmbedSequence/embedding_lookup_grad/ExpandDims
ExpandDims<gradients/Embedding/EmbedSequence/embedding_lookup_grad/SizeFgradients/Embedding/EmbedSequence/embedding_lookup_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
Ћ
Kgradients/Embedding/EmbedSequence/embedding_lookup_grad/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
Ќ
Mgradients/Embedding/EmbedSequence/embedding_lookup_grad/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
Ќ
Mgradients/Embedding/EmbedSequence/embedding_lookup_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ќ
Egradients/Embedding/EmbedSequence/embedding_lookup_grad/strided_sliceStridedSlice?gradients/Embedding/EmbedSequence/embedding_lookup_grad/ToInt32Kgradients/Embedding/EmbedSequence/embedding_lookup_grad/strided_slice/stackMgradients/Embedding/EmbedSequence/embedding_lookup_grad/strided_slice/stack_1Mgradients/Embedding/EmbedSequence/embedding_lookup_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
Ё
Cgradients/Embedding/EmbedSequence/embedding_lookup_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
н
>gradients/Embedding/EmbedSequence/embedding_lookup_grad/concatConcatV2Bgradients/Embedding/EmbedSequence/embedding_lookup_grad/ExpandDimsEgradients/Embedding/EmbedSequence/embedding_lookup_grad/strided_sliceCgradients/Embedding/EmbedSequence/embedding_lookup_grad/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Э
?gradients/Embedding/EmbedSequence/embedding_lookup_grad/ReshapeReshape+gradients/Embedding/ExpandDims_grad/Reshape>gradients/Embedding/EmbedSequence/embedding_lookup_grad/concat*
T0*
Tshape0*(
_output_shapes
:         ђ
Н
Agradients/Embedding/EmbedSequence/embedding_lookup_grad/Reshape_1Reshapeinput_xBgradients/Embedding/EmbedSequence/embedding_lookup_grad/ExpandDims*
T0*
Tshape0*#
_output_shapes
:         
Ћ
beta1_power/initial_valueConst*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
valueB
 *fff?*
dtype0*
_output_shapes
: 
д
beta1_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *5
_class+
)'loc:@Embedding/EmbedSequence/embeddings
┼
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
validate_shape(*
_output_shapes
: *
use_locking(
Ђ
beta1_power/readIdentitybeta1_power*
_output_shapes
: *
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings
Ћ
beta2_power/initial_valueConst*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
valueB
 *wЙ?*
dtype0*
_output_shapes
: 
д
beta2_power
VariableV2*
shared_name *5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
	container *
shape: *
dtype0*
_output_shapes
: 
┼
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
validate_shape(*
_output_shapes
: 
Ђ
beta2_power/readIdentitybeta2_power*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
_output_shapes
: 
Л
IEmbedding/EmbedSequence/embeddings/Adam/Initializer/zeros/shape_as_tensorConst*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
valueB"cК  ђ   *
dtype0*
_output_shapes
:
╗
?Embedding/EmbedSequence/embeddings/Adam/Initializer/zeros/ConstConst*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
valueB
 *    *
dtype0*
_output_shapes
: 
┬
9Embedding/EmbedSequence/embeddings/Adam/Initializer/zerosFillIEmbedding/EmbedSequence/embeddings/Adam/Initializer/zeros/shape_as_tensor?Embedding/EmbedSequence/embeddings/Adam/Initializer/zeros/Const*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*

index_type0*!
_output_shapes
:сјђ
п
'Embedding/EmbedSequence/embeddings/Adam
VariableV2*
shape:сјђ*
dtype0*!
_output_shapes
:сјђ*
shared_name *5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
	container 
е
.Embedding/EmbedSequence/embeddings/Adam/AssignAssign'Embedding/EmbedSequence/embeddings/Adam9Embedding/EmbedSequence/embeddings/Adam/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
validate_shape(*!
_output_shapes
:сјђ
─
,Embedding/EmbedSequence/embeddings/Adam/readIdentity'Embedding/EmbedSequence/embeddings/Adam*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*!
_output_shapes
:сјђ
М
KEmbedding/EmbedSequence/embeddings/Adam_1/Initializer/zeros/shape_as_tensorConst*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
valueB"cК  ђ   *
dtype0*
_output_shapes
:
й
AEmbedding/EmbedSequence/embeddings/Adam_1/Initializer/zeros/ConstConst*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
valueB
 *    *
dtype0*
_output_shapes
: 
╚
;Embedding/EmbedSequence/embeddings/Adam_1/Initializer/zerosFillKEmbedding/EmbedSequence/embeddings/Adam_1/Initializer/zeros/shape_as_tensorAEmbedding/EmbedSequence/embeddings/Adam_1/Initializer/zeros/Const*!
_output_shapes
:сјђ*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*

index_type0
┌
)Embedding/EmbedSequence/embeddings/Adam_1
VariableV2*
dtype0*!
_output_shapes
:сјђ*
shared_name *5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
	container *
shape:сјђ
«
0Embedding/EmbedSequence/embeddings/Adam_1/AssignAssign)Embedding/EmbedSequence/embeddings/Adam_1;Embedding/EmbedSequence/embeddings/Adam_1/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
validate_shape(*!
_output_shapes
:сјђ
╚
.Embedding/EmbedSequence/embeddings/Adam_1/readIdentity)Embedding/EmbedSequence/embeddings/Adam_1*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*!
_output_shapes
:сјђ
»
4conv3/weights/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:* 
_class
loc:@conv3/weights*%
valueB"   ђ      @   
Љ
*conv3/weights/Adam/Initializer/zeros/ConstConst* 
_class
loc:@conv3/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
З
$conv3/weights/Adam/Initializer/zerosFill4conv3/weights/Adam/Initializer/zeros/shape_as_tensor*conv3/weights/Adam/Initializer/zeros/Const*
T0* 
_class
loc:@conv3/weights*

index_type0*'
_output_shapes
:ђ@
║
conv3/weights/Adam
VariableV2*
dtype0*'
_output_shapes
:ђ@*
shared_name * 
_class
loc:@conv3/weights*
	container *
shape:ђ@
┌
conv3/weights/Adam/AssignAssignconv3/weights/Adam$conv3/weights/Adam/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv3/weights*
validate_shape(*'
_output_shapes
:ђ@
І
conv3/weights/Adam/readIdentityconv3/weights/Adam*'
_output_shapes
:ђ@*
T0* 
_class
loc:@conv3/weights
▒
6conv3/weights/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:* 
_class
loc:@conv3/weights*%
valueB"   ђ      @   
Њ
,conv3/weights/Adam_1/Initializer/zeros/ConstConst* 
_class
loc:@conv3/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
Щ
&conv3/weights/Adam_1/Initializer/zerosFill6conv3/weights/Adam_1/Initializer/zeros/shape_as_tensor,conv3/weights/Adam_1/Initializer/zeros/Const*'
_output_shapes
:ђ@*
T0* 
_class
loc:@conv3/weights*

index_type0
╝
conv3/weights/Adam_1
VariableV2*
dtype0*'
_output_shapes
:ђ@*
shared_name * 
_class
loc:@conv3/weights*
	container *
shape:ђ@
Я
conv3/weights/Adam_1/AssignAssignconv3/weights/Adam_1&conv3/weights/Adam_1/Initializer/zeros*
validate_shape(*'
_output_shapes
:ђ@*
use_locking(*
T0* 
_class
loc:@conv3/weights
Ј
conv3/weights/Adam_1/readIdentityconv3/weights/Adam_1*
T0* 
_class
loc:@conv3/weights*'
_output_shapes
:ђ@
Љ
#conv3/biases/Adam/Initializer/zerosConst*
_class
loc:@conv3/biases*
valueB@*    *
dtype0*
_output_shapes
:@
ъ
conv3/biases/Adam
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@conv3/biases*
	container *
shape:@
╔
conv3/biases/Adam/AssignAssignconv3/biases/Adam#conv3/biases/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv3/biases*
validate_shape(*
_output_shapes
:@
{
conv3/biases/Adam/readIdentityconv3/biases/Adam*
_output_shapes
:@*
T0*
_class
loc:@conv3/biases
Њ
%conv3/biases/Adam_1/Initializer/zerosConst*
_class
loc:@conv3/biases*
valueB@*    *
dtype0*
_output_shapes
:@
а
conv3/biases/Adam_1
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@conv3/biases
¤
conv3/biases/Adam_1/AssignAssignconv3/biases/Adam_1%conv3/biases/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv3/biases*
validate_shape(*
_output_shapes
:@

conv3/biases/Adam_1/readIdentityconv3/biases/Adam_1*
T0*
_class
loc:@conv3/biases*
_output_shapes
:@
»
4conv4/weights/Adam/Initializer/zeros/shape_as_tensorConst* 
_class
loc:@conv4/weights*%
valueB"   ђ      @   *
dtype0*
_output_shapes
:
Љ
*conv4/weights/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: * 
_class
loc:@conv4/weights*
valueB
 *    
З
$conv4/weights/Adam/Initializer/zerosFill4conv4/weights/Adam/Initializer/zeros/shape_as_tensor*conv4/weights/Adam/Initializer/zeros/Const*
T0* 
_class
loc:@conv4/weights*

index_type0*'
_output_shapes
:ђ@
║
conv4/weights/Adam
VariableV2*
	container *
shape:ђ@*
dtype0*'
_output_shapes
:ђ@*
shared_name * 
_class
loc:@conv4/weights
┌
conv4/weights/Adam/AssignAssignconv4/weights/Adam$conv4/weights/Adam/Initializer/zeros*
T0* 
_class
loc:@conv4/weights*
validate_shape(*'
_output_shapes
:ђ@*
use_locking(
І
conv4/weights/Adam/readIdentityconv4/weights/Adam*
T0* 
_class
loc:@conv4/weights*'
_output_shapes
:ђ@
▒
6conv4/weights/Adam_1/Initializer/zeros/shape_as_tensorConst* 
_class
loc:@conv4/weights*%
valueB"   ђ      @   *
dtype0*
_output_shapes
:
Њ
,conv4/weights/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: * 
_class
loc:@conv4/weights*
valueB
 *    
Щ
&conv4/weights/Adam_1/Initializer/zerosFill6conv4/weights/Adam_1/Initializer/zeros/shape_as_tensor,conv4/weights/Adam_1/Initializer/zeros/Const*'
_output_shapes
:ђ@*
T0* 
_class
loc:@conv4/weights*

index_type0
╝
conv4/weights/Adam_1
VariableV2*
shared_name * 
_class
loc:@conv4/weights*
	container *
shape:ђ@*
dtype0*'
_output_shapes
:ђ@
Я
conv4/weights/Adam_1/AssignAssignconv4/weights/Adam_1&conv4/weights/Adam_1/Initializer/zeros*
validate_shape(*'
_output_shapes
:ђ@*
use_locking(*
T0* 
_class
loc:@conv4/weights
Ј
conv4/weights/Adam_1/readIdentityconv4/weights/Adam_1*
T0* 
_class
loc:@conv4/weights*'
_output_shapes
:ђ@
Љ
#conv4/biases/Adam/Initializer/zerosConst*
_class
loc:@conv4/biases*
valueB@*    *
dtype0*
_output_shapes
:@
ъ
conv4/biases/Adam
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@conv4/biases*
	container 
╔
conv4/biases/Adam/AssignAssignconv4/biases/Adam#conv4/biases/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv4/biases*
validate_shape(*
_output_shapes
:@
{
conv4/biases/Adam/readIdentityconv4/biases/Adam*
_output_shapes
:@*
T0*
_class
loc:@conv4/biases
Њ
%conv4/biases/Adam_1/Initializer/zerosConst*
_class
loc:@conv4/biases*
valueB@*    *
dtype0*
_output_shapes
:@
а
conv4/biases/Adam_1
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@conv4/biases*
	container 
¤
conv4/biases/Adam_1/AssignAssignconv4/biases/Adam_1%conv4/biases/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@conv4/biases

conv4/biases/Adam_1/readIdentityconv4/biases/Adam_1*
T0*
_class
loc:@conv4/biases*
_output_shapes
:@
»
4conv5/weights/Adam/Initializer/zeros/shape_as_tensorConst* 
_class
loc:@conv5/weights*%
valueB"   ђ      @   *
dtype0*
_output_shapes
:
Љ
*conv5/weights/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: * 
_class
loc:@conv5/weights*
valueB
 *    
З
$conv5/weights/Adam/Initializer/zerosFill4conv5/weights/Adam/Initializer/zeros/shape_as_tensor*conv5/weights/Adam/Initializer/zeros/Const*
T0* 
_class
loc:@conv5/weights*

index_type0*'
_output_shapes
:ђ@
║
conv5/weights/Adam
VariableV2*
	container *
shape:ђ@*
dtype0*'
_output_shapes
:ђ@*
shared_name * 
_class
loc:@conv5/weights
┌
conv5/weights/Adam/AssignAssignconv5/weights/Adam$conv5/weights/Adam/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv5/weights*
validate_shape(*'
_output_shapes
:ђ@
І
conv5/weights/Adam/readIdentityconv5/weights/Adam*'
_output_shapes
:ђ@*
T0* 
_class
loc:@conv5/weights
▒
6conv5/weights/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:* 
_class
loc:@conv5/weights*%
valueB"   ђ      @   
Њ
,conv5/weights/Adam_1/Initializer/zeros/ConstConst* 
_class
loc:@conv5/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
Щ
&conv5/weights/Adam_1/Initializer/zerosFill6conv5/weights/Adam_1/Initializer/zeros/shape_as_tensor,conv5/weights/Adam_1/Initializer/zeros/Const*'
_output_shapes
:ђ@*
T0* 
_class
loc:@conv5/weights*

index_type0
╝
conv5/weights/Adam_1
VariableV2*
dtype0*'
_output_shapes
:ђ@*
shared_name * 
_class
loc:@conv5/weights*
	container *
shape:ђ@
Я
conv5/weights/Adam_1/AssignAssignconv5/weights/Adam_1&conv5/weights/Adam_1/Initializer/zeros*
T0* 
_class
loc:@conv5/weights*
validate_shape(*'
_output_shapes
:ђ@*
use_locking(
Ј
conv5/weights/Adam_1/readIdentityconv5/weights/Adam_1*
T0* 
_class
loc:@conv5/weights*'
_output_shapes
:ђ@
Љ
#conv5/biases/Adam/Initializer/zerosConst*
_class
loc:@conv5/biases*
valueB@*    *
dtype0*
_output_shapes
:@
ъ
conv5/biases/Adam
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@conv5/biases*
	container *
shape:@
╔
conv5/biases/Adam/AssignAssignconv5/biases/Adam#conv5/biases/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@conv5/biases
{
conv5/biases/Adam/readIdentityconv5/biases/Adam*
T0*
_class
loc:@conv5/biases*
_output_shapes
:@
Њ
%conv5/biases/Adam_1/Initializer/zerosConst*
_class
loc:@conv5/biases*
valueB@*    *
dtype0*
_output_shapes
:@
а
conv5/biases/Adam_1
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@conv5/biases*
	container *
shape:@
¤
conv5/biases/Adam_1/AssignAssignconv5/biases/Adam_1%conv5/biases/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@conv5/biases

conv5/biases/Adam_1/readIdentityconv5/biases/Adam_1*
T0*
_class
loc:@conv5/biases*
_output_shapes
:@
▒
.fully_connected/weights/Adam/Initializer/zerosConst**
_class 
loc:@fully_connected/weights*
valueB	└*    *
dtype0*
_output_shapes
:	└
Й
fully_connected/weights/Adam
VariableV2*
	container *
shape:	└*
dtype0*
_output_shapes
:	└*
shared_name **
_class 
loc:@fully_connected/weights
Щ
#fully_connected/weights/Adam/AssignAssignfully_connected/weights/Adam.fully_connected/weights/Adam/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@fully_connected/weights*
validate_shape(*
_output_shapes
:	└
А
!fully_connected/weights/Adam/readIdentityfully_connected/weights/Adam*
T0**
_class 
loc:@fully_connected/weights*
_output_shapes
:	└
│
0fully_connected/weights/Adam_1/Initializer/zerosConst**
_class 
loc:@fully_connected/weights*
valueB	└*    *
dtype0*
_output_shapes
:	└
└
fully_connected/weights/Adam_1
VariableV2*
shape:	└*
dtype0*
_output_shapes
:	└*
shared_name **
_class 
loc:@fully_connected/weights*
	container 
ђ
%fully_connected/weights/Adam_1/AssignAssignfully_connected/weights/Adam_10fully_connected/weights/Adam_1/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@fully_connected/weights*
validate_shape(*
_output_shapes
:	└
Ц
#fully_connected/weights/Adam_1/readIdentityfully_connected/weights/Adam_1*
T0**
_class 
loc:@fully_connected/weights*
_output_shapes
:	└
Ц
-fully_connected/biases/Adam/Initializer/zerosConst*)
_class
loc:@fully_connected/biases*
valueB*    *
dtype0*
_output_shapes
:
▓
fully_connected/biases/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *)
_class
loc:@fully_connected/biases*
	container *
shape:
ы
"fully_connected/biases/Adam/AssignAssignfully_connected/biases/Adam-fully_connected/biases/Adam/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@fully_connected/biases*
validate_shape(*
_output_shapes
:
Ў
 fully_connected/biases/Adam/readIdentityfully_connected/biases/Adam*
_output_shapes
:*
T0*)
_class
loc:@fully_connected/biases
Д
/fully_connected/biases/Adam_1/Initializer/zerosConst*)
_class
loc:@fully_connected/biases*
valueB*    *
dtype0*
_output_shapes
:
┤
fully_connected/biases/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *)
_class
loc:@fully_connected/biases*
	container *
shape:
э
$fully_connected/biases/Adam_1/AssignAssignfully_connected/biases/Adam_1/fully_connected/biases/Adam_1/Initializer/zeros*
T0*)
_class
loc:@fully_connected/biases*
validate_shape(*
_output_shapes
:*
use_locking(
Ю
"fully_connected/biases/Adam_1/readIdentityfully_connected/biases/Adam_1*
T0*)
_class
loc:@fully_connected/biases*
_output_shapes
:
W
Adam/learning_rateConst*
valueB
 *oЃ:*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
O

Adam/beta2Const*
valueB
 *wЙ?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
Ё
5Adam/update_Embedding/EmbedSequence/embeddings/UniqueUniqueAgradients/Embedding/EmbedSequence/embedding_lookup_grad/Reshape_1*2
_output_shapes 
:         :         *
out_idx0*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings
Я
4Adam/update_Embedding/EmbedSequence/embeddings/ShapeShape5Adam/update_Embedding/EmbedSequence/embeddings/Unique*
_output_shapes
:*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
out_type0
├
BAdam/update_Embedding/EmbedSequence/embeddings/strided_slice/stackConst*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
valueB: *
dtype0*
_output_shapes
:
┼
DAdam/update_Embedding/EmbedSequence/embeddings/strided_slice/stack_1Const*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
valueB:*
dtype0*
_output_shapes
:
┼
DAdam/update_Embedding/EmbedSequence/embeddings/strided_slice/stack_2Const*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
valueB:*
dtype0*
_output_shapes
:
Џ
<Adam/update_Embedding/EmbedSequence/embeddings/strided_sliceStridedSlice4Adam/update_Embedding/EmbedSequence/embeddings/ShapeBAdam/update_Embedding/EmbedSequence/embeddings/strided_slice/stackDAdam/update_Embedding/EmbedSequence/embeddings/strided_slice/stack_1DAdam/update_Embedding/EmbedSequence/embeddings/strided_slice/stack_2*
T0*
Index0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ю
AAdam/update_Embedding/EmbedSequence/embeddings/UnsortedSegmentSumUnsortedSegmentSum?gradients/Embedding/EmbedSequence/embedding_lookup_grad/Reshape7Adam/update_Embedding/EmbedSequence/embeddings/Unique:1<Adam/update_Embedding/EmbedSequence/embeddings/strided_slice*(
_output_shapes
:         ђ*
Tnumsegments0*
Tindices0*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings
░
4Adam/update_Embedding/EmbedSequence/embeddings/sub/xConst*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
valueB
 *  ђ?*
dtype0*
_output_shapes
: 
┘
2Adam/update_Embedding/EmbedSequence/embeddings/subSub4Adam/update_Embedding/EmbedSequence/embeddings/sub/xbeta2_power/read*
_output_shapes
: *
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings
К
3Adam/update_Embedding/EmbedSequence/embeddings/SqrtSqrt2Adam/update_Embedding/EmbedSequence/embeddings/sub*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
_output_shapes
: 
┌
2Adam/update_Embedding/EmbedSequence/embeddings/mulMulAdam/learning_rate3Adam/update_Embedding/EmbedSequence/embeddings/Sqrt*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
_output_shapes
: 
▓
6Adam/update_Embedding/EmbedSequence/embeddings/sub_1/xConst*
dtype0*
_output_shapes
: *5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
valueB
 *  ђ?
П
4Adam/update_Embedding/EmbedSequence/embeddings/sub_1Sub6Adam/update_Embedding/EmbedSequence/embeddings/sub_1/xbeta1_power/read*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
_output_shapes
: 
Ѓ
6Adam/update_Embedding/EmbedSequence/embeddings/truedivRealDiv2Adam/update_Embedding/EmbedSequence/embeddings/mul4Adam/update_Embedding/EmbedSequence/embeddings/sub_1*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
_output_shapes
: 
▓
6Adam/update_Embedding/EmbedSequence/embeddings/sub_2/xConst*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
valueB
 *  ђ?*
dtype0*
_output_shapes
: 
О
4Adam/update_Embedding/EmbedSequence/embeddings/sub_2Sub6Adam/update_Embedding/EmbedSequence/embeddings/sub_2/x
Adam/beta1*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
_output_shapes
: 
ъ
4Adam/update_Embedding/EmbedSequence/embeddings/mul_1MulAAdam/update_Embedding/EmbedSequence/embeddings/UnsortedSegmentSum4Adam/update_Embedding/EmbedSequence/embeddings/sub_2*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*(
_output_shapes
:         ђ
п
4Adam/update_Embedding/EmbedSequence/embeddings/mul_2Mul,Embedding/EmbedSequence/embeddings/Adam/read
Adam/beta1*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*!
_output_shapes
:сјђ
ф
5Adam/update_Embedding/EmbedSequence/embeddings/AssignAssign'Embedding/EmbedSequence/embeddings/Adam4Adam/update_Embedding/EmbedSequence/embeddings/mul_2*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
validate_shape(*!
_output_shapes
:сјђ*
use_locking( 
Џ
9Adam/update_Embedding/EmbedSequence/embeddings/ScatterAdd
ScatterAdd'Embedding/EmbedSequence/embeddings/Adam5Adam/update_Embedding/EmbedSequence/embeddings/Unique4Adam/update_Embedding/EmbedSequence/embeddings/mul_16^Adam/update_Embedding/EmbedSequence/embeddings/Assign*
use_locking( *
Tindices0*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*!
_output_shapes
:сјђ
Ф
4Adam/update_Embedding/EmbedSequence/embeddings/mul_3MulAAdam/update_Embedding/EmbedSequence/embeddings/UnsortedSegmentSumAAdam/update_Embedding/EmbedSequence/embeddings/UnsortedSegmentSum*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*(
_output_shapes
:         ђ
▓
6Adam/update_Embedding/EmbedSequence/embeddings/sub_3/xConst*
dtype0*
_output_shapes
: *5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
valueB
 *  ђ?
О
4Adam/update_Embedding/EmbedSequence/embeddings/sub_3Sub6Adam/update_Embedding/EmbedSequence/embeddings/sub_3/x
Adam/beta2*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
_output_shapes
: 
Љ
4Adam/update_Embedding/EmbedSequence/embeddings/mul_4Mul4Adam/update_Embedding/EmbedSequence/embeddings/mul_34Adam/update_Embedding/EmbedSequence/embeddings/sub_3*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*(
_output_shapes
:         ђ
┌
4Adam/update_Embedding/EmbedSequence/embeddings/mul_5Mul.Embedding/EmbedSequence/embeddings/Adam_1/read
Adam/beta2*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*!
_output_shapes
:сјђ
«
7Adam/update_Embedding/EmbedSequence/embeddings/Assign_1Assign)Embedding/EmbedSequence/embeddings/Adam_14Adam/update_Embedding/EmbedSequence/embeddings/mul_5*
use_locking( *
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
validate_shape(*!
_output_shapes
:сјђ
А
;Adam/update_Embedding/EmbedSequence/embeddings/ScatterAdd_1
ScatterAdd)Embedding/EmbedSequence/embeddings/Adam_15Adam/update_Embedding/EmbedSequence/embeddings/Unique4Adam/update_Embedding/EmbedSequence/embeddings/mul_48^Adam/update_Embedding/EmbedSequence/embeddings/Assign_1*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*!
_output_shapes
:сјђ*
use_locking( *
Tindices0
П
5Adam/update_Embedding/EmbedSequence/embeddings/Sqrt_1Sqrt;Adam/update_Embedding/EmbedSequence/embeddings/ScatterAdd_1*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*!
_output_shapes
:сјђ
Љ
4Adam/update_Embedding/EmbedSequence/embeddings/mul_6Mul6Adam/update_Embedding/EmbedSequence/embeddings/truediv9Adam/update_Embedding/EmbedSequence/embeddings/ScatterAdd*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*!
_output_shapes
:сјђ
р
2Adam/update_Embedding/EmbedSequence/embeddings/addAdd5Adam/update_Embedding/EmbedSequence/embeddings/Sqrt_1Adam/epsilon*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*!
_output_shapes
:сјђ
љ
8Adam/update_Embedding/EmbedSequence/embeddings/truediv_1RealDiv4Adam/update_Embedding/EmbedSequence/embeddings/mul_62Adam/update_Embedding/EmbedSequence/embeddings/add*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*!
_output_shapes
:сјђ
Ў
8Adam/update_Embedding/EmbedSequence/embeddings/AssignSub	AssignSub"Embedding/EmbedSequence/embeddings8Adam/update_Embedding/EmbedSequence/embeddings/truediv_1*!
_output_shapes
:сјђ*
use_locking( *
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings
Г
9Adam/update_Embedding/EmbedSequence/embeddings/group_depsNoOp9^Adam/update_Embedding/EmbedSequence/embeddings/AssignSub:^Adam/update_Embedding/EmbedSequence/embeddings/ScatterAdd<^Adam/update_Embedding/EmbedSequence/embeddings/ScatterAdd_1*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings
Щ
#Adam/update_conv3/weights/ApplyAdam	ApplyAdamconv3/weightsconv3/weights/Adamconv3/weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/conv3/Conv2D_grad/tuple/control_dependency_1*
use_nesterov( *'
_output_shapes
:ђ@*
use_locking( *
T0* 
_class
loc:@conv3/weights
ж
"Adam/update_conv3/biases/ApplyAdam	ApplyAdamconv3/biasesconv3/biases/Adamconv3/biases/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon7gradients/conv3/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:@*
use_locking( *
T0*
_class
loc:@conv3/biases
Щ
#Adam/update_conv4/weights/ApplyAdam	ApplyAdamconv4/weightsconv4/weights/Adamconv4/weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/conv4/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@conv4/weights*
use_nesterov( *'
_output_shapes
:ђ@
ж
"Adam/update_conv4/biases/ApplyAdam	ApplyAdamconv4/biasesconv4/biases/Adamconv4/biases/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon7gradients/conv4/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@conv4/biases*
use_nesterov( *
_output_shapes
:@
Щ
#Adam/update_conv5/weights/ApplyAdam	ApplyAdamconv5/weightsconv5/weights/Adamconv5/weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/conv5/Conv2D_grad/tuple/control_dependency_1*
T0* 
_class
loc:@conv5/weights*
use_nesterov( *'
_output_shapes
:ђ@*
use_locking( 
ж
"Adam/update_conv5/biases/ApplyAdam	ApplyAdamconv5/biasesconv5/biases/Adamconv5/biases/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon7gradients/conv5/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@conv5/biases*
use_nesterov( *
_output_shapes
:@*
use_locking( 
Ч
-Adam/update_fully_connected/weights/ApplyAdam	ApplyAdamfully_connected/weightsfully_connected/weights/Adamfully_connected/weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN*
use_locking( *
T0**
_class 
loc:@fully_connected/weights*
use_nesterov( *
_output_shapes
:	└
г
,Adam/update_fully_connected/biases/ApplyAdam	ApplyAdamfully_connected/biasesfully_connected/biases/Adamfully_connected/biases/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonHgradients/output/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*)
_class
loc:@fully_connected/biases
Ђ
Adam/mulMulbeta1_power/read
Adam/beta1:^Adam/update_Embedding/EmbedSequence/embeddings/group_deps#^Adam/update_conv3/biases/ApplyAdam$^Adam/update_conv3/weights/ApplyAdam#^Adam/update_conv4/biases/ApplyAdam$^Adam/update_conv4/weights/ApplyAdam#^Adam/update_conv5/biases/ApplyAdam$^Adam/update_conv5/weights/ApplyAdam-^Adam/update_fully_connected/biases/ApplyAdam.^Adam/update_fully_connected/weights/ApplyAdam*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
_output_shapes
: 
Г
Adam/AssignAssignbeta1_powerAdam/mul*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings
Ѓ

Adam/mul_1Mulbeta2_power/read
Adam/beta2:^Adam/update_Embedding/EmbedSequence/embeddings/group_deps#^Adam/update_conv3/biases/ApplyAdam$^Adam/update_conv3/weights/ApplyAdam#^Adam/update_conv4/biases/ApplyAdam$^Adam/update_conv4/weights/ApplyAdam#^Adam/update_conv5/biases/ApplyAdam$^Adam/update_conv5/weights/ApplyAdam-^Adam/update_fully_connected/biases/ApplyAdam.^Adam/update_fully_connected/weights/ApplyAdam*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
_output_shapes
: 
▒
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
validate_shape(*
_output_shapes
: 
Г
Adam/updateNoOp^Adam/Assign^Adam/Assign_1:^Adam/update_Embedding/EmbedSequence/embeddings/group_deps#^Adam/update_conv3/biases/ApplyAdam$^Adam/update_conv3/weights/ApplyAdam#^Adam/update_conv4/biases/ApplyAdam$^Adam/update_conv4/weights/ApplyAdam#^Adam/update_conv5/biases/ApplyAdam$^Adam/update_conv5/weights/ApplyAdam-^Adam/update_fully_connected/biases/ApplyAdam.^Adam/update_fully_connected/weights/ApplyAdam
z

Adam/valueConst^Adam/update*
dtype0*
_output_shapes
: *
_class
loc:@global_step*
value	B :
~
Adam	AssignAddglobal_step
Adam/value*
use_locking( *
T0*
_class
loc:@global_step*
_output_shapes
: 
R
loss_1/tagsConst*
valueB Bloss_1*
dtype0*
_output_shapes
: 
O
loss_1ScalarSummaryloss_1/tagsloss/add*
T0*
_output_shapes
: 
Z
accuracy_1/tagsConst*
valueB B
accuracy_1*
dtype0*
_output_shapes
: 
`

accuracy_1ScalarSummaryaccuracy_1/tagsaccuracy/accuracy*
_output_shapes
: *
T0
W
Merge/MergeSummaryMergeSummaryloss_1
accuracy_1*
N*
_output_shapes
: 
Њ
initNoOp/^Embedding/EmbedSequence/embeddings/Adam/Assign1^Embedding/EmbedSequence/embeddings/Adam_1/Assign*^Embedding/EmbedSequence/embeddings/Assign^beta1_power/Assign^beta2_power/Assign^conv3/biases/Adam/Assign^conv3/biases/Adam_1/Assign^conv3/biases/Assign^conv3/weights/Adam/Assign^conv3/weights/Adam_1/Assign^conv3/weights/Assign^conv4/biases/Adam/Assign^conv4/biases/Adam_1/Assign^conv4/biases/Assign^conv4/weights/Adam/Assign^conv4/weights/Adam_1/Assign^conv4/weights/Assign^conv5/biases/Adam/Assign^conv5/biases/Adam_1/Assign^conv5/biases/Assign^conv5/weights/Adam/Assign^conv5/weights/Adam_1/Assign^conv5/weights/Assign#^fully_connected/biases/Adam/Assign%^fully_connected/biases/Adam_1/Assign^fully_connected/biases/Assign$^fully_connected/weights/Adam/Assign&^fully_connected/weights/Adam_1/Assign^fully_connected/weights/Assign^global_step/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
щ
save/SaveV2/tensor_namesConst*г
valueбBЪB"Embedding/EmbedSequence/embeddingsB'Embedding/EmbedSequence/embeddings/AdamB)Embedding/EmbedSequence/embeddings/Adam_1Bbeta1_powerBbeta2_powerBconv3/biasesBconv3/biases/AdamBconv3/biases/Adam_1Bconv3/weightsBconv3/weights/AdamBconv3/weights/Adam_1Bconv4/biasesBconv4/biases/AdamBconv4/biases/Adam_1Bconv4/weightsBconv4/weights/AdamBconv4/weights/Adam_1Bconv5/biasesBconv5/biases/AdamBconv5/biases/Adam_1Bconv5/weightsBconv5/weights/AdamBconv5/weights/Adam_1Bfully_connected/biasesBfully_connected/biases/AdamBfully_connected/biases/Adam_1Bfully_connected/weightsBfully_connected/weights/AdamBfully_connected/weights/Adam_1Bglobal_step*
dtype0*
_output_shapes
:
Ъ
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
ъ
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices"Embedding/EmbedSequence/embeddings'Embedding/EmbedSequence/embeddings/Adam)Embedding/EmbedSequence/embeddings/Adam_1beta1_powerbeta2_powerconv3/biasesconv3/biases/Adamconv3/biases/Adam_1conv3/weightsconv3/weights/Adamconv3/weights/Adam_1conv4/biasesconv4/biases/Adamconv4/biases/Adam_1conv4/weightsconv4/weights/Adamconv4/weights/Adam_1conv5/biasesconv5/biases/Adamconv5/biases/Adam_1conv5/weightsconv5/weights/Adamconv5/weights/Adam_1fully_connected/biasesfully_connected/biases/Adamfully_connected/biases/Adam_1fully_connected/weightsfully_connected/weights/Adamfully_connected/weights/Adam_1global_step*,
dtypes"
 2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
І
save/RestoreV2/tensor_namesConst"/device:CPU:0*г
valueбBЪB"Embedding/EmbedSequence/embeddingsB'Embedding/EmbedSequence/embeddings/AdamB)Embedding/EmbedSequence/embeddings/Adam_1Bbeta1_powerBbeta2_powerBconv3/biasesBconv3/biases/AdamBconv3/biases/Adam_1Bconv3/weightsBconv3/weights/AdamBconv3/weights/Adam_1Bconv4/biasesBconv4/biases/AdamBconv4/biases/Adam_1Bconv4/weightsBconv4/weights/AdamBconv4/weights/Adam_1Bconv5/biasesBconv5/biases/AdamBconv5/biases/Adam_1Bconv5/weightsBconv5/weights/AdamBconv5/weights/Adam_1Bfully_connected/biasesBfully_connected/biases/AdamBfully_connected/biases/Adam_1Bfully_connected/weightsBfully_connected/weights/AdamBfully_connected/weights/Adam_1Bglobal_step*
dtype0*
_output_shapes
:
▒
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
▒
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*ї
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2
Н
save/AssignAssign"Embedding/EmbedSequence/embeddingssave/RestoreV2*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
validate_shape(*!
_output_shapes
:сјђ*
use_locking(
я
save/Assign_1Assign'Embedding/EmbedSequence/embeddings/Adamsave/RestoreV2:1*
validate_shape(*!
_output_shapes
:сјђ*
use_locking(*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings
Я
save/Assign_2Assign)Embedding/EmbedSequence/embeddings/Adam_1save/RestoreV2:2*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
validate_shape(*!
_output_shapes
:сјђ*
use_locking(
и
save/Assign_3Assignbeta1_powersave/RestoreV2:3*
use_locking(*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
validate_shape(*
_output_shapes
: 
и
save/Assign_4Assignbeta2_powersave/RestoreV2:4*
use_locking(*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
validate_shape(*
_output_shapes
: 
д
save/Assign_5Assignconv3/biasessave/RestoreV2:5*
use_locking(*
T0*
_class
loc:@conv3/biases*
validate_shape(*
_output_shapes
:@
Ф
save/Assign_6Assignconv3/biases/Adamsave/RestoreV2:6*
use_locking(*
T0*
_class
loc:@conv3/biases*
validate_shape(*
_output_shapes
:@
Г
save/Assign_7Assignconv3/biases/Adam_1save/RestoreV2:7*
use_locking(*
T0*
_class
loc:@conv3/biases*
validate_shape(*
_output_shapes
:@
х
save/Assign_8Assignconv3/weightssave/RestoreV2:8*
use_locking(*
T0* 
_class
loc:@conv3/weights*
validate_shape(*'
_output_shapes
:ђ@
║
save/Assign_9Assignconv3/weights/Adamsave/RestoreV2:9*
use_locking(*
T0* 
_class
loc:@conv3/weights*
validate_shape(*'
_output_shapes
:ђ@
Й
save/Assign_10Assignconv3/weights/Adam_1save/RestoreV2:10*
validate_shape(*'
_output_shapes
:ђ@*
use_locking(*
T0* 
_class
loc:@conv3/weights
е
save/Assign_11Assignconv4/biasessave/RestoreV2:11*
T0*
_class
loc:@conv4/biases*
validate_shape(*
_output_shapes
:@*
use_locking(
Г
save/Assign_12Assignconv4/biases/Adamsave/RestoreV2:12*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@conv4/biases
»
save/Assign_13Assignconv4/biases/Adam_1save/RestoreV2:13*
use_locking(*
T0*
_class
loc:@conv4/biases*
validate_shape(*
_output_shapes
:@
и
save/Assign_14Assignconv4/weightssave/RestoreV2:14*
T0* 
_class
loc:@conv4/weights*
validate_shape(*'
_output_shapes
:ђ@*
use_locking(
╝
save/Assign_15Assignconv4/weights/Adamsave/RestoreV2:15*
T0* 
_class
loc:@conv4/weights*
validate_shape(*'
_output_shapes
:ђ@*
use_locking(
Й
save/Assign_16Assignconv4/weights/Adam_1save/RestoreV2:16*
T0* 
_class
loc:@conv4/weights*
validate_shape(*'
_output_shapes
:ђ@*
use_locking(
е
save/Assign_17Assignconv5/biasessave/RestoreV2:17*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@conv5/biases
Г
save/Assign_18Assignconv5/biases/Adamsave/RestoreV2:18*
use_locking(*
T0*
_class
loc:@conv5/biases*
validate_shape(*
_output_shapes
:@
»
save/Assign_19Assignconv5/biases/Adam_1save/RestoreV2:19*
use_locking(*
T0*
_class
loc:@conv5/biases*
validate_shape(*
_output_shapes
:@
и
save/Assign_20Assignconv5/weightssave/RestoreV2:20*
use_locking(*
T0* 
_class
loc:@conv5/weights*
validate_shape(*'
_output_shapes
:ђ@
╝
save/Assign_21Assignconv5/weights/Adamsave/RestoreV2:21*
validate_shape(*'
_output_shapes
:ђ@*
use_locking(*
T0* 
_class
loc:@conv5/weights
Й
save/Assign_22Assignconv5/weights/Adam_1save/RestoreV2:22*
validate_shape(*'
_output_shapes
:ђ@*
use_locking(*
T0* 
_class
loc:@conv5/weights
╝
save/Assign_23Assignfully_connected/biasessave/RestoreV2:23*
T0*)
_class
loc:@fully_connected/biases*
validate_shape(*
_output_shapes
:*
use_locking(
┴
save/Assign_24Assignfully_connected/biases/Adamsave/RestoreV2:24*
T0*)
_class
loc:@fully_connected/biases*
validate_shape(*
_output_shapes
:*
use_locking(
├
save/Assign_25Assignfully_connected/biases/Adam_1save/RestoreV2:25*
use_locking(*
T0*)
_class
loc:@fully_connected/biases*
validate_shape(*
_output_shapes
:
├
save/Assign_26Assignfully_connected/weightssave/RestoreV2:26*
T0**
_class 
loc:@fully_connected/weights*
validate_shape(*
_output_shapes
:	└*
use_locking(
╚
save/Assign_27Assignfully_connected/weights/Adamsave/RestoreV2:27*
T0**
_class 
loc:@fully_connected/weights*
validate_shape(*
_output_shapes
:	└*
use_locking(
╩
save/Assign_28Assignfully_connected/weights/Adam_1save/RestoreV2:28*
T0**
_class 
loc:@fully_connected/weights*
validate_shape(*
_output_shapes
:	└*
use_locking(
б
save/Assign_29Assignglobal_stepsave/RestoreV2:29*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step
і
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
є
save_1/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_0c649f1d14af42af8e1543ea8569b76a/part
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
ћ
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
і
save_1/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*г
valueбBЪB"Embedding/EmbedSequence/embeddingsB'Embedding/EmbedSequence/embeddings/AdamB)Embedding/EmbedSequence/embeddings/Adam_1Bbeta1_powerBbeta2_powerBconv3/biasesBconv3/biases/AdamBconv3/biases/Adam_1Bconv3/weightsBconv3/weights/AdamBconv3/weights/Adam_1Bconv4/biasesBconv4/biases/AdamBconv4/biases/Adam_1Bconv4/weightsBconv4/weights/AdamBconv4/weights/Adam_1Bconv5/biasesBconv5/biases/AdamBconv5/biases/Adam_1Bconv5/weightsBconv5/weights/AdamBconv5/weights/Adam_1Bfully_connected/biasesBfully_connected/biases/AdamBfully_connected/biases/Adam_1Bfully_connected/weightsBfully_connected/weights/AdamBfully_connected/weights/Adam_1Bglobal_step
░
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
┐
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices"Embedding/EmbedSequence/embeddings'Embedding/EmbedSequence/embeddings/Adam)Embedding/EmbedSequence/embeddings/Adam_1beta1_powerbeta2_powerconv3/biasesconv3/biases/Adamconv3/biases/Adam_1conv3/weightsconv3/weights/Adamconv3/weights/Adam_1conv4/biasesconv4/biases/Adamconv4/biases/Adam_1conv4/weightsconv4/weights/Adamconv4/weights/Adam_1conv5/biasesconv5/biases/Adamconv5/biases/Adam_1conv5/weightsconv5/weights/Adamconv5/weights/Adam_1fully_connected/biasesfully_connected/biases/Adamfully_connected/biases/Adam_1fully_connected/weightsfully_connected/weights/Adamfully_connected/weights/Adam_1global_step"/device:CPU:0*,
dtypes"
 2
е
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
▓
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
њ
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
Љ
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
Ї
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*г
valueбBЪB"Embedding/EmbedSequence/embeddingsB'Embedding/EmbedSequence/embeddings/AdamB)Embedding/EmbedSequence/embeddings/Adam_1Bbeta1_powerBbeta2_powerBconv3/biasesBconv3/biases/AdamBconv3/biases/Adam_1Bconv3/weightsBconv3/weights/AdamBconv3/weights/Adam_1Bconv4/biasesBconv4/biases/AdamBconv4/biases/Adam_1Bconv4/weightsBconv4/weights/AdamBconv4/weights/Adam_1Bconv5/biasesBconv5/biases/AdamBconv5/biases/Adam_1Bconv5/weightsBconv5/weights/AdamBconv5/weights/Adam_1Bfully_connected/biasesBfully_connected/biases/AdamBfully_connected/biases/Adam_1Bfully_connected/weightsBfully_connected/weights/AdamBfully_connected/weights/Adam_1Bglobal_step
│
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
╣
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*ї
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2
┘
save_1/AssignAssign"Embedding/EmbedSequence/embeddingssave_1/RestoreV2*
use_locking(*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
validate_shape(*!
_output_shapes
:сјђ
Р
save_1/Assign_1Assign'Embedding/EmbedSequence/embeddings/Adamsave_1/RestoreV2:1*
use_locking(*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
validate_shape(*!
_output_shapes
:сјђ
С
save_1/Assign_2Assign)Embedding/EmbedSequence/embeddings/Adam_1save_1/RestoreV2:2*
use_locking(*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
validate_shape(*!
_output_shapes
:сјђ
╗
save_1/Assign_3Assignbeta1_powersave_1/RestoreV2:3*
use_locking(*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings*
validate_shape(*
_output_shapes
: 
╗
save_1/Assign_4Assignbeta2_powersave_1/RestoreV2:4*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*5
_class+
)'loc:@Embedding/EmbedSequence/embeddings
ф
save_1/Assign_5Assignconv3/biasessave_1/RestoreV2:5*
use_locking(*
T0*
_class
loc:@conv3/biases*
validate_shape(*
_output_shapes
:@
»
save_1/Assign_6Assignconv3/biases/Adamsave_1/RestoreV2:6*
T0*
_class
loc:@conv3/biases*
validate_shape(*
_output_shapes
:@*
use_locking(
▒
save_1/Assign_7Assignconv3/biases/Adam_1save_1/RestoreV2:7*
T0*
_class
loc:@conv3/biases*
validate_shape(*
_output_shapes
:@*
use_locking(
╣
save_1/Assign_8Assignconv3/weightssave_1/RestoreV2:8*
T0* 
_class
loc:@conv3/weights*
validate_shape(*'
_output_shapes
:ђ@*
use_locking(
Й
save_1/Assign_9Assignconv3/weights/Adamsave_1/RestoreV2:9*
use_locking(*
T0* 
_class
loc:@conv3/weights*
validate_shape(*'
_output_shapes
:ђ@
┬
save_1/Assign_10Assignconv3/weights/Adam_1save_1/RestoreV2:10*
use_locking(*
T0* 
_class
loc:@conv3/weights*
validate_shape(*'
_output_shapes
:ђ@
г
save_1/Assign_11Assignconv4/biasessave_1/RestoreV2:11*
use_locking(*
T0*
_class
loc:@conv4/biases*
validate_shape(*
_output_shapes
:@
▒
save_1/Assign_12Assignconv4/biases/Adamsave_1/RestoreV2:12*
use_locking(*
T0*
_class
loc:@conv4/biases*
validate_shape(*
_output_shapes
:@
│
save_1/Assign_13Assignconv4/biases/Adam_1save_1/RestoreV2:13*
use_locking(*
T0*
_class
loc:@conv4/biases*
validate_shape(*
_output_shapes
:@
╗
save_1/Assign_14Assignconv4/weightssave_1/RestoreV2:14*
validate_shape(*'
_output_shapes
:ђ@*
use_locking(*
T0* 
_class
loc:@conv4/weights
└
save_1/Assign_15Assignconv4/weights/Adamsave_1/RestoreV2:15*
use_locking(*
T0* 
_class
loc:@conv4/weights*
validate_shape(*'
_output_shapes
:ђ@
┬
save_1/Assign_16Assignconv4/weights/Adam_1save_1/RestoreV2:16*
use_locking(*
T0* 
_class
loc:@conv4/weights*
validate_shape(*'
_output_shapes
:ђ@
г
save_1/Assign_17Assignconv5/biasessave_1/RestoreV2:17*
T0*
_class
loc:@conv5/biases*
validate_shape(*
_output_shapes
:@*
use_locking(
▒
save_1/Assign_18Assignconv5/biases/Adamsave_1/RestoreV2:18*
T0*
_class
loc:@conv5/biases*
validate_shape(*
_output_shapes
:@*
use_locking(
│
save_1/Assign_19Assignconv5/biases/Adam_1save_1/RestoreV2:19*
use_locking(*
T0*
_class
loc:@conv5/biases*
validate_shape(*
_output_shapes
:@
╗
save_1/Assign_20Assignconv5/weightssave_1/RestoreV2:20*
T0* 
_class
loc:@conv5/weights*
validate_shape(*'
_output_shapes
:ђ@*
use_locking(
└
save_1/Assign_21Assignconv5/weights/Adamsave_1/RestoreV2:21*
use_locking(*
T0* 
_class
loc:@conv5/weights*
validate_shape(*'
_output_shapes
:ђ@
┬
save_1/Assign_22Assignconv5/weights/Adam_1save_1/RestoreV2:22*
use_locking(*
T0* 
_class
loc:@conv5/weights*
validate_shape(*'
_output_shapes
:ђ@
└
save_1/Assign_23Assignfully_connected/biasessave_1/RestoreV2:23*
use_locking(*
T0*)
_class
loc:@fully_connected/biases*
validate_shape(*
_output_shapes
:
┼
save_1/Assign_24Assignfully_connected/biases/Adamsave_1/RestoreV2:24*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*)
_class
loc:@fully_connected/biases
К
save_1/Assign_25Assignfully_connected/biases/Adam_1save_1/RestoreV2:25*
use_locking(*
T0*)
_class
loc:@fully_connected/biases*
validate_shape(*
_output_shapes
:
К
save_1/Assign_26Assignfully_connected/weightssave_1/RestoreV2:26*
use_locking(*
T0**
_class 
loc:@fully_connected/weights*
validate_shape(*
_output_shapes
:	└
╠
save_1/Assign_27Assignfully_connected/weights/Adamsave_1/RestoreV2:27*
T0**
_class 
loc:@fully_connected/weights*
validate_shape(*
_output_shapes
:	└*
use_locking(
╬
save_1/Assign_28Assignfully_connected/weights/Adam_1save_1/RestoreV2:28*
T0**
_class 
loc:@fully_connected/weights*
validate_shape(*
_output_shapes
:	└*
use_locking(
д
save_1/Assign_29Assignglobal_stepsave_1/RestoreV2:29*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
╩
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"▀
model_variables╦╚
┐
$Embedding/EmbedSequence/embeddings:0)Embedding/EmbedSequence/embeddings/Assign)Embedding/EmbedSequence/embeddings/read:02?Embedding/EmbedSequence/embeddings/Initializer/random_uniform:08
k
conv3/weights:0conv3/weights/Assignconv3/weights/read:02*conv3/weights/Initializer/random_uniform:08
^
conv3/biases:0conv3/biases/Assignconv3/biases/read:02 conv3/biases/Initializer/zeros:08
k
conv4/weights:0conv4/weights/Assignconv4/weights/read:02*conv4/weights/Initializer/random_uniform:08
^
conv4/biases:0conv4/biases/Assignconv4/biases/read:02 conv4/biases/Initializer/zeros:08
k
conv5/weights:0conv5/weights/Assignconv5/weights/read:02*conv5/weights/Initializer/random_uniform:08
^
conv5/biases:0conv5/biases/Assignconv5/biases/read:02 conv5/biases/Initializer/zeros:08
Њ
fully_connected/weights:0fully_connected/weights/Assignfully_connected/weights/read:024fully_connected/weights/Initializer/random_uniform:08
є
fully_connected/biases:0fully_connected/biases/Assignfully_connected/biases/read:02*fully_connected/biases/Initializer/zeros:08"'
	summaries

loss_1:0
accuracy_1:0"с
trainable_variables╦╚
┐
$Embedding/EmbedSequence/embeddings:0)Embedding/EmbedSequence/embeddings/Assign)Embedding/EmbedSequence/embeddings/read:02?Embedding/EmbedSequence/embeddings/Initializer/random_uniform:08
k
conv3/weights:0conv3/weights/Assignconv3/weights/read:02*conv3/weights/Initializer/random_uniform:08
^
conv3/biases:0conv3/biases/Assignconv3/biases/read:02 conv3/biases/Initializer/zeros:08
k
conv4/weights:0conv4/weights/Assignconv4/weights/read:02*conv4/weights/Initializer/random_uniform:08
^
conv4/biases:0conv4/biases/Assignconv4/biases/read:02 conv4/biases/Initializer/zeros:08
k
conv5/weights:0conv5/weights/Assignconv5/weights/read:02*conv5/weights/Initializer/random_uniform:08
^
conv5/biases:0conv5/biases/Assignconv5/biases/read:02 conv5/biases/Initializer/zeros:08
Њ
fully_connected/weights:0fully_connected/weights/Assignfully_connected/weights/read:024fully_connected/weights/Initializer/random_uniform:08
є
fully_connected/biases:0fully_connected/biases/Assignfully_connected/biases/read:02*fully_connected/biases/Initializer/zeros:08"
train_op

Adam"Ю
	variablesЈї
┐
$Embedding/EmbedSequence/embeddings:0)Embedding/EmbedSequence/embeddings/Assign)Embedding/EmbedSequence/embeddings/read:02?Embedding/EmbedSequence/embeddings/Initializer/random_uniform:08
k
conv3/weights:0conv3/weights/Assignconv3/weights/read:02*conv3/weights/Initializer/random_uniform:08
^
conv3/biases:0conv3/biases/Assignconv3/biases/read:02 conv3/biases/Initializer/zeros:08
k
conv4/weights:0conv4/weights/Assignconv4/weights/read:02*conv4/weights/Initializer/random_uniform:08
^
conv4/biases:0conv4/biases/Assignconv4/biases/read:02 conv4/biases/Initializer/zeros:08
k
conv5/weights:0conv5/weights/Assignconv5/weights/read:02*conv5/weights/Initializer/random_uniform:08
^
conv5/biases:0conv5/biases/Assignconv5/biases/read:02 conv5/biases/Initializer/zeros:08
Њ
fully_connected/weights:0fully_connected/weights/Assignfully_connected/weights/read:024fully_connected/weights/Initializer/random_uniform:08
є
fully_connected/biases:0fully_connected/biases/Assignfully_connected/biases/read:02*fully_connected/biases/Initializer/zeros:08
T
global_step:0global_step/Assignglobal_step/read:02global_step/initial_value:0
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
╚
)Embedding/EmbedSequence/embeddings/Adam:0.Embedding/EmbedSequence/embeddings/Adam/Assign.Embedding/EmbedSequence/embeddings/Adam/read:02;Embedding/EmbedSequence/embeddings/Adam/Initializer/zeros:0
л
+Embedding/EmbedSequence/embeddings/Adam_1:00Embedding/EmbedSequence/embeddings/Adam_1/Assign0Embedding/EmbedSequence/embeddings/Adam_1/read:02=Embedding/EmbedSequence/embeddings/Adam_1/Initializer/zeros:0
t
conv3/weights/Adam:0conv3/weights/Adam/Assignconv3/weights/Adam/read:02&conv3/weights/Adam/Initializer/zeros:0
|
conv3/weights/Adam_1:0conv3/weights/Adam_1/Assignconv3/weights/Adam_1/read:02(conv3/weights/Adam_1/Initializer/zeros:0
p
conv3/biases/Adam:0conv3/biases/Adam/Assignconv3/biases/Adam/read:02%conv3/biases/Adam/Initializer/zeros:0
x
conv3/biases/Adam_1:0conv3/biases/Adam_1/Assignconv3/biases/Adam_1/read:02'conv3/biases/Adam_1/Initializer/zeros:0
t
conv4/weights/Adam:0conv4/weights/Adam/Assignconv4/weights/Adam/read:02&conv4/weights/Adam/Initializer/zeros:0
|
conv4/weights/Adam_1:0conv4/weights/Adam_1/Assignconv4/weights/Adam_1/read:02(conv4/weights/Adam_1/Initializer/zeros:0
p
conv4/biases/Adam:0conv4/biases/Adam/Assignconv4/biases/Adam/read:02%conv4/biases/Adam/Initializer/zeros:0
x
conv4/biases/Adam_1:0conv4/biases/Adam_1/Assignconv4/biases/Adam_1/read:02'conv4/biases/Adam_1/Initializer/zeros:0
t
conv5/weights/Adam:0conv5/weights/Adam/Assignconv5/weights/Adam/read:02&conv5/weights/Adam/Initializer/zeros:0
|
conv5/weights/Adam_1:0conv5/weights/Adam_1/Assignconv5/weights/Adam_1/read:02(conv5/weights/Adam_1/Initializer/zeros:0
p
conv5/biases/Adam:0conv5/biases/Adam/Assignconv5/biases/Adam/read:02%conv5/biases/Adam/Initializer/zeros:0
x
conv5/biases/Adam_1:0conv5/biases/Adam_1/Assignconv5/biases/Adam_1/read:02'conv5/biases/Adam_1/Initializer/zeros:0
ю
fully_connected/weights/Adam:0#fully_connected/weights/Adam/Assign#fully_connected/weights/Adam/read:020fully_connected/weights/Adam/Initializer/zeros:0
ц
 fully_connected/weights/Adam_1:0%fully_connected/weights/Adam_1/Assign%fully_connected/weights/Adam_1/read:022fully_connected/weights/Adam_1/Initializer/zeros:0
ў
fully_connected/biases/Adam:0"fully_connected/biases/Adam/Assign"fully_connected/biases/Adam/read:02/fully_connected/biases/Adam/Initializer/zeros:0
а
fully_connected/biases/Adam_1:0$fully_connected/biases/Adam_1/Assign$fully_connected/biases/Adam_1/read:021fully_connected/biases/Adam_1/Initializer/zeros:0*й
my_signatureг
+
input_x 
	input_x:0         2
0
dropout_keep_prob
dropout_keep_prob:0/
output%
output/probs:0         tensorflow/serving/predict