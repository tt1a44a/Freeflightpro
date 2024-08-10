.class public Lcom/android/billingclient/api/RewardLoadParams$Builder;
.super Ljava/lang/Object;
.source "RewardLoadParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/RewardLoadParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private skuDetails:Lcom/android/billingclient/api/SkuDetails;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setSkuDetails(Ljava/lang/String;)Lcom/android/billingclient/api/RewardLoadParams$Builder;
    .locals 3
    .param p1, "originalSkuDetails"    # Ljava/lang/String;

    .prologue
    .line 45
    :try_start_0
    new-instance v1, Lcom/android/billingclient/api/SkuDetails;

    invoke-direct {v1, p1}, Lcom/android/billingclient/api/SkuDetails;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/billingclient/api/RewardLoadParams$Builder;->skuDetails:Lcom/android/billingclient/api/SkuDetails;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-object p0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "ex":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Incorrect skuDetails JSON object!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/RewardLoadParams;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/android/billingclient/api/RewardLoadParams;

    invoke-direct {v0}, Lcom/android/billingclient/api/RewardLoadParams;-><init>()V

    .line 55
    .local v0, "params":Lcom/android/billingclient/api/RewardLoadParams;
    iget-object v1, p0, Lcom/android/billingclient/api/RewardLoadParams$Builder;->skuDetails:Lcom/android/billingclient/api/SkuDetails;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/billingclient/api/RewardLoadParams$Builder;->skuDetails:Lcom/android/billingclient/api/SkuDetails;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/RewardLoadParams;->access$002(Lcom/android/billingclient/api/RewardLoadParams;Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/SkuDetails;

    .line 60
    return-object v0

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SkuDetails must be set"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/RewardLoadParams$Builder;
    .locals 0
    .param p1, "skuDetails"    # Lcom/android/billingclient/api/SkuDetails;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/billingclient/api/RewardLoadParams$Builder;->skuDetails:Lcom/android/billingclient/api/SkuDetails;

    .line 38
    return-object p0
.end method
