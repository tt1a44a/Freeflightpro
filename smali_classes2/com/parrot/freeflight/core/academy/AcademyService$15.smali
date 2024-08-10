.class Lcom/parrot/freeflight/core/academy/AcademyService$15;
.super Ljava/lang/Object;
.source "AcademyService.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/AcademyService;->asyncAuthPostRunsGradeVisible(ILcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunsGradeVisibleListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<",
        "Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyService;

.field final synthetic val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunsGradeVisibleListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunsGradeVisibleListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/AcademyService;

    .prologue
    .line 695
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyService$15;->this$0:Lcom/parrot/freeflight/core/academy/AcademyService;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/AcademyService$15;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunsGradeVisibleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Lretrofit2/Call;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "t"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 710
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$15;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunsGradeVisibleListener;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$15;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunsGradeVisibleListener;

    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunsGradeVisibleListener;->onAuthPostRunsGradeVisibleResponse(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;)V

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$15;->this$0:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/academy/AcademyService;->access$000(Lcom/parrot/freeflight/core/academy/AcademyService;Lretrofit2/Call;)I

    .line 714
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .param p1    # Lretrofit2/Call;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lretrofit2/Response;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 698
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$15;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunsGradeVisibleListener;

    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService$15;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunsGradeVisibleListener;

    sget-object v2, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;

    invoke-interface {v1, v2, v0}, Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunsGradeVisibleListener;->onAuthPostRunsGradeVisibleResponse(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;)V

    .line 705
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$15;->this$0:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/academy/AcademyService;->access$000(Lcom/parrot/freeflight/core/academy/AcademyService;Lretrofit2/Call;)I

    .line 706
    return-void

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$15;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunsGradeVisibleListener;

    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthPostRunsGradeVisibleListener;->onAuthPostRunsGradeVisibleResponse(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;)V

    goto :goto_0
.end method
