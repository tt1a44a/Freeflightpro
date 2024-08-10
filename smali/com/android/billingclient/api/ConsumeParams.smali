.class public final Lcom/android/billingclient/api/ConsumeParams;
.super Ljava/lang/Object;
.source "ConsumeParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/ConsumeParams$Builder;
    }
.end annotation


# instance fields
.field private developerPayload:Ljava/lang/String;

.field private purchaseToken:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/ConsumeParams$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/billingclient/api/ConsumeParams$1;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/billingclient/api/ConsumeParams;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/billingclient/api/ConsumeParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/billingclient/api/ConsumeParams;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/billingclient/api/ConsumeParams;->purchaseToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/billingclient/api/ConsumeParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/billingclient/api/ConsumeParams;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/billingclient/api/ConsumeParams;->developerPayload:Ljava/lang/String;

    return-object p1
.end method

.method public static newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/android/billingclient/api/ConsumeParams$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/ConsumeParams$Builder;-><init>(Lcom/android/billingclient/api/ConsumeParams$1;)V

    return-object v0
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/billingclient/api/ConsumeParams;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/billingclient/api/ConsumeParams;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method
