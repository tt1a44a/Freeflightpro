.class public Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;
.super Lcom/parrot/freeflight/core/academy/job/AsyncJob;
.source "UpdateGradeJob.java"


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


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;Lcom/parrot/freeflight/core/academy/AcademyService;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/core/academy/job/IJobHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "jobExecutor"    # Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "academyManager"    # Lcom/parrot/freeflight/core/academy/AcademyService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/core/academy/job/IJobHolder",
            "<",
            "Lcom/parrot/freeflight/core/academy/RunInformation;",
            ">;",
            "Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;",
            "Lcom/parrot/freeflight/core/academy/AcademyService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "jobHolder":Lcom/parrot/freeflight/core/academy/job/IJobHolder;, "Lcom/parrot/freeflight/core/academy/job/IJobHolder<Lcom/parrot/freeflight/core/academy/RunInformation;>;"
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/academy/job/AsyncJob;-><init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V

    .line 19
    iput-object p3, p0, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;

    .line 20
    return-void
.end method


# virtual methods
.method protected cancelRequest(I)V
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/academy/AcademyService;->cancelRequest(I)V

    .line 46
    return-void
.end method

.method protected onFinish(Lcom/parrot/freeflight/core/academy/RunInformation;Ljava/lang/Void;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "job"    # Lcom/parrot/freeflight/core/academy/RunInformation;
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
    .line 50
    if-nez p3, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->markGradeUpdated()V

    .line 53
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/AsyncJob;->onFinish(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 54
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
    .line 13
    check-cast p1, Lcom/parrot/freeflight/core/academy/RunInformation;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->onFinish(Lcom/parrot/freeflight/core/academy/RunInformation;Ljava/lang/Void;Ljava/lang/Exception;)V

    return-void
.end method

.method protected process(Lcom/parrot/freeflight/core/academy/RunInformation;)I
    .locals 5
    .param p1, "job"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    new-instance v1, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;

    invoke-direct {v1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;-><init>()V

    .line 25
    .local v1, "runGradeVisible":Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunSummary()Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;->setVisible(Z)V

    .line 26
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunSummary()Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;->getGrade()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;->setGrade(I)V

    .line 28
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunId()I

    move-result v3

    new-instance v4, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob$1;

    invoke-direct {v4, p0, p1}, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob$1;-><init>(Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;Lcom/parrot/freeflight/core/academy/RunInformation;)V

    invoke-virtual {v2, v3, v1, v4}, Lcom/parrot/freeflight/core/academy/AcademyService;->asyncAuthPostRunsGradeVisible(ILcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunsGradeVisibleListener;)I

    move-result v0

    .line 40
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

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->process(Lcom/parrot/freeflight/core/academy/RunInformation;)I

    move-result v0

    return v0
.end method
