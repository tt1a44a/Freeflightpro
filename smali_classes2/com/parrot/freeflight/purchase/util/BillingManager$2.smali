.class Lcom/parrot/freeflight/purchase/util/BillingManager$2;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/purchase/util/BillingManager;->startServiceConnection(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

.field final synthetic val$executeOnSuccess:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/purchase/util/BillingManager;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/purchase/util/BillingManager;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$2;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    iput-object p2, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$2;->val$executeOnSuccess:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$2;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/purchase/util/BillingManager;->access$102(Lcom/parrot/freeflight/purchase/util/BillingManager;Z)Z

    .line 165
    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;

    .prologue
    .line 149
    const-string v0, "FF4.Purchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setup finished. Response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$2;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/purchase/util/BillingManager;->access$102(Lcom/parrot/freeflight/purchase/util/BillingManager;Z)Z

    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$2;->val$executeOnSuccess:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$2;->val$executeOnSuccess:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 159
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$2;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/purchase/util/BillingManager;->access$302(Lcom/parrot/freeflight/purchase/util/BillingManager;I)I

    .line 160
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$2;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight/purchase/util/BillingManager;->access$202(Lcom/parrot/freeflight/purchase/util/BillingManager;Z)Z

    goto :goto_0
.end method
