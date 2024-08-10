.class public Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;
.super Lcom/parrot/freeflight/core/academy/job/AsyncJob;
.source "DeleteRunJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/core/academy/job/AsyncJob",
        "<",
        "Lcom/parrot/freeflight/core/academy/RunInformation;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRunJobHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;Lcom/parrot/freeflight/core/academy/AcademyService;)V
    .locals 0
    .param p1, "jobHolder"    # Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "academyManager"    # Lcom/parrot/freeflight/core/academy/AcademyService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/academy/job/AsyncJob;-><init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V

    .line 21
    iput-object p3, p0, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;

    .line 22
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->mRunJobHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    .line 23
    return-void
.end method


# virtual methods
.method protected cancelRequest(I)V
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/AcademyService;->cancelRequest(I)V

    .line 52
    return-void
.end method

.method protected onFinish(Lcom/parrot/freeflight/core/academy/RunInformation;Ljava/lang/Void;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "result"    # Ljava/lang/Void;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "error"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    if-nez p3, :cond_0

    .line 42
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->mRunJobHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getCollection()Lcom/parrot/freeflight/core/academy/RunCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/RunCollection;->onDeleteSuccess(Lcom/parrot/freeflight/core/academy/RunInformation;)V

    .line 46
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->onFinish(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 47
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->mRunJobHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getCollection()Lcom/parrot/freeflight/core/academy/RunCollection;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/parrot/freeflight/core/academy/RunCollection;->onDeleteFailed(Lcom/parrot/freeflight/core/academy/RunInformation;Ljava/lang/Exception;)V

    goto :goto_0
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
    .line 13
    check-cast p1, Lcom/parrot/freeflight/core/academy/RunInformation;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->onFinish(Lcom/parrot/freeflight/core/academy/RunInformation;Ljava/lang/Void;Ljava/lang/Exception;)V

    return-void
.end method

.method protected process(Lcom/parrot/freeflight/core/academy/RunInformation;)I
    .locals 4
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunId()I

    move-result v2

    new-instance v3, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob$1;

    invoke-direct {v3, p0, p1}, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob$1;-><init>(Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/core/academy/AcademyService;->asyncAuthDeleteRun(ILcom/parrot/freeflight/core/academy/listener/ARAcademyAuthDeleteRunListener;)I

    move-result v0

    .line 36
    .local v0, "requestId":I
    return v0
.end method

.method protected bridge synthetic process(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13
    check-cast p1, Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/job/DeleteRunJob;->process(Lcom/parrot/freeflight/core/academy/RunInformation;)I

    move-result v0

    return v0
.end method
