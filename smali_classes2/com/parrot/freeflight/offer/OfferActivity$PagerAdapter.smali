.class Lcom/parrot/freeflight/offer/OfferActivity$PagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "OfferActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/offer/OfferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapter"
.end annotation


# instance fields
.field private final mCreatedFragments:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/freeflight/offer/OfferPageFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mOfferManager:Lcom/parrot/freeflight/offer/OfferManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOffers:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
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

.field final synthetic this$0:Lcom/parrot/freeflight/offer/OfferActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/offer/OfferActivity;Landroid/support/v4/app/FragmentManager;Lcom/parrot/freeflight/offer/OfferManager;)V
    .locals 1
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "offerManager"    # Lcom/parrot/freeflight/offer/OfferManager;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/parrot/freeflight/offer/OfferActivity$PagerAdapter;->this$0:Lcom/parrot/freeflight/offer/OfferActivity;

    .line 107
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/offer/OfferActivity$PagerAdapter;->mOffers:Ljava/util/List;

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/offer/OfferActivity$PagerAdapter;->mCreatedFragments:Landroid/util/SparseArray;

    .line 108
    iput-object p3, p0, Lcom/parrot/freeflight/offer/OfferActivity$PagerAdapter;->mOfferManager:Lcom/parrot/freeflight/offer/OfferManager;

    .line 109
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 141
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/offer/OfferActivity$PagerAdapter;->mCreatedFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 143
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/offer/OfferActivity$PagerAdapter;->mOffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 9
    .param p1, "position"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/parrot/freeflight/offer/OfferActivity$PagerAdapter;->mOffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/parrot/freeflight/offer/model/Offer;

    .line 120
    .local v8, "offer":Lcom/parrot/freeflight/offer/model/Offer;
    iget-object v0, v8, Lcom/parrot/freeflight/offer/model/Offer;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/parrot/freeflight/offer/OfferActivity$PagerAdapter;->mOfferManager:Lcom/parrot/freeflight/offer/OfferManager;

    .line 122
    invoke-virtual {v1, v8}, Lcom/parrot/freeflight/offer/OfferManager;->getOfferImageFile(Lcom/parrot/freeflight/offer/model/Offer;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Lcom/parrot/freeflight/offer/model/Offer;->title:Ljava/lang/String;

    iget-object v3, v8, Lcom/parrot/freeflight/offer/model/Offer;->description:Ljava/lang/String;

    iget-object v4, p0, Lcom/parrot/freeflight/offer/OfferActivity$PagerAdapter;->this$0:Lcom/parrot/freeflight/offer/OfferActivity;

    .line 125
    invoke-virtual {v8}, Lcom/parrot/freeflight/offer/model/Offer;->getTypeEnum()Lcom/parrot/freeflight/offer/model/OfferType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/offer/model/OfferType;->getText()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/offer/OfferActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/offer/OfferActivity$PagerAdapter;->this$0:Lcom/parrot/freeflight/offer/OfferActivity;

    .line 126
    invoke-virtual {v5}, Lcom/parrot/freeflight/offer/OfferActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v8}, Lcom/parrot/freeflight/offer/model/Offer;->getTypeEnum()Lcom/parrot/freeflight/offer/model/OfferType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parrot/freeflight/offer/model/OfferType;->getColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v6, v8, Lcom/parrot/freeflight/offer/model/Offer;->buttonLabel:Ljava/lang/String;

    iget-object v7, v8, Lcom/parrot/freeflight/offer/model/Offer;->link:Ljava/lang/String;

    .line 120
    invoke-static/range {v0 .. v7}, Lcom/parrot/freeflight/offer/OfferPageFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/parrot/freeflight/offer/OfferPageFragment;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/offer/OfferPageFragment;

    .line 135
    .local v0, "fragment":Lcom/parrot/freeflight/offer/OfferPageFragment;
    iget-object v1, p0, Lcom/parrot/freeflight/offer/OfferActivity$PagerAdapter;->mCreatedFragments:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    return-object v0
.end method

.method public setOffers(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/offer/model/Offer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/offer/model/Offer;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/offer/OfferActivity$PagerAdapter;->mOffers:Ljava/util/List;

    .line 113
    invoke-virtual {p0}, Lcom/parrot/freeflight/offer/OfferActivity$PagerAdapter;->notifyDataSetChanged()V

    .line 114
    return-void
.end method
