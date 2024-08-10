.class Lcom/parrot/freeflight/core/authentication/client/ApcService$5;
.super Ljava/lang/Object;
.source "ApcService.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/authentication/client/ApcService;->asyncGetUserPersonalData(Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)I
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
        "Lcom/parrot/freeflight/core/authentication/model/PersonalData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/authentication/client/ApcService;

.field final synthetic val$listener:Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/authentication/client/ApcService;Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/authentication/client/ApcService;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService$5;->this$0:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    iput-object p2, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService$5;->val$listener:Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "call"    # Lretrofit2/Call;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "t"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 237
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService$5;->val$listener:Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;->onResult(ZLjava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService$5;->this$0:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->access$100(Lcom/parrot/freeflight/core/authentication/client/ApcService;Lretrofit2/Call;)I

    .line 239
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
            "Lcom/parrot/freeflight/core/authentication/model/PersonalData;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/parrot/freeflight/core/authentication/model/PersonalData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/parrot/freeflight/core/authentication/model/PersonalData;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/parrot/freeflight/core/authentication/model/PersonalData;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService$5;->val$listener:Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;->onResult(ZLjava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService$5;->this$0:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->access$100(Lcom/parrot/freeflight/core/authentication/client/ApcService;Lretrofit2/Call;)I

    .line 233
    return-void
.end method
