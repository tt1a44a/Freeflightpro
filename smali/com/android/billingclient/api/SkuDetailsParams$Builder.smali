.class public Lcom/android/billingclient/api/SkuDetailsParams$Builder;
.super Ljava/lang/Object;
.source "SkuDetailsParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/SkuDetailsParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/SkuDetailsParams$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/billingclient/api/SkuDetailsParams$1;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/SkuDetailsParams;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/android/billingclient/api/SkuDetailsParams;

    invoke-direct {v0}, Lcom/android/billingclient/api/SkuDetailsParams;-><init>()V

    .line 71
    .local v0, "params":Lcom/android/billingclient/api/SkuDetailsParams;
    iget-object v1, p0, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->mSkuType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/SkuDetailsParams;->access$102(Lcom/android/billingclient/api/SkuDetailsParams;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->mSkusList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/SkuDetailsParams;->access$202(Lcom/android/billingclient/api/SkuDetailsParams;Ljava/util/List;)Ljava/util/List;

    .line 73
    return-object v0
.end method

.method public setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/billingclient/api/SkuDetailsParams$Builder;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "skusList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->mSkusList:Ljava/util/List;

    .line 51
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->mSkuType:Ljava/lang/String;

    .line 65
    return-object p0
.end method
