.class public Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "GLRelativeLayout.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/fpv/GLRenderable;


# static fields
.field private static final REFRESH_RATE_IN_MS:I = 0x21


# instance fields
.field private mGlRenderer:Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGlSurfaceView:Landroid/opengl/GLSurfaceView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLastDrawTime:J

.field private mLastMessageTime:J

.field private final mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mLastDrawTime:J

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mLastMessageTime:J

    .line 72
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout$1;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mUIHandler:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mLastDrawTime:J

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mLastMessageTime:J

    .line 72
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout$1;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mUIHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mLastDrawTime:J

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mLastMessageTime:J

    .line 72
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout$1;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mUIHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;)J
    .locals 2
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mLastMessageTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;J)J
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;
    .param p1, "x1"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mLastMessageTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->internalInvalidate()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private internalInvalidate()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 45
    .local v2, "now":J
    iget-wide v6, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mLastDrawTime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x21

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 46
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mGlRenderer:Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;

    if-eqz v6, :cond_1

    .line 47
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mGlRenderer:Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;

    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->onDrawViewBegin()Landroid/graphics/Canvas;

    move-result-object v0

    .line 48
    .local v0, "glAttachedCanvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 50
    .local v4, "xScale":F
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 51
    .local v5, "yScale":F
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 53
    .local v1, "scale":F
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 54
    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 57
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 60
    .end local v1    # "scale":F
    .end local v4    # "xScale":F
    .end local v5    # "yScale":F
    :cond_0
    iget-object v6, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mGlRenderer:Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;

    invoke-virtual {v6}, Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;->onDrawViewEnd()V

    .line 63
    .end local v0    # "glAttachedCanvas":Landroid/graphics/Canvas;
    :cond_1
    iput-wide v2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mLastDrawTime:J

    .line 64
    return-void
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public setGlRendereringObjects(Landroid/opengl/GLSurfaceView;Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;)V
    .locals 0
    .param p1, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "glRenderer"    # Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 69
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mGlRenderer:Lcom/parrot/freeflight/piloting/ui/fpv/ViewToGLRenderer;

    .line 70
    return-void
.end method

.method public startRendering()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    return-void
.end method

.method public stopRendering()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/GLRelativeLayout;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 91
    return-void
.end method
