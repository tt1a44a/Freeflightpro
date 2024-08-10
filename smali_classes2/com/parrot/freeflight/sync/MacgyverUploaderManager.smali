.class public Lcom/parrot/freeflight/sync/MacgyverUploaderManager;
.super Ljava/lang/Object;
.source "MacgyverUploaderManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMacgyverUploaderTask:Lcom/parrot/freeflight/sync/MacgyverUploaderTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/location/SmartLocationManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "smartLocationManager"    # Lcom/parrot/freeflight/location/SmartLocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderManager;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderManager;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    .line 25
    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderManager;->mMacgyverUploaderTask:Lcom/parrot/freeflight/sync/MacgyverUploaderTask;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;

    iget-object v1, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderManager;->mSmartLocationManager:Lcom/parrot/freeflight/location/SmartLocationManager;

    invoke-direct {v0, v1, v2}, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/location/SmartLocationManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderManager;->mMacgyverUploaderTask:Lcom/parrot/freeflight/sync/MacgyverUploaderTask;

    .line 30
    iget-object v0, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderManager;->mMacgyverUploaderTask:Lcom/parrot/freeflight/sync/MacgyverUploaderTask;

    invoke-static {}, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->getMacgyverExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 32
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderManager;->mMacgyverUploaderTask:Lcom/parrot/freeflight/sync/MacgyverUploaderTask;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderManager;->mMacgyverUploaderTask:Lcom/parrot/freeflight/sync/MacgyverUploaderTask;

    invoke-virtual {v0}, Lcom/parrot/freeflight/sync/MacgyverUploaderTask;->cancelTask()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/sync/MacgyverUploaderManager;->mMacgyverUploaderTask:Lcom/parrot/freeflight/sync/MacgyverUploaderTask;

    .line 39
    :cond_0
    return-void
.end method
