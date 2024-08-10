.class public Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;
.super Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;
.source "FpvCrossOverlay.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FpvCrossOverlay"


# instance fields
.field private final mRenderer:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;Lcom/parrot/engine3d/GLShader;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;)V
    .locals 0
    .param p1, "side"    # I
    .param p2, "fpvGLRenderer"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "fpvShader"    # Lcom/parrot/engine3d/GLShader;
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

    .prologue
    .line 18
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvObject;-><init>(ILcom/parrot/engine3d/GLShader;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;)V

    .line 19
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mRenderer:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;

    .line 20
    return-void
.end method


# virtual methods
.method public draw([F)V
    .locals 16
    .param p1, "transformMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mRenderer:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->getGLSurfaceTexture()Lcom/parrot/engine3d/buffer/textures/GLTexture;

    move-result-object v14

    .line 25
    .local v14, "videoTexture":Lcom/parrot/engine3d/buffer/textures/GLTexture;
    if-eqz v14, :cond_3

    .line 26
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mFpvShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v1}, Lcom/parrot/engine3d/GLShader;->enable()V

    .line 27
    invoke-virtual {v14}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->enable()V

    .line 29
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mProgramTexture:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 30
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mProgramTransformMatrix:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 32
    const v1, 0x8893

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mIndicesBufferHandle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 34
    const v1, 0x8892

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mPositionBufferHandle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 35
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mProgramPosition:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 36
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mProgramPosition:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 38
    const v1, 0x8892

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mColorBufferHandle:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 39
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mProgramColor:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 40
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mProgramColor:I

    const/4 v2, 0x4

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 42
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->getViewScale()F

    move-result v15

    .line 43
    .local v15, "viewScale":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->getPanH()F

    move-result v8

    .local v8, "panH":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->getPanV()F

    move-result v9

    .line 44
    .local v9, "panV":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mRenderer:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->getTextureWidth()I

    move-result v12

    .local v12, "textureWidth":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mRenderer:Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->getTextureHeight()I

    move-result v11

    .line 45
    .local v11, "textureHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;->getIpdOffset()F

    move-result v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mSide:I

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    int-to-float v1, v1

    mul-float v7, v2, v1

    .line 46
    .local v7, "ipdOffset":F
    add-float v13, v7, v8

    .line 49
    .local v13, "textureXOffset":F
    if-ne v12, v11, :cond_1

    .line 50
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mProgramTextureCoordScale:I

    invoke-static {v1, v15, v15}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 51
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mProgramTextureCoordOffset:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mMetricsWidth:F

    div-float v2, v13, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mMetricsHeight:F

    div-float v3, v9, v3

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 64
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mProgramEyeToSourceScale:I

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mMetricsWidth:F

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mMetricsHeight:F

    div-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 65
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mProgramEyeToSourceOffset:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mEyesOffsetX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mMetricsWidth:F

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 67
    const/4 v1, 0x4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mCoordsBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;->getIndicesBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->limit()I

    move-result v2

    const/16 v3, 0x1403

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 69
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mProgramColor:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 70
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mProgramPosition:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 72
    invoke-virtual {v14}, Lcom/parrot/engine3d/buffer/textures/GLTexture;->disable()V

    .line 73
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mFpvShader:Lcom/parrot/engine3d/GLShader;

    invoke-virtual {v1}, Lcom/parrot/engine3d/GLShader;->disable()V

    .line 77
    .end local v7    # "ipdOffset":F
    .end local v8    # "panH":F
    .end local v9    # "panV":F
    .end local v11    # "textureHeight":I
    .end local v12    # "textureWidth":I
    .end local v13    # "textureXOffset":F
    .end local v15    # "viewScale":F
    :goto_2
    return-void

    .line 45
    .restart local v8    # "panH":F
    .restart local v9    # "panV":F
    .restart local v11    # "textureHeight":I
    .restart local v12    # "textureWidth":I
    .restart local v15    # "viewScale":F
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 53
    .restart local v7    # "ipdOffset":F
    .restart local v13    # "textureXOffset":F
    :cond_1
    int-to-float v1, v12

    int-to-float v2, v11

    div-float v10, v1, v2

    .line 55
    .local v10, "ratio":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v10, v1

    if-lez v1, :cond_2

    .line 56
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mProgramTextureCoordScale:I

    mul-float v2, v15, v10

    invoke-static {v1, v15, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 57
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mProgramTextureCoordOffset:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mMetricsWidth:F

    div-float v2, v13, v2

    mul-float v3, v10, v9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mMetricsHeight:F

    div-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    goto :goto_1

    .line 59
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mProgramTextureCoordScale:I

    div-float v2, v15, v10

    invoke-static {v1, v2, v15}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 60
    move-object/from16 v0, p0

    iget v1, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mProgramTextureCoordOffset:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mMetricsWidth:F

    mul-float/2addr v2, v10

    div-float v2, v13, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->mMetricsHeight:F

    div-float v3, v9, v3

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    goto/16 :goto_1

    .line 75
    .end local v7    # "ipdOffset":F
    .end local v8    # "panH":F
    .end local v9    # "panV":F
    .end local v10    # "ratio":F
    .end local v11    # "textureHeight":I
    .end local v12    # "textureWidth":I
    .end local v13    # "textureXOffset":F
    .end local v15    # "viewScale":F
    :cond_3
    const-string v1, "FpvCrossOverlay"

    const-string v2, "Eye tex is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
