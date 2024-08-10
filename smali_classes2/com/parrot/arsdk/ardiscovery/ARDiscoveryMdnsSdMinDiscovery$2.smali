.class Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$2;
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
    .line 202
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$2;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 206
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$2;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$200(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Receive CONNECTIVITY_ACTION intent, extras are :"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 210
    .local v0, "extras":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", value = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "NULL"

    goto :goto_1

    .line 213
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "End of extras"

    invoke-static {v2, v3}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery$2;->this$0:Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;->access$100(Lcom/parrot/arsdk/ardiscovery/ARDiscoveryMdnsSdMinDiscovery;)V

    .line 216
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_2
    return-void
.end method
