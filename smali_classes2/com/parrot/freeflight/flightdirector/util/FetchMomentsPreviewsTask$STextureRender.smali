.class Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;
.super Ljava/lang/Object;
.source "FetchMomentsPreviewsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "STextureRender"
.end annotation


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field private mMVPMatrix:[F

.field private mProgram:I

.field private mSTMatrix:[F

.field private mTextureID:I

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private final mTriangleVerticesData:[F

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mTriangleVerticesData:[F

    .line 561
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mMVPMatrix:[F

    .line 562
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mSTMatrix:[F

    .line 565
    const/16 v0, -0x3039

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mTextureID:I

    .line 572
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mTriangleVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 574
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 575
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mTriangleVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 577
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mSTMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 578
    return-void

    .line 531
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

.method static synthetic access$000(Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 730
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 731
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->access$100()Ljava/lang/String;

    move-result-object v1

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

    .line 732
    new-instance v1, Ljava/lang/RuntimeException;

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

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 734
    :cond_0
    return-void
.end method

.method private static checkLocation(ILjava/lang/String;)V
    .locals 3
    .param p0, "location"    # I
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 737
    if-gez p0, :cond_0

    .line 738
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

    .line 740
    :cond_0
    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "vertexSource"    # Ljava/lang/String;
    .param p2, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 697
    const v5, 0x8b31

    invoke-direct {p0, v5, p1}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 698
    .local v3, "vertexShader":I
    if-nez v3, :cond_1

    move v2, v4

    .line 725
    :cond_0
    :goto_0
    return v2

    .line 702
    :cond_1
    const v5, 0x8b30

    invoke-direct {p0, v5, p2}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 703
    .local v1, "pixelShader":I
    if-nez v1, :cond_2

    move v2, v4

    .line 704
    goto :goto_0

    .line 707
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 708
    .local v2, "program":I
    if-nez v2, :cond_3

    .line 709
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Could not create program"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_3
    new-array v0, v7, [I

    .line 713
    .local v0, "linkStatus":[I
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 714
    const-string v5, "glAttachShader"

    invoke-direct {p0, v5}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 715
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 716
    const-string v5, "glAttachShader"

    invoke-direct {p0, v5}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 717
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 718
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 719
    aget v4, v0, v4

    if-eq v4, v7, :cond_0

    .line 720
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 723
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 681
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 682
    .local v1, "shader":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glCreateShader type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 683
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 684
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 685
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 686
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 687
    aget v2, v0, v4

    if-nez v2, :cond_0

    .line 688
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->access$100()Ljava/lang/String;

    move-result-object v2

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

    .line 689
    invoke-static {}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask;->access$100()Ljava/lang/String;

    move-result-object v2

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

    .line 690
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 691
    const/4 v1, 0x0

    .line 693
    :cond_0
    return v1
.end method


# virtual methods
.method public changeFragmentShader(Ljava/lang/String;)V
    .locals 2
    .param p1, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 670
    if-nez p1, :cond_0

    .line 671
    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 673
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 674
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {p0, v0, p1}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mProgram:I

    .line 675
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mProgram:I

    if-nez v0, :cond_1

    .line 676
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_1
    return-void
.end method

.method public drawFrame(Landroid/graphics/SurfaceTexture;Z)V
    .locals 9
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;
    .param p2, "invert"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 588
    const-string v0, "onDrawFrame start"

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mSTMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 590
    if-eqz p2, :cond_0

    .line 591
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mSTMatrix:[F

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mSTMatrix:[F

    aget v1, v1, v6

    neg-float v1, v1

    aput v1, v0, v6

    .line 592
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mSTMatrix:[F

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mSTMatrix:[F

    const/16 v4, 0xd

    aget v2, v2, v4

    sub-float v2, v5, v2

    aput v2, v0, v1

    .line 596
    :cond_0
    invoke-static {v7, v5, v7, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 597
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 599
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 600
    const-string v0, "glUseProgram"

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 602
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 603
    const v0, 0x8d65

    iget v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mTextureID:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 605
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 606
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->maPositionHandle:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 608
    const-string v0, "glVertexAttribPointer maPosition"

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 609
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 610
    const-string v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 613
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 615
    const-string v0, "glVertexAttribPointer maTextureHandle"

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 616
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 617
    const-string v0, "glEnableVertexAttribArray maTextureHandle"

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mMVPMatrix:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 620
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->muMVPMatrixHandle:I

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mMVPMatrix:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 621
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->muSTMatrixHandle:I

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mSTMatrix:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 623
    const/4 v0, 0x4

    invoke-static {v6, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 624
    const-string v0, "glDrawArrays"

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 626
    const v0, 0x8d65

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 627
    return-void
.end method

.method public getTextureId()I
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mTextureID:I

    return v0
.end method

.method public surfaceCreated()V
    .locals 7

    .prologue
    const v6, 0x812f

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x8d65

    .line 633
    const-string v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v1, v2}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mProgram:I

    .line 634
    iget v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mProgram:I

    if-nez v1, :cond_0

    .line 635
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "failed creating program"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 638
    :cond_0
    iget v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mProgram:I

    const-string v2, "aPosition"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->maPositionHandle:I

    .line 639
    iget v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->maPositionHandle:I

    const-string v2, "aPosition"

    invoke-static {v1, v2}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->checkLocation(ILjava/lang/String;)V

    .line 640
    iget v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mProgram:I

    const-string v2, "aTextureCoord"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->maTextureHandle:I

    .line 641
    iget v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->maTextureHandle:I

    const-string v2, "aTextureCoord"

    invoke-static {v1, v2}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->checkLocation(ILjava/lang/String;)V

    .line 643
    iget v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mProgram:I

    const-string v2, "uMVPMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->muMVPMatrixHandle:I

    .line 644
    iget v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->muMVPMatrixHandle:I

    const-string v2, "uMVPMatrix"

    invoke-static {v1, v2}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->checkLocation(ILjava/lang/String;)V

    .line 645
    iget v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mProgram:I

    const-string v2, "uSTMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->muSTMatrixHandle:I

    .line 646
    iget v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->muSTMatrixHandle:I

    const-string v2, "uSTMatrix"

    invoke-static {v1, v2}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->checkLocation(ILjava/lang/String;)V

    .line 648
    new-array v0, v5, [I

    .line 649
    .local v0, "textures":[I
    invoke-static {v5, v0, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 651
    aget v1, v0, v4

    iput v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mTextureID:I

    .line 652
    iget v1, p0, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->mTextureID:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 653
    const-string v1, "glBindTexture mTextureID"

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 655
    const/16 v1, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 657
    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 659
    const/16 v1, 0x2802

    invoke-static {v3, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 661
    const/16 v1, 0x2803

    invoke-static {v3, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 663
    const-string v1, "glTexParameter"

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/flightdirector/util/FetchMomentsPreviewsTask$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 664
    return-void
.end method
