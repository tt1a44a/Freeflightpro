.class public Lcom/parrot/freeflight/map/MapGLRenderer;
.super Ljava/lang/Object;
.source "MapGLRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mGlExtensionsSupport:Lcom/parrot/engine3d/GLExtensionsSupport;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMustRender:Z

.field private mMustRenderFlightPlan:Z

.field private mMustRenderTapMode:Z

.field private mOnSnapshotReadyListener:Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mMustRender:Z

    .line 30
    iput-boolean v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mMustRenderFlightPlan:Z

    .line 31
    iput-boolean v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mMustRenderTapMode:Z

    .line 34
    new-instance v0, Lcom/parrot/engine3d/GLExtensionsSupport;

    invoke-direct {v0}, Lcom/parrot/engine3d/GLExtensionsSupport;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mGlExtensionsSupport:Lcom/parrot/engine3d/GLExtensionsSupport;

    .line 35
    return-void
.end method


# virtual methods
.method public getGLExtensionsSupport()Lcom/parrot/engine3d/GLExtensionsSupport;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mGlExtensionsSupport:Lcom/parrot/engine3d/GLExtensionsSupport;

    return-object v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v3, 0x0

    .line 68
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 69
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mMustRender:Z

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mMustRenderFlightPlan:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->render()V

    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mOnSnapshotReadyListener:Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mOnSnapshotReadyListener:Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;

    iget-object v1, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->getHeight()I

    move-result v2

    invoke-static {v3, v3, v1, v2}, Lcom/parrot/engine3d/bitmaps/BitmapWriter;->createBitmapFromGLSurface(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;->onSnapshotReady(Landroid/graphics/Bitmap;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mOnSnapshotReadyListener:Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mMustRenderTapMode:Z

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->render()V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->render()V

    .line 83
    :cond_2
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v0, p2, p3}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->onContextChanged(II)V

    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0, p2, p3}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->onContextChanged(II)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v0, p2, p3}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->onContextChanged(II)V

    .line 64
    :cond_1
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mGlExtensionsSupport:Lcom/parrot/engine3d/GLExtensionsSupport;

    invoke-virtual {v0}, Lcom/parrot/engine3d/GLExtensionsSupport;->initialize()V

    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->onContextCreated()V

    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->onContextCreated()V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->onContextCreated()V

    .line 53
    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;->onContextReleased()V

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;->onContextReleased()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    invoke-virtual {v0}, Lcom/parrot/freeflight/tapmode/TapModeGlScene;->onContextReleased()V

    .line 93
    :cond_1
    return-void
.end method

.method public setMustRender(Z)V
    .locals 0
    .param p1, "mustRender"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mMustRender:Z

    .line 114
    return-void
.end method

.method public setMustRenderFlightPlan(Z)V
    .locals 0
    .param p1, "mustRenderFlightPlan"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mMustRenderFlightPlan:Z

    .line 106
    return-void
.end method

.method public setMustRenderTapMode(Z)V
    .locals 0
    .param p1, "mustRenderTapMode"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mMustRenderTapMode:Z

    .line 110
    return-void
.end method

.method public setScene(Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;Lcom/parrot/freeflight/tapmode/TapModeGlScene;)V
    .locals 0
    .param p1, "dronesInfosGlScene"    # Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flightPlanGlScene"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "tapModeGlScene"    # Lcom/parrot/freeflight/tapmode/TapModeGlScene;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    iput-object p1, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mDronesInfosGlScene:Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;

    .line 39
    iput-object p2, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mFlightPlanGlScene:Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;

    .line 40
    iput-object p3, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mTapModeGlScene:Lcom/parrot/freeflight/tapmode/TapModeGlScene;

    .line 41
    return-void
.end method

.method public snapshot(Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;)V
    .locals 0
    .param p1, "onSnapshotReadyListener"    # Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    iput-object p1, p0, Lcom/parrot/freeflight/map/MapGLRenderer;->mOnSnapshotReadyListener:Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;

    .line 97
    return-void
.end method
