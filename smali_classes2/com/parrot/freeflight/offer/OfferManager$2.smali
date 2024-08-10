.class Lcom/parrot/freeflight/offer/OfferManager$2;
.super Ljava/lang/Object;
.source "OfferManager.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/offer/OfferManager;->syncOffers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<",
        "Lcom/parrot/freeflight/offer/model/OfferResponse;",
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
    .line 110
    iput-object p1, p0, Lcom/parrot/freeflight/offer/OfferManager$2;->this$0:Lcom/parrot/freeflight/offer/OfferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lretrofit2/Call;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "t"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/parrot/freeflight/offer/model/OfferResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/parrot/freeflight/offer/model/OfferResponse;>;"
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .param p1    # Lretrofit2/Call;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lretrofit2/Response;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/parrot/freeflight/offer/model/OfferResponse;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/parrot/freeflight/offer/model/OfferResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/parrot/freeflight/offer/model/OfferResponse;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/parrot/freeflight/offer/model/OfferResponse;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/parrot/freeflight/offer/OfferManager$2;->this$0:Lcom/parrot/freeflight/offer/OfferManager;

    invoke-static {v2}, Lcom/parrot/freeflight/offer/OfferManager;->access$100(Lcom/parrot/freeflight/offer/OfferManager;)V

    .line 116
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/offer/model/OfferResponse;

    .line 117
    .local v1, "offerResponse":Lcom/parrot/freeflight/offer/model/OfferResponse;
    if-eqz v1, :cond_0

    .line 118
    iget-object v2, v1, Lcom/parrot/freeflight/offer/model/OfferResponse;->mOfferList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/offer/model/Offer;

    .line 119
    .local v0, "offer":Lcom/parrot/freeflight/offer/model/Offer;
    iget-object v3, p0, Lcom/parrot/freeflight/offer/OfferManager$2;->this$0:Lcom/parrot/freeflight/offer/OfferManager;

    invoke-static {v3, v0}, Lcom/parrot/freeflight/offer/OfferManager;->access$200(Lcom/parrot/freeflight/offer/OfferManager;Lcom/parrot/freeflight/offer/model/Offer;)V

    .line 120
    iget-object v3, p0, Lcom/parrot/freeflight/offer/OfferManager$2;->this$0:Lcom/parrot/freeflight/offer/OfferManager;

    invoke-static {v3, v0}, Lcom/parrot/freeflight/offer/OfferManager;->access$300(Lcom/parrot/freeflight/offer/OfferManager;Lcom/parrot/freeflight/offer/model/Offer;)V

    goto :goto_0

    .line 124
    .end local v0    # "offer":Lcom/parrot/freeflight/offer/model/Offer;
    .end local v1    # "offerResponse":Lcom/parrot/freeflight/offer/model/OfferResponse;
    :cond_0
    return-void
.end method
