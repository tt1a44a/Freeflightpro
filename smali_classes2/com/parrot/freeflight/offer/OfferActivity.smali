.class public Lcom/parrot/freeflight/offer/OfferActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "OfferActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/offer/OfferActivity$PagerAdapter;
    }
.end annotation


# static fields
.field private static final EXTRA_OFFER_ID:Ljava/lang/String; = "EXTRA_VERSION_ID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static getStartingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "offerId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/offer/OfferActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_VERSION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/parrot/freeflight/offer/OfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "EXTRA_VERSION_ID"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, "startingOfferId":Ljava/lang/String;
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    .line 47
    .local v1, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getOfferManager()Lcom/parrot/freeflight/offer/OfferManager;

    move-result-object v3

    .line 49
    .local v3, "offerManager":Lcom/parrot/freeflight/offer/OfferManager;
    invoke-virtual {v3}, Lcom/parrot/freeflight/offer/OfferManager;->getOrderedOffers()Ljava/util/List;

    move-result-object v4

    .line 51
    .local v4, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/offer/model/Offer;>;"
    const v9, 0x7f0c004a

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/offer/OfferActivity;->setContentView(I)V

    .line 53
    const v9, 0x7f0a0053

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/offer/OfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 54
    .local v0, "buttonBack":Landroid/widget/ImageView;
    new-instance v9, Lcom/parrot/freeflight/offer/OfferActivity$1;

    invoke-direct {v9, p0}, Lcom/parrot/freeflight/offer/OfferActivity$1;-><init>(Lcom/parrot/freeflight/offer/OfferActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v9, 0x7f0a052a

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/offer/OfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    .line 62
    .local v7, "viewPager":Landroid/support/v4/view/ViewPager;
    const v9, 0x7f0a052f

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/offer/OfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/parrot/freeflight/view/ViewPagerIndicator;

    .line 63
    .local v8, "viewPagerIndicator":Lcom/parrot/freeflight/view/ViewPagerIndicator;
    new-instance v5, Lcom/parrot/freeflight/offer/OfferActivity$PagerAdapter;

    invoke-virtual {p0}, Lcom/parrot/freeflight/offer/OfferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-direct {v5, p0, v9, v3}, Lcom/parrot/freeflight/offer/OfferActivity$PagerAdapter;-><init>(Lcom/parrot/freeflight/offer/OfferActivity;Landroid/support/v4/app/FragmentManager;Lcom/parrot/freeflight/offer/OfferManager;)V

    .line 64
    .local v5, "pagerAdapter":Lcom/parrot/freeflight/offer/OfferActivity$PagerAdapter;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v9}, Lcom/parrot/freeflight/offer/OfferActivity$PagerAdapter;->setOffers(Ljava/util/List;)V

    .line 65
    invoke-virtual {v7, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 66
    new-instance v9, Lcom/parrot/freeflight/offer/OfferActivity$2;

    invoke-direct {v9, p0, v8}, Lcom/parrot/freeflight/offer/OfferActivity$2;-><init>(Lcom/parrot/freeflight/offer/OfferActivity;Lcom/parrot/freeflight/view/ViewPagerIndicator;)V

    invoke-virtual {v7, v9}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 85
    invoke-virtual {v8, v5}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 87
    if-eqz v6, :cond_0

    .line 88
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 89
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/parrot/freeflight/offer/model/Offer;

    iget-object v9, v9, Lcom/parrot/freeflight/offer/model/Offer;->id:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 90
    invoke-virtual {v7, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 96
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 88
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
