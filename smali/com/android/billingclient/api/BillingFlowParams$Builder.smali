.class public Lcom/android/billingclient/api/BillingFlowParams$Builder;
.super Ljava/lang/Object;
.source "BillingFlowParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingFlowParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAccountId:Ljava/lang/String;

.field private mDeveloperId:Ljava/lang/String;

.field private mOldSku:Ljava/lang/String;

.field private mReplaceSkusProrationMode:I

.field private mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

.field private mVrPurchaseFlow:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mReplaceSkusProrationMode:I

    .line 163
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/BillingFlowParams$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/billingclient/api/BillingFlowParams$1;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;-><init>()V

    return-void
.end method

.method private setSkuDetails(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 3
    .param p1, "originalSkuDetails"    # Ljava/lang/String;

    .prologue
    .line 185
    :try_start_0
    new-instance v1, Lcom/android/billingclient/api/SkuDetails;

    invoke-direct {v1, p1}, Lcom/android/billingclient/api/SkuDetails;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mSkuDetails:Lcom/android/billingclient/api/SkuDetails;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    return-object p0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "ex":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Incorrect skuDetails JSON object!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addOldSku(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 0
    .param p1, "oldSku"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mOldSku:Ljava/lang/String;

    .line 237
    return-object p0
.end method

.method public build()Lcom/android/billingclient/api/BillingFlowParams;
    .locals 2

    .prologue
    .line 329
    new-instance v0, Lcom/android/billingclient/api/BillingFlowParams;

    invoke-direct {v0}, Lcom/android/billingclient/api/BillingFlowParams;-><init>()V

    .line 330
    .local v0, "params":Lcom/android/billingclient/api/BillingFlowParams;
    iget-object v1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->access$102(Lcom/android/billingclient/api/BillingFlowParams;Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/SkuDetails;

    .line 331
    iget-object v1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mOldSku:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->access$202(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    iget-object v1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->access$302(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    iget-boolean v1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mVrPurchaseFlow:Z

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->access$402(Lcom/android/billingclient/api/BillingFlowParams;Z)Z

    .line 334
    iget v1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mReplaceSkusProrationMode:I

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->access$502(Lcom/android/billingclient/api/BillingFlowParams;I)I

    .line 335
    iget-object v1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mDeveloperId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams;->access$602(Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)Ljava/lang/String;

    .line 336
    return-object v0
.end method

.method public setAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 0
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mAccountId:Ljava/lang/String;

    .line 289
    return-object p0
.end method

.method public setDeveloperId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 0
    .param p1, "developerId"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mDeveloperId:Ljava/lang/String;

    .line 324
    return-object p0
.end method

.method public setOldSku(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 0
    .param p1, "oldSku"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mOldSku:Ljava/lang/String;

    .line 222
    return-object p0
.end method

.method public setOldSkus(Ljava/util/ArrayList;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/billingclient/api/BillingFlowParams$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 205
    .local p1, "oldSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mOldSku:Ljava/lang/String;

    .line 208
    :cond_0
    return-object p0
.end method

.method public setReplaceSkusProrationMode(I)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 0
    .param p1, "replaceSkusProrationMode"    # I

    .prologue
    .line 265
    iput p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mReplaceSkusProrationMode:I

    .line 266
    return-object p0
.end method

.method public setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 0
    .param p1, "skuDetails"    # Lcom/android/billingclient/api/SkuDetails;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    .line 178
    return-object p0
.end method

.method public setVrPurchaseFlow(Z)Lcom/android/billingclient/api/BillingFlowParams$Builder;
    .locals 0
    .param p1, "isVrPurchaseFlow"    # Z

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingFlowParams$Builder;->mVrPurchaseFlow:Z

    .line 305
    return-object p0
.end method
