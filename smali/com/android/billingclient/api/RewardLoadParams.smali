.class public Lcom/android/billingclient/api/RewardLoadParams;
.super Ljava/lang/Object;
.source "RewardLoadParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/RewardLoadParams$Builder;
    }
.end annotation


# instance fields
.field private skuDetails:Lcom/android/billingclient/api/SkuDetails;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/billingclient/api/RewardLoadParams;Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/SkuDetails;
    .locals 0
    .param p0, "x0"    # Lcom/android/billingclient/api/RewardLoadParams;
    .param p1, "x1"    # Lcom/android/billingclient/api/SkuDetails;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/android/billingclient/api/RewardLoadParams;->skuDetails:Lcom/android/billingclient/api/SkuDetails;

    return-object p1
.end method

.method public static newBuilder()Lcom/android/billingclient/api/RewardLoadParams$Builder;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/android/billingclient/api/RewardLoadParams$Builder;

    invoke-direct {v0}, Lcom/android/billingclient/api/RewardLoadParams$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getSkuDetails()Lcom/android/billingclient/api/SkuDetails;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/billingclient/api/RewardLoadParams;->skuDetails:Lcom/android/billingclient/api/SkuDetails;

    return-object v0
.end method
