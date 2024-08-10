.class Lcom/parrot/freeflight/core/CoreManager$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/CoreManager;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/ApplicationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/CoreManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/CoreManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/CoreManager;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/parrot/freeflight/core/CoreManager$1;->this$0:Lcom/parrot/freeflight/core/CoreManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 170
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager$1;->this$0:Lcom/parrot/freeflight/core/CoreManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/CoreManager;->access$000(Lcom/parrot/freeflight/core/CoreManager;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager$1;->this$0:Lcom/parrot/freeflight/core/CoreManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/CoreManager;->access$000(Lcom/parrot/freeflight/core/CoreManager;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager$1;->this$0:Lcom/parrot/freeflight/core/CoreManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/CoreManager;->access$100(Lcom/parrot/freeflight/core/CoreManager;)Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->wifiAvailable(Z)V

    .line 173
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/core/CoreManager$1;->this$0:Lcom/parrot/freeflight/core/CoreManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/CoreManager;->access$100(Lcom/parrot/freeflight/core/CoreManager;)Lcom/parrot/freeflight/core/discovery/DiscoveryManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/discovery/DiscoveryManager;->wifiAvailable(Z)V

    .line 179
    return-void
.end method
