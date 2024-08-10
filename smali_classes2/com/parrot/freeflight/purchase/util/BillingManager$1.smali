.class Lcom/parrot/freeflight/purchase/util/BillingManager$1;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/purchase/util/BillingManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/purchase/util/BillingManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/purchase/util/BillingManager;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$1;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    const-string v0, "FF4.Purchase"

    const-string v1, "Setup successful. Querying inventory."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$1;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/purchase/util/BillingManager;->access$002(Lcom/parrot/freeflight/purchase/util/BillingManager;Z)Z

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$1;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/purchase/util/BillingManager;->queryPurchases()V

    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager$1;->this$0:Lcom/parrot/freeflight/purchase/util/BillingManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/purchase/util/BillingManager;->querySkuDetails()V

    .line 118
    return-void
.end method
