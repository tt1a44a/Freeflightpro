.class public Lcom/parrot/freeflight/offer/OfferPageFragment;
.super Landroid/support/v4/app/Fragment;
.source "OfferPageFragment.java"


# static fields
.field private static final EXTRA_BUTTON_TEXT:Ljava/lang/String; = "button_text"

.field private static final EXTRA_ID:Ljava/lang/String; = "image_url"

.field private static final EXTRA_IMAGE_PATH:Ljava/lang/String; = "image_url"

.field private static final EXTRA_LINK:Ljava/lang/String; = "link"

.field private static final EXTRA_SUBTITLE:Ljava/lang/String; = "subtitle"

.field private static final EXTRA_TAG_COLOR:Ljava/lang/String; = "tag_color"

.field private static final EXTRA_TAG_TEXT:Ljava/lang/String; = "tag_text"

.field private static final EXTRA_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private mButtonText:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mImagePath:Ljava/lang/String;

.field private mOfferUrl:Ljava/lang/String;

.field private mSubtitle:Ljava/lang/String;

.field private mTagColor:I

.field private mTagText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/offer/OfferPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/offer/OfferPageFragment;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/parrot/freeflight/offer/OfferPageFragment;->openOfferUrl()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/parrot/freeflight/offer/OfferPageFragment;
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subtitle"    # Ljava/lang/String;
    .param p4, "tagText"    # Ljava/lang/String;
    .param p5, "tagColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p6, "button"    # Ljava/lang/String;
    .param p7, "link"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v1, Lcom/parrot/freeflight/offer/OfferPageFragment;

    invoke-direct {v1}, Lcom/parrot/freeflight/offer/OfferPageFragment;-><init>()V

    .line 59
    .local v1, "fragment":Lcom/parrot/freeflight/offer/OfferPageFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "image_url"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v2, "image_url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v2, "title"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v2, "subtitle"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "tag_text"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "tag_color"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string v2, "button_text"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "link"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/offer/OfferPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    return-object v1
.end method

.method private openOfferUrl()V
    .locals 5

    .prologue
    .line 153
    new-instance v0, Landroid/support/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroid/support/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 154
    .local v0, "builder":Landroid/support/customtabs/CustomTabsIntent$Builder;
    invoke-virtual {p0}, Lcom/parrot/freeflight/offer/OfferPageFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0500d1

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroid/support/customtabs/CustomTabsIntent$Builder;

    .line 155
    invoke-virtual {p0}, Lcom/parrot/freeflight/offer/OfferPageFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f010017

    const v4, 0x7f010018

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/customtabs/CustomTabsIntent$Builder;->setStartAnimations(Landroid/content/Context;II)Landroid/support/customtabs/CustomTabsIntent$Builder;

    .line 156
    invoke-virtual {p0}, Lcom/parrot/freeflight/offer/OfferPageFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a0002

    const v4, 0x10a0003

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/customtabs/CustomTabsIntent$Builder;->setExitAnimations(Landroid/content/Context;II)Landroid/support/customtabs/CustomTabsIntent$Builder;

    .line 157
    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsIntent$Builder;->build()Landroid/support/customtabs/CustomTabsIntent;

    move-result-object v1

    .line 158
    .local v1, "customTabsIntent":Landroid/support/customtabs/CustomTabsIntent;
    invoke-virtual {p0}, Lcom/parrot/freeflight/offer/OfferPageFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/offer/OfferPageFragment;->mOfferUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 159
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/parrot/freeflight/offer/OfferPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 78
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "image_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/offer/OfferPageFragment;->mId:Ljava/lang/String;

    .line 79
    const-string v1, "image_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/offer/OfferPageFragment;->mImagePath:Ljava/lang/String;

    .line 80
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/offer/OfferPageFragment;->mTitle:Ljava/lang/String;

    .line 81
    const-string v1, "subtitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/offer/OfferPageFragment;->mSubtitle:Ljava/lang/String;

    .line 82
    const-string v1, "tag_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/offer/OfferPageFragment;->mTagText:Ljava/lang/String;

    .line 83
    const-string v1, "tag_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/offer/OfferPageFragment;->mTagColor:I

    .line 84
    const-string v1, "button_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/offer/OfferPageFragment;->mButtonText:Ljava/lang/String;

    .line 85
    const-string v1, "link"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/offer/OfferPageFragment;->mOfferUrl:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
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
    .line 91
    const v9, 0x7f0c009b

    const/4 v10, 0x0

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 93
    .local v5, "rootView":Landroid/view/View;
    const v9, 0x7f0a0212

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 94
    .local v3, "imageView":Landroid/widget/ImageView;
    const v9, 0x7f0a04cb

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 95
    .local v8, "title":Landroid/widget/TextView;
    const v9, 0x7f0a04c0

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 96
    .local v6, "subtitle":Landroid/widget/TextView;
    const v9, 0x7f0a04c1

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 97
    .local v7, "tag":Landroid/widget/TextView;
    const v9, 0x7f0a00a2

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    .local v0, "button":Landroid/widget/TextView;
    new-instance v4, Ljava/io/File;

    iget-object v9, p0, Lcom/parrot/freeflight/offer/OfferPageFragment;->mImagePath:Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v4, "imgFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 101
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 104
    :cond_0
    iget-object v9, p0, Lcom/parrot/freeflight/offer/OfferPageFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v9, p0, Lcom/parrot/freeflight/offer/OfferPageFragment;->mSubtitle:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v9, p0, Lcom/parrot/freeflight/offer/OfferPageFragment;->mTagText:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0}, Lcom/parrot/freeflight/offer/OfferPageFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07047f

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 109
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 110
    iget v9, p0, Lcom/parrot/freeflight/offer/OfferPageFragment;->mTagColor:I

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 111
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    :goto_0
    iget-object v9, p0, Lcom/parrot/freeflight/offer/OfferPageFragment;->mButtonText:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 117
    iget-object v9, p0, Lcom/parrot/freeflight/offer/OfferPageFragment;->mButtonText:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :goto_1
    new-instance v9, Lcom/parrot/freeflight/offer/OfferPageFragment$1;

    invoke-direct {v9, p0}, Lcom/parrot/freeflight/offer/OfferPageFragment$1;-><init>(Lcom/parrot/freeflight/offer/OfferPageFragment;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance v9, Lcom/parrot/freeflight/offer/OfferPageFragment$2;

    invoke-direct {v9, p0}, Lcom/parrot/freeflight/offer/OfferPageFragment$2;-><init>(Lcom/parrot/freeflight/offer/OfferPageFragment;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    new-instance v9, Lcom/parrot/freeflight/offer/OfferPageFragment$3;

    invoke-direct {v9, p0}, Lcom/parrot/freeflight/offer/OfferPageFragment$3;-><init>(Lcom/parrot/freeflight/offer/OfferPageFragment;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p0}, Lcom/parrot/freeflight/offer/OfferPageFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 144
    .local v1, "context":Landroid/content/Context;
    const/4 v9, 0x3

    invoke-static {v1, v8, v9}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 145
    const/4 v9, 0x1

    invoke-static {v1, v6, v9}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 146
    const/4 v9, 0x4

    invoke-static {v1, v7, v9}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 148
    return-object v5

    .line 113
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    iget v9, p0, Lcom/parrot/freeflight/offer/OfferPageFragment;->mTagColor:I

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 120
    :cond_2
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
