.class Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PurchaseHistoryResult"
.end annotation


# instance fields
.field private mBillingResult:Lcom/android/billingclient/api/BillingResult;

.field private mPurchaseHistoryRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0
    .param p1, "mBillingResult"    # Lcom/android/billingclient/api/BillingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List",
            "<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1632
    .local p2, "purchaseHistoryRecordList":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/PurchaseHistoryRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1633
    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;->mPurchaseHistoryRecordList:Ljava/util/List;

    .line 1634
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;->mBillingResult:Lcom/android/billingclient/api/BillingResult;

    .line 1635
    return-void
.end method


# virtual methods
.method getBillingResult()Lcom/android/billingclient/api/BillingResult;
    .locals 1

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;->mBillingResult:Lcom/android/billingclient/api/BillingResult;

    return-object v0
.end method

.method getPurchaseHistoryRecordList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$PurchaseHistoryResult;->mPurchaseHistoryRecordList:Ljava/util/List;

    return-object v0
.end method
