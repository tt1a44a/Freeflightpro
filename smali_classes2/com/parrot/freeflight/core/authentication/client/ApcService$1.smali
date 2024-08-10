.class Lcom/parrot/freeflight/core/authentication/client/ApcService$1;
.super Ljava/lang/Object;
.source "ApcService.java"

# interfaces
.implements Lcom/parrot/freeflight/network/InternetStatusManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/authentication/client/ApcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/authentication/client/ApcService;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/authentication/client/ApcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/authentication/client/ApcService;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService$1;->this$0:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInternetStatusChanged(Z)V
    .locals 1
    .param p1, "isInternetAvailable"    # Z

    .prologue
    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService$1;->this$0:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->access$002(Lcom/parrot/freeflight/core/authentication/client/ApcService;Z)Z

    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService$1;->this$0:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->uploadUserProfileIfNeeded()V

    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/core/authentication/client/ApcService$1;->this$0:Lcom/parrot/freeflight/core/authentication/client/ApcService;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/authentication/client/ApcService;->syncPersonalDataIfNeeded()V

    .line 70
    :cond_0
    return-void
.end method
