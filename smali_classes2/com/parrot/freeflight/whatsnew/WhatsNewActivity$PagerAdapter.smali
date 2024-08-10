.class Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$PagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "WhatsNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/whatsnew/WhatsNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PagerAdapter"
.end annotation


# instance fields
.field private mCreatedFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:Lcom/parrot/freeflight/whatsnew/model/Version;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 113
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$PagerAdapter;->mCreatedFragments:Landroid/util/SparseArray;

    .line 118
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 140
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$PagerAdapter;->mCreatedFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 142
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$PagerAdapter;->mVersion:Lcom/parrot/freeflight/whatsnew/model/Version;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$PagerAdapter;->mVersion:Lcom/parrot/freeflight/whatsnew/model/Version;

    iget-object v0, v0, Lcom/parrot/freeflight/whatsnew/model/Version;->features:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 127
    iget-object v1, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$PagerAdapter;->mVersion:Lcom/parrot/freeflight/whatsnew/model/Version;

    iget-object v1, v1, Lcom/parrot/freeflight/whatsnew/model/Version;->features:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/whatsnew/model/Feature;

    .line 128
    .local v0, "feature":Lcom/parrot/freeflight/whatsnew/model/Feature;
    iget v1, v0, Lcom/parrot/freeflight/whatsnew/model/Feature;->imageRes:I

    iget v2, v0, Lcom/parrot/freeflight/whatsnew/model/Feature;->titleRes:I

    iget v3, v0, Lcom/parrot/freeflight/whatsnew/model/Feature;->textRes:I

    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;->newInstance(III)Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;

    move-result-object v1

    return-object v1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;

    .line 134
    .local v0, "fragment":Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;
    iget-object v1, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$PagerAdapter;->mCreatedFragments:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    return-object v0
.end method

.method public setVersion(Lcom/parrot/freeflight/whatsnew/model/Version;)V
    .locals 0
    .param p1, "version"    # Lcom/parrot/freeflight/whatsnew/model/Version;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$PagerAdapter;->mVersion:Lcom/parrot/freeflight/whatsnew/model/Version;

    .line 122
    invoke-virtual {p0}, Lcom/parrot/freeflight/whatsnew/WhatsNewActivity$PagerAdapter;->notifyDataSetChanged()V

    .line 123
    return-void
.end method
