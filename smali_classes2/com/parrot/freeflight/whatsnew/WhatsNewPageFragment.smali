.class public Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;
.super Landroid/support/v4/app/Fragment;
.source "WhatsNewPageFragment.java"


# static fields
.field private static final CONTENT:Ljava/lang/String; = "content"

.field private static final IMAGE:Ljava/lang/String; = "image"

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field private mContentId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private mImageId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private mImageView:Landroid/widget/ImageView;

.field private mTitleId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(III)Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;
    .locals 3
    .param p0, "imageId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p1, "titleId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "contentId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 37
    new-instance v1, Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;

    invoke-direct {v1}, Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;-><init>()V

    .line 39
    .local v1, "fragment":Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "image"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    const-string v2, "content"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 53
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "image"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;->mImageId:I

    .line 54
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;->mTitleId:I

    .line 55
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;->mContentId:I

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 61
    const v4, 0x7f0c009f

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 63
    .local v2, "rootView":Landroid/view/View;
    const v4, 0x7f0a0219

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;->mImageView:Landroid/widget/ImageView;

    .line 64
    const v4, 0x7f0a04ae

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 65
    .local v3, "title":Landroid/widget/TextView;
    const v4, 0x7f0a04ac

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    .local v0, "content":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;->mImageView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;->mImageId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    iget v4, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;->mTitleId:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 69
    iget v4, p0, Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;->mContentId:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 70
    new-instance v4, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v4}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 72
    invoke-virtual {p0}, Lcom/parrot/freeflight/whatsnew/WhatsNewPageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 73
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 74
    invoke-static {v1, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 76
    return-object v2
.end method
