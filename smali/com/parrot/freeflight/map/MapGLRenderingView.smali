.class public Lcom/parrot/freeflight/map/MapGLRenderingView;
.super Lcom/parrot/freeflight/map/GLTextureView;
.source "MapGLRenderingView.java"

# interfaces
.implements Lcom/parrot/engine3d/GLThreadInterface;


# static fields
.field private static final OPENGL_ES_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GLRenderingView"


# instance fields
.field private final mRenderer:Lcom/parrot/freeflight/map/MapGLRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/map/GLTextureView;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Lcom/parrot/freeflight/map/MapGLRenderer;

    invoke-direct {v0}, Lcom/parrot/freeflight/map/MapGLRenderer;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderingView;->mRenderer:Lcom/parrot/freeflight/map/MapGLRenderer;

    .line 24
    invoke-direct {p0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/map/GLTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Lcom/parrot/freeflight/map/MapGLRenderer;

    invoke-direct {v0}, Lcom/parrot/freeflight/map/MapGLRenderer;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderingView;->mRenderer:Lcom/parrot/freeflight/map/MapGLRenderer;

    .line 29
    invoke-direct {p0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->init()V

    .line 30
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 33
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->setEGLContextClientVersion(I)V

    .line 35
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/freeflight/map/MapGLRenderingView;->setEGLConfigChooser(IIIIII)V

    .line 36
    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/map/MapGLRenderingView;->setOpaque(Z)V

    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderingView;->mRenderer:Lcom/parrot/freeflight/map/MapGLRenderer;

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 39
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderingView;->mRenderer:Lcom/parrot/freeflight/map/MapGLRenderer;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderer;->release()V

    .line 43
    return-void
.end method

.method public getGLExtensionsSupport()Lcom/parrot/engine3d/GLExtensionsSupport;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderingView;->mRenderer:Lcom/parrot/freeflight/map/MapGLRenderer;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapGLRenderer;->getGLExtensionsSupport()Lcom/parrot/engine3d/GLExtensionsSupport;

    move-result-object v0

    return-object v0
.end method

.method public runOnGLThread(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/map/MapGLRenderingView;->queueEvent(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

.method public setMustRender(Z)V
    .locals 1
    .param p1, "mustRender"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderingView;->mRenderer:Lcom/parrot/freeflight/map/MapGLRenderer;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/map/MapGLRenderer;->setMustRender(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 87
    return-void
.end method

.method public setMustRenderFlightPlan(Z)V
    .locals 1
    .param p1, "mustRenderFlightPlan"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderingView;->mRenderer:Lcom/parrot/freeflight/map/MapGLRenderer;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/map/MapGLRenderer;->setMustRenderFlightPlan(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 77
    return-void
.end method

.method public setMustRenderTapMode(Z)V
    .locals 1
    .param p1, "mustRenderTapMode"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderingView;->mRenderer:Lcom/parrot/freeflight/map/MapGLRenderer;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/map/MapGLRenderer;->setMustRenderTapMode(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 82
    return-void
.end method

.method public setScene(Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;Lcom/parrot/freeflight/tapmode/TapModeGlScene;)V
    .locals 1
    .param p1, "dronesInfosGlScene"    # Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "scene"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "scene2"    # Lcom/parrot/freeflight/tapmode/TapModeGlScene;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapGLRenderingView;->mRenderer:Lcom/parrot/freeflight/map/MapGLRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/map/MapGLRenderer;->setScene(Lcom/parrot/freeflight/map/gl/DronesInfosGlScene;Lcom/parrot/freeflight/flightplan/ui/FlightPlanGlScene;Lcom/parrot/freeflight/tapmode/TapModeGlScene;)V

    .line 47
    return-void
.end method

.method public snapshot(Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;)V
    .locals 2
    .param p1, "onSnapshotReadyListener"    # Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->getVisibility()I

    move-result v0

    .line 60
    .local v0, "visibility":I
    if-eqz v0, :cond_0

    .line 61
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/map/MapGLRenderingView;->setVisibility(I)V

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/map/MapGLRenderingView;->mRenderer:Lcom/parrot/freeflight/map/MapGLRenderer;

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/map/MapGLRenderer;->snapshot(Lcom/parrot/engine3d/listener/OnSnapshotReadyListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->requestRender()V

    .line 65
    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/map/MapGLRenderingView;->setVisibility(I)V

    .line 68
    :cond_1
    return-void
.end method
