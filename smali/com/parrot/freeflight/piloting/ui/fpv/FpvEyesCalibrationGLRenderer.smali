.class public Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;
.super Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;
.source "FpvEyesCalibrationGLRenderer.java"


# static fields
.field private static final COLOR_SUBTRACTION_GREEN:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final COLOR_SUBTRACTION_RED:[F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private mLeftCrossOverlay:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRightCrossOverlay:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 20
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->COLOR_SUBTRACTION_GREEN:[F

    .line 23
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->COLOR_SUBTRACTION_RED:[F

    return-void

    .line 20
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    .line 23
    :array_1
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data
.end method

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
    .line 33
    sget-object v6, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->COLOR_SUBTRACTION_GREEN:[F

    sget-object v7, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->COLOR_SUBTRACTION_RED:[F

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer$Listener;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;Z[F[F)V

    .line 35
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mLeftCrossOverlay:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mLeftCrossOverlay:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mTransformMatrix:[F

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->draw([F)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mRightCrossOverlay:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mRightCrossOverlay:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mTransformMatrix:[F

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->draw([F)V

    .line 79
    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mLeftCrossOverlay:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mLeftCrossOverlay:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mMetricsWidth:F

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mMetricsHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->setMetricsSize(FF)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mRightCrossOverlay:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mRightCrossOverlay:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mMetricsWidth:F

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mMetricsHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;->setMetricsSize(FF)V

    .line 66
    :cond_1
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 43
    :try_start_0
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mContext:Landroid/content/Context;

    const-string v2, "fpv_cross_left_indices"

    const-string v3, "fpv_cross_left_positions"

    const-string v4, "fpv_cross_left_colors"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v0, "leftCrossOverlayBuffer":Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mContext:Landroid/content/Context;

    const-string v3, "fpv_cross_right_indices"

    const-string v4, "fpv_cross_right_positions"

    const-string v5, "fpv_cross_right_colors"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .local v1, "rightCrossOverlayBuffer":Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10000d

    const v4, 0x7f10000c

    invoke-static {v2, v3, v4}, Lcom/parrot/engine3d/GLShaderFactory;->load(Landroid/content/res/Resources;II)Lcom/parrot/engine3d/GLShader;

    move-result-object v5

    .line 47
    .local v5, "eyeShader":Lcom/parrot/engine3d/GLShader;
    if-eqz v5, :cond_0

    .line 48
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    move-object v4, p0

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;-><init>(ILcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;Lcom/parrot/engine3d/GLShader;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mLeftCrossOverlay:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;

    .line 49
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;

    const/4 v3, 0x1

    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mEyesCalibrationPreferences:Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;

    move-object v4, p0

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;-><init>(ILcom/parrot/freeflight/piloting/ui/fpv/FpvGLRenderer;Lcom/parrot/engine3d/GLShader;Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationPreferences;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvEyesCalibrationGLRenderer;->mRightCrossOverlay:Lcom/parrot/freeflight/piloting/ui/fpv/FpvCrossOverlay;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "leftCrossOverlayBuffer":Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;
    .end local v1    # "rightCrossOverlayBuffer":Lcom/parrot/freeflight/piloting/ui/fpv/FpvCoordsBuffers;
    .end local v5    # "eyeShader":Lcom/parrot/engine3d/GLShader;
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v9

    .line 52
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
