.class Lcom/parrot/freeflight/core/authentication/client/ApcService$4;
.super Ljava/lang/Object;
.source "ApcService.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/authentication/client/ApcService;->asyncEditUserProfile(Lcom/parrot/freeflight/core/authentication/model/UserProfile;Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;)I
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
        "Ljava/lang/Void;",
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
    .line 203
    iput-object p1, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService$4;->this$0:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    iput-object p2, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService$4;->val$listener:Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;

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
    .line 212
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService$4;->val$listener:Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;->onResult(ZLjava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService$4;->this$0:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->access$100(Lcom/parrot/freeflight/core/authentication/client/ApcService;Lretrofit2/Call;)I

    .line 214
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .param p1, "call"    # Lretrofit2/Call;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "response"    # Lretrofit2/Response;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 206
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService$4;->val$listener:Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;->onResult(ZLjava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService$4;->this$0:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->access$100(Lcom/parrot/freeflight/core/authentication/client/ApcService;Lretrofit2/Call;)I

    .line 208
    return-void
.end method
