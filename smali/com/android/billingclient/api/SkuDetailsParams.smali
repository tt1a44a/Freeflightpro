.class public Lcom/android/billingclient/api/SkuDetailsParams;
.super Ljava/lang/Object;
.source "SkuDetailsParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/SkuDetailsParams$Builder;
    }
.end annotation


# instance fields
.field private mSkuType:Ljava/lang/String;

.field private mSkusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/billingclient/api/SkuDetailsParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/billingclient/api/SkuDetailsParams;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/billingclient/api/SkuDetailsParams;->mSkuType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/billingclient/api/SkuDetailsParams;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/billingclient/api/SkuDetailsParams;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/billingclient/api/SkuDetailsParams;->mSkusList:Ljava/util/List;

    return-object p1
.end method

.method public static newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;-><init>(Lcom/android/billingclient/api/SkuDetailsParams$1;)V

    return-object v0
.end method


# virtual methods
.method public getSkuType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetailsParams;->mSkuType:Ljava/lang/String;

    return-object v0
.end method

.method public getSkusList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetailsParams;->mSkusList:Ljava/util/List;

    return-object v0
.end method
