.class public Lcom/android/billingclient/api/SkuDetails;
.super Ljava/lang/Object;
.source "SkuDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;
    }
.end annotation


# instance fields
.field private final mOriginalJson:Ljava/lang/String;

.field private final mParsedJson:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "jsonSkuDetails"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/billingclient/api/SkuDetails;->mOriginalJson:Ljava/lang/String;

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/android/billingclient/api/SkuDetails;->mOriginalJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 205
    if-ne p0, p1, :cond_0

    .line 206
    const/4 v1, 0x1

    .line 214
    :goto_0
    return v1

    .line 208
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 209
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 212
    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    .line 214
    .local v0, "details":Lcom/android/billingclient/api/SkuDetails;
    iget-object v1, p0, Lcom/android/billingclient/api/SkuDetails;->mOriginalJson:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/billingclient/api/SkuDetails;->mOriginalJson:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string v1, "description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreeTrialPeriod()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string v1, "freeTrialPeriod"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string v1, "iconUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntroductoryPrice()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string v1, "introductoryPrice"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntroductoryPriceAmountMicros()J
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string v1, "introductoryPriceAmountMicros"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIntroductoryPriceCycles()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string v1, "introductoryPriceCycles"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntroductoryPricePeriod()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string v1, "introductoryPricePeriod"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mOriginalJson:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalPrice()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "original_price"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "original_price"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOriginalPriceAmountMicros()J
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "original_price_micros"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "original_price_micros"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 97
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/SkuDetails;->getPriceAmountMicros()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "price"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriceAmountMicros()J
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "price_amount_micros"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "price_currency_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSkuDetailsToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "skuDetailsToken"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionPeriod()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "subscriptionPeriod"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isRewarded()Z
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "rewardToken"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method rewardToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetails;->mParsedJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "rewardToken"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SkuDetails: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/SkuDetails;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
