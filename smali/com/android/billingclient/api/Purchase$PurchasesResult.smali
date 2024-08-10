.class public Lcom/android/billingclient/api/Purchase$PurchasesResult;
.super Ljava/lang/Object;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/Purchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PurchasesResult"
.end annotation


# instance fields
.field private mBillingResult:Lcom/android/billingclient/api/BillingResult;

.field private mPurchaseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0
    .param p1, "mBillingResult"    # Lcom/android/billingclient/api/BillingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List",
            "<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, "purchasesList":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/Purchase;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/android/billingclient/api/Purchase$PurchasesResult;->mPurchaseList:Ljava/util/List;

    .line 161
    iput-object p1, p0, Lcom/android/billingclient/api/Purchase$PurchasesResult;->mBillingResult:Lcom/android/billingclient/api/BillingResult;

    .line 162
    return-void
.end method


# virtual methods
.method public getBillingResult()Lcom/android/billingclient/api/BillingResult;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase$PurchasesResult;->mBillingResult:Lcom/android/billingclient/api/BillingResult;

    return-object v0
.end method

.method public getPurchasesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase$PurchasesResult;->mPurchaseList:Ljava/util/List;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getBillingResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    return v0
.end method
