.class Lcom/android/billingclient/api/BillingClientImpl$12;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/billingclient/api/BillingClientImpl;

.field final synthetic val$consumeParams:Lcom/android/billingclient/api/ConsumeParams;

.field final synthetic val$listener:Lcom/android/billingclient/api/ConsumeResponseListener;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/billingclient/api/BillingClientImpl;

    .prologue
    .line 827
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$12;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$12;->val$consumeParams:Lcom/android/billingclient/api/ConsumeParams;

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl$12;->val$listener:Lcom/android/billingclient/api/ConsumeResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl$12;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$12;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$12;->val$consumeParams:Lcom/android/billingclient/api/ConsumeParams;

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl$12;->val$listener:Lcom/android/billingclient/api/ConsumeResponseListener;

    invoke-static {v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->access$600(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 831
    const/4 v0, 0x0

    return-object v0
.end method
