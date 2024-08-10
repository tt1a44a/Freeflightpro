.class Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$1;
.super Landroid/content/BroadcastReceiver;
.source "ARDiscoveryMdnsSdMinDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 187
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "networkInfo"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 188
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 190
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 191
    .local v2, "state":Landroid/net/NetworkInfo$State;
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive NETWORK_STATE_CHANGED_ACTION intent, state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    .line 194
    :cond_0
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$1;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    invoke-static {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)V

    .line 198
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v2    # "state":Landroid/net/NetworkInfo$State;
    :cond_1
    return-void
.end method
