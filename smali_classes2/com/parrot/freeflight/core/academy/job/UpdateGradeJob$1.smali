.class Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob$1;
.super Ljava/lang/Object;
.source "UpdateGradeJob.java"

# interfaces
.implements Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunsGradeVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->process(Lcom/parrot/freeflight/core/academy/RunInformation;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

.field final synthetic val$job:Lcom/parrot/freeflight/core/academy/RunInformation;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;Lcom/parrot/freeflight/core/academy/RunInformation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob$1;->val$job:Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthPostRunsGradeVisibleResponse(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;)V
    .locals 4
    .param p1, "error"    # Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    .param p2, "model"    # Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;

    .prologue
    const/4 v3, 0x0

    .line 31
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    sget-object v0, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    if-ne p1, v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob$1;->val$job:Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {v0, v1, v3, v3}, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->dispatchResult(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob$1;->this$0:Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob$1;->val$job:Lcom/parrot/freeflight/core/academy/RunInformation;

    new-instance v2, Lcom/parrot/freeflight/core/academy/model/ARAcademyException;

    invoke-direct {v2, p1}, Lcom/parrot/freeflight/core/academy/model/ARAcademyException;-><init>(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/parrot/freeflight/core/academy/job/UpdateGradeJob;->dispatchResult(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method
