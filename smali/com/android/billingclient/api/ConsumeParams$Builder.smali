.class public final Lcom/android/billingclient/api/ConsumeParams$Builder;
.super Ljava/lang/Object;
.source "ConsumeParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/ConsumeParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private developerPayload:Ljava/lang/String;

.field private purchaseToken:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/ConsumeParams$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/billingclient/api/ConsumeParams$1;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/billingclient/api/ConsumeParams$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/ConsumeParams;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/android/billingclient/api/ConsumeParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/ConsumeParams;-><init>(Lcom/android/billingclient/api/ConsumeParams$1;)V

    .line 66
    .local v0, "params":Lcom/android/billingclient/api/ConsumeParams;
    iget-object v1, p0, Lcom/android/billingclient/api/ConsumeParams$Builder;->purchaseToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/ConsumeParams;->access$202(Lcom/android/billingclient/api/ConsumeParams;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/android/billingclient/api/ConsumeParams$Builder;->developerPayload:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/ConsumeParams;->access$302(Lcom/android/billingclient/api/ConsumeParams;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    return-object v0
.end method

.method public setDeveloperPayload(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;
    .locals 0
    .param p1, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/billingclient/api/ConsumeParams$Builder;->developerPayload:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;
    .locals 0
    .param p1, "purchaseToken"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/billingclient/api/ConsumeParams$Builder;->purchaseToken:Ljava/lang/String;

    .line 50
    return-object p0
.end method
