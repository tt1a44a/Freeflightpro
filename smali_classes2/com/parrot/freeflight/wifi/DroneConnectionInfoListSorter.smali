.class public Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;
.super Ljava/lang/Object;
.source "DroneConnectionInfoListSorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;,
        Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$Listener;
    }
.end annotation


# instance fields
.field private mCurrentTask:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPendingTask:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    iput-object v2, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;->mPendingTask:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;

    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;->mCurrentTask:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;->mCurrentTask:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->cancel(Z)Z

    .line 46
    iput-object v2, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;->mCurrentTask:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;

    .line 48
    :cond_0
    return-void
.end method

.method public handleTaskComplete(Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;)V
    .locals 3
    .param p1, "completedTask"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;->mCurrentTask:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;

    if-ne v0, p1, :cond_0

    .line 52
    iput-object v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;->mCurrentTask:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;->mCurrentTask:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;->mPendingTask:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;->mPendingTask:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;

    iput-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;->mCurrentTask:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;

    .line 56
    iput-object v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;->mPendingTask:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;

    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;->mCurrentTask:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;

    invoke-static {}, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->getWifiListSortExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 59
    :cond_1
    return-void
.end method

.method public sort(Ljava/util/List;Ljava/util/Comparator;Ljava/lang/String;ZLcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$Listener;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Comparator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "selectedDrone"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "mergeSsid"    # Z
    .param p5, "listener"    # Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/parrot/freeflight/wifi/DroneConnectionInfo;>;"
    new-instance v0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;-><init>(Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;Ljava/util/Comparator;Ljava/lang/String;Ljava/util/List;ZLcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$Listener;Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$1;)V

    .line 34
    .local v0, "task":Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;
    iget-object v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;->mCurrentTask:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;

    if-nez v1, :cond_0

    .line 35
    iput-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;->mCurrentTask:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;

    .line 36
    iget-object v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;->mCurrentTask:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;

    invoke-static {}, Lcom/parrot/freeflight/util/concurrent/ExecutorStore;->getWifiListSortExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iput-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter;->mPendingTask:Lcom/parrot/freeflight/wifi/DroneConnectionInfoListSorter$DroneConnectionInfoListSortTask;

    goto :goto_0
.end method
