.class Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/map/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1571
    const-string v0, "GLThreadManager"

    sput-object v0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/map/GLTextureView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/map/GLTextureView$1;

    .prologue
    .line 1570
    invoke-direct {p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1654
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_0

    .line 1659
    iput-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1665
    iput-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1667
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1635
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v3, :cond_1

    .line 1636
    invoke-direct {p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1637
    const/16 v3, 0x1f01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1638
    .local v0, "renderer":Ljava/lang/String;
    iget v3, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mGLESVersion:I

    const/high16 v4, 0x20000

    if-ge v3, v4, :cond_0

    .line 1639
    const-string v3, "Q3Dimension MSM7500 "

    .line 1640
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1641
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1643
    :cond_0
    iget-boolean v3, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v3, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mLimitedGLESContexts:Z

    .line 1649
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1651
    .end local v0    # "renderer":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .restart local v0    # "renderer":Ljava/lang/String;
    :cond_2
    move v3, v2

    .line 1640
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1643
    goto :goto_1

    .line 1635
    .end local v0    # "renderer":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglContextLocked(Lcom/parrot/freeflight/map/GLTextureView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mEglOwner:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1617
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mEglOwner:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    .line 1619
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1620
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    .prologue
    .line 1626
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    .prologue
    .line 1630
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1631
    iget-boolean v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1630
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/parrot/freeflight/map/GLTextureView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    .prologue
    .line 1577
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->access$1102(Lcom/parrot/freeflight/map/GLTextureView$GLThread;Z)Z

    .line 1578
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mEglOwner:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1579
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mEglOwner:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    .line 1581
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1582
    monitor-exit p0

    return-void

    .line 1577
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Lcom/parrot/freeflight/map/GLTextureView$GLThread;)Z
    .locals 2
    .param p1, "thread"    # Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    .prologue
    const/4 v0, 0x1

    .line 1592
    iget-object v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mEglOwner:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mEglOwner:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    if-nez v1, :cond_2

    .line 1593
    :cond_0
    iput-object p1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mEglOwner:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    .line 1594
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1608
    :cond_1
    :goto_0
    return v0

    .line 1597
    :cond_2
    invoke-direct {p0}, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1598
    iget-boolean v1, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_1

    .line 1605
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mEglOwner:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    if-eqz v0, :cond_3

    .line 1606
    iget-object v0, p0, Lcom/parrot/freeflight/map/GLTextureView$GLThreadManager;->mEglOwner:Lcom/parrot/freeflight/map/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/GLTextureView$GLThread;->requestReleaseEglContextLocked()V

    .line 1608
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
