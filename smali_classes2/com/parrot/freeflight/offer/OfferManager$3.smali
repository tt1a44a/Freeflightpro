.class Lcom/parrot/freeflight/offer/OfferManager$3;
.super Ljava/lang/Object;
.source "OfferManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/offer/OfferManager;->getOrderedOffers()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/parrot/freeflight/offer/model/Offer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/offer/OfferManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/offer/OfferManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/offer/OfferManager;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/parrot/freeflight/offer/OfferManager$3;->this$0:Lcom/parrot/freeflight/offer/OfferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/parrot/freeflight/offer/model/Offer;Lcom/parrot/freeflight/offer/model/Offer;)I
    .locals 2
    .param p1, "o1"    # Lcom/parrot/freeflight/offer/model/Offer;
    .param p2, "o2"    # Lcom/parrot/freeflight/offer/model/Offer;

    .prologue
    .line 198
    iget-object v0, p1, Lcom/parrot/freeflight/offer/model/Offer;->id:Ljava/lang/String;

    iget-object v1, p2, Lcom/parrot/freeflight/offer/model/Offer;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 195
    check-cast p1, Lcom/parrot/freeflight/offer/model/Offer;

    check-cast p2, Lcom/parrot/freeflight/offer/model/Offer;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/offer/OfferManager$3;->compare(Lcom/parrot/freeflight/offer/model/Offer;Lcom/parrot/freeflight/offer/model/Offer;)I

    move-result v0

    return v0
.end method
