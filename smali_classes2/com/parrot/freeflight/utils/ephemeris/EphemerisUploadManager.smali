.class public Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;
.super Ljava/lang/Object;
.source "EphemerisUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUploadTask:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;)Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->mUploadTask:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    return-object v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;)Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;
    .param p1, "x1"    # Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->mUploadTask:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    return-object p1
.end method


# virtual methods
.method public start(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V
    .locals 3
    .param p1, "serial"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "service"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 22
    iget-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->mUploadTask:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->mUploadTask:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    invoke-static {v0}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;->access$000(Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->mUploadTask:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    invoke-static {v0}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;->access$100(Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->mUploadTask:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;->cancel(Z)Z

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->mUploadTask:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->mUploadTask:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUtils;->isEphemerisUploadNeeded(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    new-instance v0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;-><init>(Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)V

    iput-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->mUploadTask:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->mUploadTask:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    invoke-static {}, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->getEphemerisExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 30
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->mUploadTask:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->mUploadTask:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;->cancel(Z)Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager;->mUploadTask:Lcom/parrot/freeflight/utils/ephemeris/EphemerisUploadManager$EphemerisUploadTask;

    .line 37
    :cond_0
    return-void
.end method
