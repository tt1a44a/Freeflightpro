.class public Lcom/parrot/freeflight/core/authentication/model/PersonalData;
.super Ljava/lang/Object;
.source "PersonalData.java"


# instance fields
.field public newsletterSubscription:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "newsletterSubscription"
    .end annotation
.end field

.field public synchronizeFlightData:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "synchronizeFlightDataWithMyParrot"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0, v0}, Lcom/parrot/freeflight/core/authentication/model/PersonalData;-><init>(II)V

    .line 14
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "synchronizeFlightData"    # I
    .param p2, "newsletterSubscription"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/parrot/freeflight/core/authentication/model/PersonalData;->synchronizeFlightData:I

    .line 23
    iput p2, p0, Lcom/parrot/freeflight/core/authentication/model/PersonalData;->newsletterSubscription:I

    .line 24
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 3
    .param p1, "synchronizeFlightData"    # Z
    .param p2, "newsletterSubscription"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/parrot/freeflight/core/authentication/model/PersonalData;->synchronizeFlightData:I

    .line 18
    if-eqz p2, :cond_1

    :goto_1
    iput v1, p0, Lcom/parrot/freeflight/core/authentication/model/PersonalData;->newsletterSubscription:I

    .line 19
    return-void

    :cond_0
    move v0, v2

    .line 17
    goto :goto_0

    :cond_1
    move v1, v2

    .line 18
    goto :goto_1
.end method
