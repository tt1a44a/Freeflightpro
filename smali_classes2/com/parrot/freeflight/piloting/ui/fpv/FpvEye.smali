.class public Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;
.super Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;
.source "FpvEye.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FpvEye"


# instance fields
.field private mAdditionalColor:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCustomScale:F

.field private mProgramAdditionalColor:I

.field private mProgramLensLimits:I

.field private mProgramTexCoord0:I

.field private mProgramTexCoord1:I

.field private mProgramTexCoord2:I

.field private final mRenderer:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTextCoord0BufferHandle:I

.field private mTextCoord1BufferHandle:I

.field private mTextCoord2BufferHandle:I


# direct methods
.method public constructor <init>(ILcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;Lcom/parrot/engine3d/GLShader;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;F[F)V
    .locals 1
    .param p1, "side"    # I
    .param p2, "fpvGLRenderer"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "eyeShader"    # Lcom/parrot/engine3d/GLShader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "coordsBuffers"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "eyesCalibrationPreferences"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "customScale"    # F
    .param p7, "additionalColor"    # [F
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;-><init>(ILcom/parrot/engine3d/GLShader;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;)V

    .line 31
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mCustomScale:F

    .line 39
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mRenderer:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;

    .line 40
    iput p6, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mCustomScale:F

    .line 41
    if-eqz p7, :cond_0

    .line 42
    iput-object p7, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mAdditionalColor:[F

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mAdditionalColor:[F

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public draw([F)V
    .locals 16
    .param p1, "transformMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mRenderer:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->getGLSurfaceTexture()Lcom/parrot/engine3d/buffer/textures/GLTexture;

    move-result-object v14

    .line 85
    .local v14, "videoTexture":Lcom/parrot/engine3d/buffer/textures/GLTexture;
    if-eqz v14, :cond_4

    .line 86
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mFpvShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v1}, Lcom/parrot/engine3d/GLShader;->enable()V

    .line 87
    invoke-virtual {v14}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->enable()V

    .line 89
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramTexture:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 90
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramTransformMatrix:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 92
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramAdditionalColor:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mAdditionalColor:[F

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 94
    const v1, 0x8893

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mIndicesBufferHandle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 96
    const v1, 0x8892

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mPositionBufferHandle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 97
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramPosition:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 98
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramPosition:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 100
    const v1, 0x8892

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mColorBufferHandle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 101
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramColor:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 102
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramColor:I

    const/4 v2, 0x4

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 104
    const v1, 0x8892

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mTextCoord0BufferHandle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 105
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramTexCoord0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 106
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramTexCoord0:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 108
    const v1, 0x8892

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mTextCoord1BufferHandle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 109
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramTexCoord1:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 110
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramTexCoord1:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 112
    const v1, 0x8892

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mTextCoord2BufferHandle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 113
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramTexCoord2:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 114
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramTexCoord2:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 116
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mCustomScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mCustomScale:F

    .line 117
    .local v15, "viewScale":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->getPanH()F

    move-result v8

    .local v8, "panH":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->getPanV()F

    move-result v9

    .line 118
    .local v9, "panV":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mRenderer:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->getTextureWidth()I

    move-result v12

    .local v12, "textureWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mRenderer:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->getTextureHeight()I

    move-result v11

    .line 119
    .local v11, "textureHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->getIpdOffset()F

    move-result v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mSide:I

    if-nez v1, :cond_1

    const/4 v1, -0x1

    :goto_1
    int-to-float v1, v1

    mul-float v7, v2, v1

    .line 120
    .local v7, "ipdOffset":F
    add-float v13, v7, v8

    .line 123
    .local v13, "textureXOffset":F
    if-ne v12, v11, :cond_2

    .line 124
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramTextureCoordScale:I

    invoke-static {v1, v15, v15}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 125
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramTextureCoordOffset:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mMetricsWidth:F

    div-float v2, v13, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mMetricsHeight:F

    div-float v3, v9, v3

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 138
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramLensLimits:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 139
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramEyeToSourceScale:I

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mMetricsWidth:F

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mMetricsHeight:F

    div-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 140
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramEyeToSourceOffset:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mEyesOffsetX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mMetricsWidth:F

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 142
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mCoordsBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->limit()I

    move-result v2

    const/16 v3, 0x1403

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 144
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramTexCoord2:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 145
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramTexCoord1:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 146
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramTexCoord0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 147
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramColor:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 148
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramPosition:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 150
    invoke-virtual {v14}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->disable()V

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mFpvShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v1}, Lcom/parrot/engine3d/GLShader;->disable()V

    .line 155
    .end local v7    # "ipdOffset":F
    .end local v8    # "panH":F
    .end local v9    # "panV":F
    .end local v11    # "textureHeight":I
    .end local v12    # "textureWidth":I
    .end local v13    # "textureXOffset":F
    .end local v15    # "viewScale":F
    :goto_3
    return-void

    .line 116
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->getViewScale()F

    move-result v15

    goto/16 :goto_0

    .line 119
    .restart local v8    # "panH":F
    .restart local v9    # "panV":F
    .restart local v11    # "textureHeight":I
    .restart local v12    # "textureWidth":I
    .restart local v15    # "viewScale":F
    :cond_1
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 127
    .restart local v7    # "ipdOffset":F
    .restart local v13    # "textureXOffset":F
    :cond_2
    int-to-float v1, v12

    int-to-float v2, v11

    div-float v10, v1, v2

    .line 129
    .local v10, "ratio":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v10, v1

    if-lez v1, :cond_3

    .line 130
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramTextureCoordScale:I

    mul-float v2, v15, v10

    invoke-static {v1, v15, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 131
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramTextureCoordOffset:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mMetricsWidth:F

    div-float v2, v13, v2

    mul-float v3, v10, v9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mMetricsHeight:F

    div-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    goto/16 :goto_2

    .line 133
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramTextureCoordScale:I

    div-float v2, v15, v10

    invoke-static {v1, v2, v15}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 134
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramTextureCoordOffset:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mMetricsWidth:F

    mul-float/2addr v2, v10

    div-float v2, v13, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mMetricsHeight:F

    div-float v3, v9, v3

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    goto/16 :goto_2

    .line 153
    .end local v7    # "ipdOffset":F
    .end local v8    # "panH":F
    .end local v9    # "panV":F
    .end local v10    # "ratio":F
    .end local v11    # "textureHeight":I
    .end local v12    # "textureWidth":I
    .end local v13    # "textureXOffset":F
    .end local v15    # "viewScale":F
    :cond_4
    const-string v1, "FpvEye"

    const-string v2, "Eye tex is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method protected initProgram()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->initProgram()V

    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mFpvShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "LensLimits"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramLensLimits:I

    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mFpvShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "AdditionalColor"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveUniform(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramAdditionalColor:I

    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mFpvShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "TexCoord0"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramTexCoord0:I

    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mFpvShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "TexCoord1"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramTexCoord1:I

    .line 56
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mFpvShader:Lcom/parrot/engine3d/GLShader;

    const-string v1, "TexCoord2"

    invoke-virtual {v0, v1}, Lcom/parrot/engine3d/GLShader;->retrieveAttribute(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mProgramTexCoord2:I

    .line 57
    return-void
.end method

.method protected loadBuffers()V
    .locals 6

    .prologue
    const v5, 0x88e4

    const v4, 0x8892

    .line 61
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;->loadBuffers()V

    .line 62
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mCoordsBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->getTextCoordBufferRed()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 63
    .local v2, "textCoordBufferRed":Ljava/nio/FloatBuffer;
    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->generateBufferHandle()I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mTextCoord0BufferHandle:I

    .line 65
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mTextCoord0BufferHandle:I

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 66
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v4, v3, v2, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 68
    :cond_0
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mCoordsBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->getTextCoordBufferGreen()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 69
    .local v1, "textCoordBufferGreen":Ljava/nio/FloatBuffer;
    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->generateBufferHandle()I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mTextCoord1BufferHandle:I

    .line 71
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mTextCoord1BufferHandle:I

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 72
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v4, v3, v1, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 74
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mCoordsBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->getTextCoordBufferBlue()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 75
    .local v0, "textCoordBufferBlue":Ljava/nio/FloatBuffer;
    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->generateBufferHandle()I

    move-result v3

    iput v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mTextCoord2BufferHandle:I

    .line 77
    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mTextCoord2BufferHandle:I

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 78
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v4, v3, v0, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 80
    :cond_2
    return-void
.end method

.method public setCustomScale(F)V
    .locals 0
    .param p1, "customScale"    # F

    .prologue
    .line 158
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->mCustomScale:F

    .line 159
    return-void
.end method
