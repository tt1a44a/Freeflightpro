.class Lcom/parrot/freeflight/core/academy/AcademyService$11;
.super Ljava/lang/Object;
.source "AcademyService.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/AcademyService;->asyncAuthGetRunJsonDetails(ILcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunJsonDetailsListener;)I
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyService;

.field final synthetic val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunJsonDetailsListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyService;Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunJsonDetailsListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/AcademyService;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyService$11;->this$0:Lcom/parrot/freeflight/core/academy/AcademyService;

    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/AcademyService$11;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunJsonDetailsListener;

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
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 549
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$11;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunJsonDetailsListener;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$11;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunJsonDetailsListener;

    sget-object v1, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunJsonDetailsListener;->onAuthGetRunJsonDetailsResponse(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Lorg/json/JSONObject;)V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/AcademyService$11;->this$0:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/academy/AcademyService;->access$000(Lcom/parrot/freeflight/core/academy/AcademyService;Lretrofit2/Call;)I

    .line 553
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 5
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
            "Ljava/lang/String;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/String;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 530
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyService$11;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunJsonDetailsListener;

    if-eqz v2, :cond_0

    .line 531
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 533
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 534
    .local v1, "json":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyService$11;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunJsonDetailsListener;

    sget-object v3, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    invoke-interface {v2, v3, v1}, Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunJsonDetailsListener;->onAuthGetRunJsonDetailsResponse(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyService$11;->this$0:Lcom/parrot/freeflight/core/academy/AcademyService;

    invoke-static {v2, p1}, Lcom/parrot/freeflight/core/academy/AcademyService;->access$000(Lcom/parrot/freeflight/core/academy/AcademyService;Lretrofit2/Call;)I

    .line 545
    return-void

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 537
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyService$11;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunJsonDetailsListener;

    sget-object v3, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_MANAGER_JSON_PARSSING:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    invoke-interface {v2, v3, v4}, Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunJsonDetailsListener;->onAuthGetRunJsonDetailsResponse(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 541
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyService$11;->val$listener:Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunJsonDetailsListener;

    sget-object v3, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    invoke-interface {v2, v3, v4}, Lcom/parrot/freeflight/core/academy/listener/ARAcademyAuthGetRunJsonDetailsListener;->onAuthGetRunJsonDetailsResponse(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
