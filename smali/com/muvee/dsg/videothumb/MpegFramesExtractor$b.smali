.class Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;
.super Ljava/lang/Object;
.source "MpegFramesExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/videothumb/MpegFramesExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:[F

.field private b:Ljava/nio/FloatBuffer;

.field private c:[F

.field private d:[F

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a:[F

    .line 601
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->c:[F

    .line 602
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->d:[F

    .line 605
    const/16 v0, -0x3039

    iput v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->f:I

    .line 612
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 614
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->b:Ljava/nio/FloatBuffer;

    .line 615
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->b:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 617
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->d:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 618
    return-void

    .line 571
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 737
    const v1, 0x8b31

    invoke-direct {p0, v1, p1}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->b(ILjava/lang/String;)I

    move-result v2

    .line 738
    if-nez v2, :cond_1

    .line 763
    :cond_0
    :goto_0
    return v0

    .line 741
    :cond_1
    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->b(ILjava/lang/String;)I

    move-result v3

    .line 742
    if-eqz v3, :cond_0

    .line 746
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 747
    if-nez v1, :cond_2

    .line 748
    const-string v4, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    const-string v5, "Could not create program"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_2
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 751
    const-string v2, "glAttachShader"

    invoke-virtual {p0, v2}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a(Ljava/lang/String;)V

    .line 752
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 753
    const-string v2, "glAttachShader"

    invoke-virtual {p0, v2}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a(Ljava/lang/String;)V

    .line 754
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 755
    new-array v2, v6, [I

    .line 756
    const v3, 0x8b82

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 757
    aget v2, v2, v0

    if-eq v2, v6, :cond_3

    .line 758
    const-string v2, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    const-string v3, "Could not link program: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const-string v2, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 775
    if-gez p0, :cond_0

    .line 776
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to locate \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in program"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_0
    return-void
.end method

.method private b(ILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 721
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glCreateShader type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a(Ljava/lang/String;)V

    .line 723
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 724
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 725
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 726
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 727
    aget v2, v2, v0

    if-nez v2, :cond_0

    .line 728
    const-string v2, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const-string v2, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 733
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->f:I

    return v0
.end method

.method public a(Landroid/graphics/SurfaceTexture;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 628
    const-string/jumbo v0, "onDrawFrame start"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->d:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 630
    if-eqz p2, :cond_0

    .line 631
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->d:[F

    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->d:[F

    aget v1, v1, v6

    neg-float v1, v1

    aput v1, v0, v6

    .line 632
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->d:[F

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->d:[F

    const/16 v4, 0xd

    aget v2, v2, v4

    sub-float v2, v5, v2

    aput v2, v0, v1

    .line 636
    :cond_0
    invoke-static {v7, v5, v7, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 637
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 639
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->e:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 640
    const-string v0, "glUseProgram"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a(Ljava/lang/String;)V

    .line 642
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 643
    const v0, 0x8d65

    iget v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->f:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 645
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 646
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->i:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->b:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 648
    const-string v0, "glVertexAttribPointer maPosition"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a(Ljava/lang/String;)V

    .line 649
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->i:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 650
    const-string v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a(Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->b:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 653
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->j:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->b:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 655
    const-string v0, "glVertexAttribPointer maTextureHandle"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a(Ljava/lang/String;)V

    .line 656
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->j:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 657
    const-string v0, "glEnableVertexAttribArray maTextureHandle"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a(Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->c:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 660
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->g:I

    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->c:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 661
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->h:I

    iget-object v1, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->d:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 663
    const/4 v0, 0x4

    invoke-static {v6, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 664
    const-string v0, "glDrawArrays"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a(Ljava/lang/String;)V

    .line 666
    const v0, 0x8d65

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 667
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 768
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    const-string v1, "com.muvee.dsg.videothumb.MpegFramesExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 772
    :cond_0
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const v5, 0x812f

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x8d65

    .line 673
    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->e:I

    .line 674
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->e:I

    if-nez v0, :cond_0

    .line 675
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_0
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->e:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->i:I

    .line 679
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->i:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a(ILjava/lang/String;)V

    .line 680
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->e:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->j:I

    .line 681
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->j:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a(ILjava/lang/String;)V

    .line 683
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->e:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->g:I

    .line 684
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->g:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a(ILjava/lang/String;)V

    .line 685
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->e:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->h:I

    .line 686
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->h:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a(ILjava/lang/String;)V

    .line 688
    new-array v0, v4, [I

    .line 689
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 691
    aget v0, v0, v3

    iput v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->f:I

    .line 692
    iget v0, p0, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->f:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 693
    const-string v0, "glBindTexture mTextureID"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a(Ljava/lang/String;)V

    .line 695
    const/16 v0, 0x2801

    const/high16 v1, 0x46180000    # 9728.0f

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 697
    const/16 v0, 0x2800

    const v1, 0x46180400    # 9729.0f

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 699
    const/16 v0, 0x2802

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 701
    const/16 v0, 0x2803

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 703
    const-string v0, "glTexParameter"

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/videothumb/MpegFramesExtractor$b;->a(Ljava/lang/String;)V

    .line 704
    return-void
.end method
