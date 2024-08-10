.class public final enum Lcom/parrot/freeflight/offer/model/OfferType;
.super Ljava/lang/Enum;
.source "OfferType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/freeflight/offer/model/OfferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/freeflight/offer/model/OfferType;

.field public static final enum CONTEST:Lcom/parrot/freeflight/offer/model/OfferType;

.field public static final enum EVENT:Lcom/parrot/freeflight/offer/model/OfferType;

.field public static final enum NEWS:Lcom/parrot/freeflight/offer/model/OfferType;

.field public static final enum PROMO:Lcom/parrot/freeflight/offer/model/OfferType;


# instance fields
.field mColorRes:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field mStringRes:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/parrot/freeflight/offer/model/OfferType;

    const-string v1, "PROMO"

    const v2, 0x7f1104d0

    const v3, 0x7f0500de

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/parrot/freeflight/offer/model/OfferType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/offer/model/OfferType;->PROMO:Lcom/parrot/freeflight/offer/model/OfferType;

    .line 14
    new-instance v0, Lcom/parrot/freeflight/offer/model/OfferType;

    const-string v1, "EVENT"

    const v2, 0x7f1104ce

    const v3, 0x7f0500dc

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/parrot/freeflight/offer/model/OfferType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/offer/model/OfferType;->EVENT:Lcom/parrot/freeflight/offer/model/OfferType;

    .line 15
    new-instance v0, Lcom/parrot/freeflight/offer/model/OfferType;

    const-string v1, "CONTEST"

    const v2, 0x7f1104cd

    const v3, 0x7f0500db

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/parrot/freeflight/offer/model/OfferType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/offer/model/OfferType;->CONTEST:Lcom/parrot/freeflight/offer/model/OfferType;

    .line 16
    new-instance v0, Lcom/parrot/freeflight/offer/model/OfferType;

    const-string v1, "NEWS"

    const v2, 0x7f1104d1

    const v3, 0x7f0500df

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/parrot/freeflight/offer/model/OfferType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/parrot/freeflight/offer/model/OfferType;->NEWS:Lcom/parrot/freeflight/offer/model/OfferType;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/parrot/freeflight/offer/model/OfferType;

    sget-object v1, Lcom/parrot/freeflight/offer/model/OfferType;->PROMO:Lcom/parrot/freeflight/offer/model/OfferType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/freeflight/offer/model/OfferType;->EVENT:Lcom/parrot/freeflight/offer/model/OfferType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parrot/freeflight/offer/model/OfferType;->CONTEST:Lcom/parrot/freeflight/offer/model/OfferType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/parrot/freeflight/offer/model/OfferType;->NEWS:Lcom/parrot/freeflight/offer/model/OfferType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/parrot/freeflight/offer/model/OfferType;->$VALUES:[Lcom/parrot/freeflight/offer/model/OfferType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p3, "stringRes"    # I
    .param p4, "colorRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/parrot/freeflight/offer/model/OfferType;->mStringRes:I

    .line 25
    iput p4, p0, Lcom/parrot/freeflight/offer/model/OfferType;->mColorRes:I

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/freeflight/offer/model/OfferType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/parrot/freeflight/offer/model/OfferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/offer/model/OfferType;

    return-object v0
.end method

.method public static values()[Lcom/parrot/freeflight/offer/model/OfferType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/parrot/freeflight/offer/model/OfferType;->$VALUES:[Lcom/parrot/freeflight/offer/model/OfferType;

    invoke-virtual {v0}, [Lcom/parrot/freeflight/offer/model/OfferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/freeflight/offer/model/OfferType;

    return-object v0
.end method


# virtual methods
.method public getColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation

    .prologue
    .line 35
    iget v0, p0, Lcom/parrot/freeflight/offer/model/OfferType;->mColorRes:I

    return v0
.end method

.method public getText()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 30
    iget v0, p0, Lcom/parrot/freeflight/offer/model/OfferType;->mStringRes:I

    return v0
.end method
