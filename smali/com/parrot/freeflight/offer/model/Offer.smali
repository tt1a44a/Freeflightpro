.class public Lcom/parrot/freeflight/offer/model/Offer;
.super Ljava/lang/Object;
.source "Offer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NOTIFICATION_BUTTON:Ljava/lang/String; = "button"

.field private static final NOTIFICATION_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final NOTIFICATION_EXPIRATION:Ljava/lang/String; = "expiration"

.field private static final NOTIFICATION_ID:Ljava/lang/String; = "id"

.field private static final NOTIFICATION_IMAGE:Ljava/lang/String; = "image"

.field private static final NOTIFICATION_LINK:Ljava/lang/String; = "link"

.field private static final NOTIFICATION_TITLE:Ljava/lang/String; = "title"

.field private static final NOTIFICATION_TYPE:Ljava/lang/String; = "type"


# instance fields
.field public buttonLabel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "button"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field public expiration:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expiration"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image"
    .end annotation
.end field

.field public link:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "link"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeEnum()Lcom/parrot/freeflight/offer/model/OfferType;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/parrot/freeflight/offer/model/Offer;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/offer/model/OfferType;->valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/offer/model/OfferType;

    move-result-object v0

    return-object v0
.end method
