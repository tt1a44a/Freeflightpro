.class public Lcom/parrot/freeflight/offer/model/OfferResponse;
.super Ljava/lang/Object;
.source "OfferResponse.java"


# static fields
.field private static final NOTIFICATION_APP:Ljava/lang/String; = "app"

.field private static final NOTIFICATION_COUNTRY:Ljava/lang/String; = "country"

.field private static final NOTIFICATION_LANG:Ljava/lang/String; = "lang"

.field private static final NOTIFICATION_PRODUCT:Ljava/lang/String; = "product"

.field private static final NOTIFICATION_RESULT:Ljava/lang/String; = "result"

.field private static final NOTIFICATION_TIME:Ljava/lang/String; = "time"


# instance fields
.field public app:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app"
    .end annotation
.end field

.field public country:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country"
    .end annotation
.end field

.field public lang:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lang"
    .end annotation
.end field

.field public mOfferList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/offer/model/Offer;",
            ">;"
        }
    .end annotation
.end field

.field public productList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public time:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
