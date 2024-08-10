.class public Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;
.super Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;
.source "FpvGLRenderer.java"


# static fields
.field private static final INCH_IN_MM:F = 25.4f


# instance fields
.field private mCustomScale:F

.field protected mEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFpvEyeBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLeftEye:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLeftEyeAdditionalColorCorrection:[F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mMetricsHeight:F

.field protected mMetricsWidth:F

.field private mRightEye:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRightEyeAdditionalColorCorrection:[F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "fpvEyeBuffers"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "eyesCalibrationPreferences"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "createSurfaceTexture"    # Z

    .prologue
    const/4 v6, 0x0

    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;Z[F[F)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;Z[F[F)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "fpvEyeBuffers"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "eyesCalibrationPreferences"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "createSurfaceTexture"    # Z
    .param p6, "leftEyeAdditionalColorCorrection"    # [F
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "rightEyeAdditionalColorCorrection"    # [F
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p5}, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;Z)V

    .line 34
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mCustomScale:F

    .line 51
    iput-object p3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mFpvEyeBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    .line 52
    iput-object p4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    .line 53
    iput-object p6, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mLeftEyeAdditionalColorCorrection:[F

    .line 54
    iput-object p7, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mRightEyeAdditionalColorCorrection:[F

    .line 55
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 79
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mLeftEye:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mLeftEye:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mTransformMatrix:[F

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->draw([F)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mRightEye:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mRightEye:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mTransformMatrix:[F

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->draw([F)V

    .line 86
    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const v3, 0x41cb3333    # 25.4f

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 92
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 94
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 95
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    int-to-float v1, p2

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    mul-float/2addr v1, v3

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mMetricsWidth:F

    .line 96
    int-to-float v1, p3

    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v1, v2

    mul-float/2addr v1, v3

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mMetricsHeight:F

    .line 98
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mLeftEye:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mLeftEye:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mMetricsWidth:F

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mMetricsHeight:F

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->setMetricsSize(FF)V

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mRightEye:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mRightEye:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mMetricsWidth:F

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mMetricsHeight:F

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->setMetricsSize(FF)V

    .line 104
    :cond_1
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 60
    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10000f

    const v2, 0x7f10000e

    invoke-static {v0, v1, v2}, Lcom/parrot/engine3d/GLShaderFactory;->load(Landroid/content/res/Resources;II)Lcom/parrot/engine3d/GLShader;

    move-result-object v3

    .line 63
    .local v3, "eyeShader":Lcom/parrot/engine3d/GLShader;
    if-eqz v3, :cond_0

    .line 64
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mFpvEyeBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    iget v6, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mCustomScale:F

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mLeftEyeAdditionalColorCorrection:[F

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;-><init>(ILcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;Lcom/parrot/engine3d/GLShader;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;F[F)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mLeftEye:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;

    .line 65
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mFpvEyeBuffers:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    iget v6, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mCustomScale:F

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mRightEyeAdditionalColorCorrection:[F

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;-><init>(ILcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;Lcom/parrot/engine3d/GLShader;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;F[F)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mRightEye:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;

    .line 68
    :cond_0
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 71
    invoke-static {v8, v8, v8, v8}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 72
    return-void
.end method

.method public setCustomScale(F)V
    .locals 1
    .param p1, "customScale"    # F

    .prologue
    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mLeftEye:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mRightEye:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mLeftEye:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->setCustomScale(F)V

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mRightEye:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEye;->setCustomScale(F)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->mCustomScale:F

    goto :goto_0
.end method
