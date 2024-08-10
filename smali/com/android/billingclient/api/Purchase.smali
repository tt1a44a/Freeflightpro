.class public Lcom/android/billingclient/api/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/Purchase$PurchasesResult;,
        Lcom/android/billingclient/api/Purchase$PurchaseState;
    }
.end annotation


# instance fields
.field private final mOriginalJson:Ljava/lang/String;

.field private final mParsedJson:Lorg/json/JSONObject;

.field private final mSignature:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "jsonPurchaseInfo"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/billingclient/api/Purchase;->mOriginalJson:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/android/billingclient/api/Purchase;->mSignature:Ljava/lang/String;

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/android/billingclient/api/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/billingclient/api/Purchase;->mParsedJson:Lorg/json/JSONObject;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    if-ne p0, p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v1

    .line 139
    :cond_1
    instance-of v3, p1, Lcom/android/billingclient/api/Purchase;

    if-nez v3, :cond_2

    move v1, v2

    .line 140
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 143
    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 145
    .local v0, "purchase":Lcom/android/billingclient/api/Purchase;
    iget-object v3, p0, Lcom/android/billingclient/api/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/billingclient/api/Purchase;->mSignature:Ljava/lang/String;

    .line 146
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getDeveloperPayload()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->mParsedJson:Lorg/json/JSONObject;

    const-string v1, "developerPayload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "orderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->mOriginalJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPurchaseState()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 79
    iget-object v1, p0, Lcom/android/billingclient/api/Purchase;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "purchaseState"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 83
    :goto_0
    return v0

    .line 81
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public getPurchaseTime()J
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "purchaseTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPurchaseToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "token"

    iget-object v2, p0, Lcom/android/billingclient/api/Purchase;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "purchaseToken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAcknowledged()Z
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->mParsedJson:Lorg/json/JSONObject;

    const-string v1, "acknowledged"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAutoRenewing()Z
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->mParsedJson:Lorg/json/JSONObject;

    const-string v1, "autoRenewing"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purchase. Json: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
