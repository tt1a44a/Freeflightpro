.class Lcom/parrot/freeflight/core/authentication/client/ApcService$12;
.super Ljava/lang/Object;
.source "ApcService.java"

# interfaces
.implements Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/authentication/client/ApcService;->uploadPersonalData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/core/authentication/client/ApcService$APCRequestListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/authentication/client/ApcService;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/authentication/client/ApcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/authentication/client/ApcService;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService$12;->this$0:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(ZLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 436
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/core/authentication/client/ApcService$12;->onResult(ZLjava/lang/Void;)V

    return-void
.end method

.method public onResult(ZLjava/lang/Void;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "data"    # Ljava/lang/Void;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService$12;->this$0:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    invoke-static {v0}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->access$200(Lcom/parrot/freeflight/core/authentication/client/ApcService;)Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/authentication/AuthenticationPrefs;->setPersonalDataSynchronized(Ljava/lang/Boolean;)V

    .line 440
    return-void
.end method
