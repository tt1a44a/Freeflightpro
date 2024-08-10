.class public interface abstract Lcom/parrot/freeflight/offer/client/OfferAPI;
.super Ljava/lang/Object;
.source "OfferAPI.java"


# virtual methods
.method public varargs abstract getOffers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "country"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "lang"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "app"
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "product[]"
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/parrot/freeflight/offer/model/OfferResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/fr/api/offers"
    .end annotation
.end method
