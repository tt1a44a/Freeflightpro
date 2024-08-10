.class public Lcom/parrot/freeflight/purchase/util/BillingManager;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/purchase/util/BillingManager$BillingUpdatesListener;
    }
.end annotation


# static fields
.field private static final LAST_KEY:Ljava/lang/String; = "GQXfLmD2OgheQELGIP7Giwras6TkSWIwKk1md2PMuJGJ70XQunJ6Bxy5IMtnPUetoYCd+sOBMUOYbz0AzYNbrJz9xHf//3d89fT9JHf/7Xf4xHf8Bni7Xz+XR3ew10X89fT"

.field private static final STARTING_KEY:Ljava/lang/String; = "81Hf+9nEtGobgOsnCyJosra5JJHppIIaaa4pVAkGmAADU/w3NucHkL7hi/oOOoUNE9bMmggYyR26j16BeS5OzTLNexYqMXv7hqMJzK/x5G1cdym9KQIm8vvY4QZmoqGc5H"

.field private static final TAG:Ljava/lang/String; = "FF4.Purchase"


# instance fields
.field private mBillingClient:Lcom/android/billingclient/api/BillingClient;

.field private mBillingClientResponseCode:I

.field private final mContext:Landroid/content/Context;

.field private mIsProcessing:Z

.field private mIsServiceConnected:Z

.field private final mListener:Lcom/parrot/freeflight/purchase/util/BillingManager$BillingUpdatesListener;

.field private final mPurchases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldConsumeDebugPurchase:Z

.field private final mSkuDetailsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/purchase/util/BillingManager$BillingUpdatesListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updatesListener"    # Lcom/parrot/freeflight/purchase/util/BillingManager$BillingUpdatesListener;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mBillingClientResponseCode:I

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mSkuDetailsMap:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mPurchases:Ljava/util/Map;

    .line 86
    iput-boolean v1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mIsServiceConnected:Z

    .line 87
    iput-boolean v1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mIsProcessing:Z

    .line 97
    const-string v0, "FF4.Purchase"

    const-string v1, "Creating Billing client."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput-object p1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mListener:Lcom/parrot/freeflight/purchase/util/BillingManager$BillingUpdatesListener;

    .line 100
    return-void
.end method

.method private static XOR(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "origin"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "i"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parrot/freeflight/purchase/util/Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-static {p0}, Lcom/parrot/freeflight/purchase/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 435
    .local v0, "chars":[B
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 436
    aget-byte v2, v0, v1

    xor-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    :cond_0
    invoke-static {v0}, Lcom/parrot/freeflight/purchase/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/purchase/util/BillingManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/purchase/util/BillingManager;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mShouldConsumeDebugPurchase:Z

    return p1
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/purchase/util/BillingManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/purchase/util/BillingManager;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mIsServiceConnected:Z

    return p1
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/purchase/util/BillingManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/purchase/util/BillingManager;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mIsProcessing:Z

    return p1
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/purchase/util/BillingManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/purchase/util/BillingManager;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mBillingClientResponseCode:I

    return p1
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/purchase/util/BillingManager;)Lcom/android/billingclient/api/BillingClient;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/purchase/util/BillingManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/purchase/util/BillingManager;Lcom/android/billingclient/api/Purchase$PurchasesResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/purchase/util/BillingManager;
    .param p1, "x1"    # Lcom/android/billingclient/api/Purchase$PurchasesResult;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/purchase/util/BillingManager;->onQueryPurchasesFinished(Lcom/android/billingclient/api/Purchase$PurchasesResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/purchase/util/BillingManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/purchase/util/BillingManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mPurchases:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/purchase/util/BillingManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/purchase/util/BillingManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mSkuDetailsMap:Ljava/util/Map;

    return-object v0
.end method

.method private consumePurchase(Ljava/lang/String;)V
    .locals 4
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 313
    const-string v1, "FF4.Purchase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start consuming purchase with id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mPurchases:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 315
    .local v0, "purchase":Lcom/android/billingclient/api/Purchase;
    if-eqz v0, :cond_0

    .line 316
    iget-object v1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/purchase/util/BillingManager$6;

    invoke-direct {v3, p0, p1}, Lcom/parrot/freeflight/purchase/util/BillingManager$6;-><init>(Lcom/parrot/freeflight/purchase/util/BillingManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 326
    :cond_0
    return-void
.end method

.method private static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "encodedString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 423
    invoke-static {p0}, Lcom/parrot/freeflight/purchase/util/BillingManager;->inverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "result":Ljava/lang/String;
    const/16 v2, 0x7d

    :try_start_0
    invoke-static {v1, v2}, Lcom/parrot/freeflight/purchase/util/BillingManager;->XOR(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/parrot/freeflight/purchase/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 429
    :goto_0
    return-object v1

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Lcom/parrot/freeflight/purchase/util/Base64DecoderException;
    invoke-virtual {v0}, Lcom/parrot/freeflight/purchase/util/Base64DecoderException;->printStackTrace()V

    goto :goto_0
.end method

.method private executeServiceRequest(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mIsServiceConnected:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/purchase/util/BillingManager;->startServiceConnection(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static getInAppKey()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "81Hf+9nEtGobgOsnCyJosra5JJHppIIaaa4pVAkGmAADU/w3NucHkL7hi/oOOoUNE9bMmggYyR26j16BeS5OzTLNexYqMXv7hqMJzK/x5G1cdym9KQIm8vvY4QZmoqGc5H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/parrot/freeflight/purchase/util/BillingManager;->getMiddleKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GQXfLmD2OgheQELGIP7Giwras6TkSWIwKk1md2PMuJGJ70XQunJ6Bxy5IMtnPUetoYCd+sOBMUOYbz0AzYNbrJz9xHf//3d89fT9JHf/7Xf4xHf8Bni7Xz+XR3ew10X89fT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/purchase/util/BillingManager;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMiddleKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 455
    const-string v0, "CD2lf+xJVHYJnSy/HPAFtnKHc2XwyLbDMQNfQe+wtW2duAhhNm9xiKWPgJMPtz+ro7P9iUs1nY9YKkgOYetUGZrfeQ1YQWHuocLTyjdUgQPJlb3HTcDKP6QzbElVCTcKf3k"

    return-object v0
.end method

.method private handlePurchase(Lcom/android/billingclient/api/Purchase;)V
    .locals 4
    .param p1, "purchase"    # Lcom/android/billingclient/api/Purchase;

    .prologue
    .line 216
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-direct {p0, v1, v2}, Lcom/parrot/freeflight/purchase/util/BillingManager;->verifyValidSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    const-string v1, "FF4.Purchase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got a purchase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; but signature is bad. Skipping..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const-string v1, "FF4.Purchase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got a verified purchase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 225
    iget-object v1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mPurchases:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v1

    .line 230
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object v0

    .line 232
    .local v0, "params":Lcom/android/billingclient/api/AcknowledgePurchaseParams;
    iget-object v1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1, v0, p0}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    goto :goto_0
.end method

.method private initiatePurchaseFlow(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "skuId"    # Ljava/lang/String;

    .prologue
    .line 332
    new-instance v0, Lcom/parrot/freeflight/purchase/util/BillingManager$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/parrot/freeflight/purchase/util/BillingManager$7;-><init>(Lcom/parrot/freeflight/purchase/util/BillingManager;Ljava/lang/String;Landroid/app/Activity;)V

    .line 344
    .local v0, "purchaseFlowRequest":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/purchase/util/BillingManager;->executeServiceRequest(Ljava/lang/Runnable;)V

    .line 345
    return-void
.end method

.method private static inverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "origin"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 444
    .local v1, "chars":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 445
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    div-int/lit8 v4, v3, 0x2

    if-ge v2, v4, :cond_0

    .line 446
    aget-char v0, v1, v2

    .line 447
    .local v0, "c":C
    sub-int v4, v3, v2

    add-int/lit8 v4, v4, -0x1

    aget-char v4, v1, v4

    aput-char v4, v1, v2

    .line 448
    sub-int v4, v3, v2

    add-int/lit8 v4, v4, -0x1

    aput-char v0, v1, v4

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    .end local v0    # "c":C
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private onQueryPurchasesFinished(Lcom/android/billingclient/api/Purchase$PurchasesResult;)V
    .locals 3
    .param p1, "result"    # Lcom/android/billingclient/api/Purchase$PurchasesResult;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    :cond_0
    const-string v0, "FF4.Purchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Billing client was null or result code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") was bad - quitting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_0
    return-void

    .line 285
    :cond_1
    const-string v0, "FF4.Purchase"

    const-string v1, "Query inventory was successful."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mPurchases:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 289
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getBillingResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/purchase/util/BillingManager;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto :goto_0
.end method

.method private verifyValidSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    .line 199
    :try_start_0
    invoke-static {}, Lcom/parrot/freeflight/purchase/util/BillingManager;->getInAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/parrot/freeflight/purchase/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 202
    :goto_0
    return v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FF4.Purchase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got an exception trying to validate a purchase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBillingClientResponseCode()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mBillingClientResponseCode:I

    return v0
.end method

.method public isPurchased(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mPurchases:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;

    .prologue
    .line 405
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 406
    const-string v0, "FF4.Purchase"

    const-string v1, "Purchase successfully acknowledged."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_0
    const-string v0, "FF4.Purchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acknowledge purchase failed with result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 5
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
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
    .local p2, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/Purchase;>;"
    const/4 v4, 0x0

    .line 373
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 394
    const-string v1, "FF4.Purchase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPurchasesUpdated() got unknown resultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mIsProcessing:Z

    .line 397
    return-void

    .line 375
    :sswitch_0
    if-eqz p2, :cond_1

    .line 376
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 377
    .local v0, "purchase":Lcom/android/billingclient/api/Purchase;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/purchase/util/BillingManager;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_1

    .line 380
    .end local v0    # "purchase":Lcom/android/billingclient/api/Purchase;
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mListener:Lcom/parrot/freeflight/purchase/util/BillingManager$BillingUpdatesListener;

    invoke-interface {v1}, Lcom/parrot/freeflight/purchase/util/BillingManager$BillingUpdatesListener;->onPurchasesUpdated()V

    .line 382
    iget-boolean v1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mShouldConsumeDebugPurchase:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mPurchases:Ljava/util/Map;

    const-string v2, "android.test.purchased"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    const-string v1, "android.test.purchased"

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/purchase/util/BillingManager;->consumePurchase(Ljava/lang/String;)V

    .line 384
    iput-boolean v4, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mShouldConsumeDebugPurchase:Z

    goto :goto_0

    .line 388
    :sswitch_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/purchase/util/BillingManager;->queryPurchases()V

    goto :goto_0

    .line 391
    :sswitch_2
    const-string v1, "FF4.Purchase"

    const-string v2, "onPurchasesUpdated() - user cancelled the purchase flow - skipping"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 4
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List",
            "<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p2, "skuDetailsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/SkuDetails;>;"
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 354
    const-string v1, "FF4.Purchase"

    const-string v2, "Query sku details was successful."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v1, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mSkuDetailsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 356
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    .line 357
    .local v0, "details":Lcom/android/billingclient/api/SkuDetails;
    iget-object v2, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mSkuDetailsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 360
    .end local v0    # "details":Lcom/android/billingclient/api/SkuDetails;
    :cond_0
    const-string v1, "FF4.Purchase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response code ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") was bad - quitting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_1
    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mIsProcessing:Z

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mIsProcessing:Z

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/purchase/util/BillingManager;->initiatePurchaseFlow(Landroid/app/Activity;Ljava/lang/String;)V

    .line 174
    :cond_0
    return-void
.end method

.method public queryPurchases()V
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lcom/parrot/freeflight/purchase/util/BillingManager$4;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/purchase/util/BillingManager$4;-><init>(Lcom/parrot/freeflight/purchase/util/BillingManager;)V

    .line 272
    .local v0, "queryToExecute":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/purchase/util/BillingManager;->executeServiceRequest(Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method

.method public queryPurchasesHistory()V
    .locals 1

    .prologue
    .line 297
    new-instance v0, Lcom/parrot/freeflight/purchase/util/BillingManager$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/purchase/util/BillingManager$5;-><init>(Lcom/parrot/freeflight/purchase/util/BillingManager;)V

    .line 309
    .local v0, "queryToExecute":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/purchase/util/BillingManager;->executeServiceRequest(Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method

.method public querySkuDetails()V
    .locals 1

    .prologue
    .line 243
    new-instance v0, Lcom/parrot/freeflight/purchase/util/BillingManager$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/purchase/util/BillingManager$3;-><init>(Lcom/parrot/freeflight/purchase/util/BillingManager;)V

    .line 253
    .local v0, "queryRequest":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/purchase/util/BillingManager;->executeServiceRequest(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "FF4.Purchase"

    const-string v1, "Starting the manager."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    .line 110
    new-instance v0, Lcom/parrot/freeflight/purchase/util/BillingManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/purchase/util/BillingManager$1;-><init>(Lcom/parrot/freeflight/purchase/util/BillingManager;)V

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/purchase/util/BillingManager;->startServiceConnection(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method public startServiceConnection(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "executeOnSuccess"    # Ljava/lang/Runnable;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/parrot/freeflight/purchase/util/BillingManager$2;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/purchase/util/BillingManager$2;-><init>(Lcom/parrot/freeflight/purchase/util/BillingManager;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 167
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "FF4.Purchase"

    const-string v1, "Stopping the manager."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/purchase/util/BillingManager;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    .line 131
    :cond_0
    return-void
.end method
