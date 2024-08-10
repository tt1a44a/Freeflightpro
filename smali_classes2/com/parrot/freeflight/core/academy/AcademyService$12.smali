.class Lcom/parrot/freeflight/core/academy/AcademyService$12;
.super Ljava/lang/Object;
.source "AcademyService.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/AcademyService;->asyncAuthGetRuns(Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunsListener;)I
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
        "Ljava/util/List",
        "<",
        "Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyService;

.field final synthetic val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunsListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunsListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/AcademyService;

    .prologue
    .line 574
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyService$12;->this$0:Lcom/parrot/freeflight/core/academy/AcademyService;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/AcademyService$12;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunsListener;

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
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;>;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$12;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunsListener;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$12;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunsListener;

    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunsListener;->onAuthGetRunsResponse(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Ljava/util/List;)V

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$12;->this$0:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/academy/AcademyService;->access$000(Lcom/parrot/freeflight/core/academy/AcademyService;Lretrofit2/Call;)I

    .line 595
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
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
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;",
            ">;>;",
            "Lretrofit2/Response",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;>;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;>;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService$12;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunsListener;

    if-eqz v1, :cond_0

    .line 578
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 579
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 580
    .local v0, "runList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService$12;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunsListener;

    sget-object v2, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    invoke-interface {v1, v2, v0}, Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunsListener;->onAuthGetRunsResponse(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Ljava/util/List;)V

    .line 586
    .end local v0    # "runList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/core/academy/model/ARAcademyRun;>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService$12;->this$0:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/core/academy/AcademyService;->access$000(Lcom/parrot/freeflight/core/academy/AcademyService;Lretrofit2/Call;)I

    .line 587
    return-void

    .line 583
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyService$12;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunsListener;

    sget-object v2, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunsListener;->onAuthGetRunsResponse(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Ljava/util/List;)V

    goto :goto_0
.end method
