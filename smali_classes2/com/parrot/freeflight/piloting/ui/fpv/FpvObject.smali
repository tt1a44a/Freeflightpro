.class public abstract Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;
.super Ljava/lang/Object;
.source "FpvObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject$Side;
    }
.end annotation


# static fields
.field public static final SIDE_LEFT:I = 0x0

.field public static final SIDE_RIGHT:I = 0x1


# instance fields
.field protected mColorBufferHandle:I

.field protected final mCoordsBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mEyesOffsetX:F

.field protected final mFpvShader:Lcom/parrot/engine3d/GLShader;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mIndicesBufferHandle:I

.field protected mMetricsHeight:F

.field protected mMetricsWidth:F

.field protected mPositionBufferHandle:I

.field protected mProgramColor:I

.field protected mProgramEyeToSourceOffset:I

.field protected mProgramEyeToSourceScale:I

.field protected mProgramPosition:I

.field protected mProgramTexture:I

.field protected mProgramTextureCoordOffset:I

.field protected mProgramTextureCoordScale:I

.field protected mProgramTransformMatrix:I

.field protected final mSide:I


# direct methods
.method public constructor <init>(ILcom/parrot/engine3d/GLShader;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;)V
    .locals 2
    .param p1, "side"    # I
    .param p2, "fpvShader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "coordsBuffers"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "eyesCalibrationPreferences"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mSide:I

    .line 60
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mFpvShader:Lcom/parrot/engine3d/GLShader;

    .line 61
    iput-object p3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mCoordsBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    .line 62
    iput-object p4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    .line 63
    const/high16 v1, 0x427c0000    # 63.0f

    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mSide:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mEyesOffsetX:F

    .line 64
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->initProgram()V

    .line 65
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->loadBuffers()V

    .line 66
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract draw([F)V
    .param p1    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected generateBufferHandle()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 101
    new-array v0, v2, [I

    .line 102
    .local v0, "buffer":[I
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 103
    aget v1, v0, v1

    return v1
.end method

.method protected initProgram()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mFpvShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "Texture0"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mProgramTexture:I

    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mFpvShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "TextureCoordScale"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mProgramTextureCoordScale:I

    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mFpvShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "TextureCoordOffset"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mProgramTextureCoordOffset:I

    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mFpvShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "EyeToSourceScale"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mProgramEyeToSourceScale:I

    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mFpvShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "EyeToSourceOffset"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mProgramEyeToSourceOffset:I

    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mFpvShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "TransformMatrix"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mProgramTransformMatrix:I

    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mFpvShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "Position"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mProgramPosition:I

    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mFpvShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "Color"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mProgramColor:I

    .line 80
    return-void
.end method

.method protected loadBuffers()V
    .locals 7
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const v6, 0x8893

    const v5, 0x88e4

    const v4, 0x8892

    .line 84
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mCoordsBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 85
    .local v1, "indicesBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->generateBufferHandle()I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mIndicesBufferHandle:I

    .line 86
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mIndicesBufferHandle:I

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 87
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v6, v3, v1, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 89
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mCoordsBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->getPositionBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 90
    .local v2, "positionBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->generateBufferHandle()I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mPositionBufferHandle:I

    .line 91
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mPositionBufferHandle:I

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 92
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v4, v3, v2, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 94
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mCoordsBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->getColorBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 95
    .local v0, "colorBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->generateBufferHandle()I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mColorBufferHandle:I

    .line 96
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mColorBufferHandle:I

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 97
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v4, v3, v0, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 98
    return-void
.end method

.method public setMetricsSize(FF)V
    .locals 0
    .param p1, "metricsWidth"    # F
    .param p2, "metricsHeight"    # F

    .prologue
    .line 107
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mMetricsWidth:F

    .line 108
    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->mMetricsHeight:F

    .line 109
    return-void
.end method
