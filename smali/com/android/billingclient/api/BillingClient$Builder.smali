.class public final Lcom/android/billingclient/api/BillingClient$Builder;
.super Ljava/lang/Object;
.source "BillingClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mChildDirected:I

.field private final mContext:Landroid/content/Context;

.field private mEnablePendingPurchases:Z

.field private mListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field private mUnderAgeOfConsent:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mChildDirected:I

    .line 226
    iput v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mUnderAgeOfConsent:I

    .line 231
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mContext:Landroid/content/Context;

    .line 232
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/BillingClient$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/billingclient/api/BillingClient$1;

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClient$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/BillingClient;
    .locals 6
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    if-nez v0, :cond_1

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid listener for purchases updates."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_1
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mEnablePendingPurchases:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Support for pending purchases must be enabled. Enable this by calling \'enablePendingPurchases()\' on BillingClientBuilder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_2
    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl;

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mChildDirected:I

    iget v3, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mUnderAgeOfConsent:I

    iget-boolean v4, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mEnablePendingPurchases:Z

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Landroid/content/Context;IIZLcom/android/billingclient/api/PurchasesUpdatedListener;)V

    return-object v0
.end method

.method public enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mEnablePendingPurchases:Z

    .line 287
    return-object p0
.end method

.method public setChildDirected(I)Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 0
    .param p1, "childDirected"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 255
    iput p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mChildDirected:I

    .line 256
    return-object p0
.end method

.method public setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 0
    .param p1, "listener"    # Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 242
    return-object p0
.end method

.method public setUnderAgeOfConsent(I)Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 0
    .param p1, "underAgeOfConsent"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 269
    iput p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->mUnderAgeOfConsent:I

    .line 270
    return-object p0
.end method
