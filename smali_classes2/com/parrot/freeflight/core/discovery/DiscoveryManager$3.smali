.class Lcom/parrot/freeflight/core/discovery/DiscoveryManager$3;
.super Ljava/lang/Object;
.source "DiscoveryManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/discovery/DiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$3;->this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 374
    const-string v0, "FF4.Discovery"

    const-string v1, "onServiceConnected discovery service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$3;->this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    check-cast p2, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService$LocalBinder;->getService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->access$102(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    .line 377
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$3;->this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->access$100(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$3;->this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->access$400(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->wifiAvailable(Z)V

    .line 378
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$3;->this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->access$500(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$3;->this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->access$600(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$3;->this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->access$100(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->startBLEDiscovering()V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$3;->this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->access$700(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$3;->this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->access$100(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->startWifiDiscovering()V

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$3;->this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->access$800(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$3;->this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->access$100(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->startUsbDiscovering()V

    .line 389
    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/parrot/freeflight/core/discovery/DiscoveryManager$3;->this$0:Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->access$102(Lcom/parrot/freeflight/core/discovery/DiscoveryManager;Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;)Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;

    .line 394
    return-void
.end method
