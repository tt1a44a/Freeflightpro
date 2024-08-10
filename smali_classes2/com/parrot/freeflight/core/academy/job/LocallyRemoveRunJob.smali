.class public Lcom/parrot/freeflight/core/academy/job/LocallyRemoveRunJob;
.super Lcom/parrot/freeflight/core/academy/job/SyncJob;
.source "LocallyRemoveRunJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/core/academy/job/SyncJob",
        "<",
        "Lcom/parrot/freeflight/core/academy/RunInformation;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V
    .locals 0
    .param p1, "jobHolder"    # Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/academy/job/SyncJob;-><init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected onFinish(Lcom/parrot/freeflight/core/academy/RunInformation;Ljava/lang/Boolean;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "result"    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "error"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/LocallyRemoveRunJob;->mJobHolder:Lcom/parrot/freeflight/core/academy/job/IJobHolder;

    check-cast v0, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getCollection()Lcom/parrot/freeflight/core/academy/RunCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection;->onLocallyRemoveSuccess(Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 27
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/SyncJob;->onFinish(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 28
    return-void
.end method

.method protected bridge synthetic onFinish(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 9
    check-cast p1, Lcom/parrot/freeflight/core/academy/RunInformation;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/LocallyRemoveRunJob;->onFinish(Lcom/parrot/freeflight/core/academy/RunInformation;Ljava/lang/Boolean;Ljava/lang/Exception;)V

    return-void
.end method

.method protected process(Lcom/parrot/freeflight/core/academy/RunInformation;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->removeSelf()V

    .line 19
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 9
    check-cast p1, Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/job/LocallyRemoveRunJob;->process(Lcom/parrot/freeflight/core/academy/RunInformation;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
