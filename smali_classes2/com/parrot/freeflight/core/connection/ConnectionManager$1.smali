.class Lcom/parrot/freeflight/core/connection/ConnectionManager$1;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/connection/ConnectionManager;->runStateMachine(Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/connection/ConnectionManager;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$1;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$1;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$000(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->shouldAutoSelectService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$1;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_NOT_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$102(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;)Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    .line 290
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$1;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$200(Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    .line 291
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$1;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    sget-object v1, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;->EVENT_CONNECT_DEVICE:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$300(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionEvent;)V

    .line 298
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$1;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$400(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$1;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    iget-object v1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$1;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$400(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$502(Lcom/parrot/freeflight/core/connection/ConnectionManager;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;

    .line 294
    iget-object v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManager$1;->this$0:Lcom/parrot/freeflight/core/connection/ConnectionManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->access$600(Lcom/parrot/freeflight/core/connection/ConnectionManager;)Z

    goto :goto_0

    .line 296
    :cond_1
    const-string v0, "FF4.Connect"

    const-string v1, "Connection Manager : mCurrentDroneService == null while trying to reconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
